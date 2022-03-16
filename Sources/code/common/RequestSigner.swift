import Foundation
import CryptoSwift

class RequestSigner {
    //Constants
    private let signingkey = "1234567"
    ///regex of headers to be included (compare with lowercased)
    private let HEADERS_TO_INCLUDE = [
        "host",
        "x\\-fp\\-.*"
    ]

    //Properties
    private let url: String
    private let reqData: [String: Any]?
    private let headers: [(key: String, value: String)]
    private let type: String
    private let dateStr: String
    private let components: URLComponents?
    
    init(url: String, reqData: [String: Any]?, type: String, headers: [(key: String, value: String)]) {
        self.url = url
        self.reqData = reqData
        self.type = type.uppercased()
        self.headers = headers
        self.components = URLComponents(string: url)
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "yyyyMMdd'T'HHmmss'Z'"
        dateformatter.timeZone = TimeZone(secondsFromGMT: 0)
        self.dateStr = dateformatter.string(from: Date())
    }
    
    func sign() -> [(key: String, value: String)] {
        var finalHeaders = headers
        guard let components = self.components else { return finalHeaders }
        finalHeaders.append((key: "host", value: components.host ?? "api.fynd.com"))
        finalHeaders.append((key: "x-fp-date", value: dateStr))
        finalHeaders = finalHeaders.sorted{ $0.key < $1.key}
        var reqHash = "".sha256()
        if let data = reqData {
            reqHash = data.minifiedJson.sha256()
        }
        let releventSignHeaders = finalHeaders.filter({ header -> Bool in
            for regex in HEADERS_TO_INCLUDE
            where header.key.lowercased().range(of: regex, options: .regularExpression) != nil {
                return true
            }
            return false
        })
        let signingData: [String] = [type,
                                     components.percentEncodedPath,
                                     components.query?.trim() ?? "",
                                     releventSignHeaders.reduce("", {"\($0.isEmpty ? "" : ($0+"\n"))\($1.key):\($1.value)"}) + "\n",
                                     releventSignHeaders.reduce("", {"\($0.isEmpty ? "" : ($0+";"))\($1.key)"}),
                                     reqHash]
        let finalSignatureData = [dateStr,
                                  signingData.joined(separator: "\n").sha256()]
        let signatureStr = finalSignatureData.joined(separator: "\n")
        let signature = try? HMAC(key: signingkey, variant: .sha256).authenticate(signatureStr.bytes).toHexString()
        //let signature = signatureStr.hmac(algorithm: .SHA256, key: signingkey)
        if let hmacSignature = signature {
            finalHeaders.append((key: "x-fp-signature", value: "v1.1:\(hmacSignature)")) 
        }
        return finalHeaders
    }
}
