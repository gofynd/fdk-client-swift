//
//  RequestSigner.swift
//  Thundercracker
//
//  Created by Satyenkumar Mourya on 09/02/21.
//  Copyright © 2021 Fynd. All rights reserved.
//

import Foundation
import Alamofire
import CommonCrypto

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
    private let headers: HTTPHeaders?
    private let type: HTTPMethod
    private let dateStr: String
    private let components: URLComponents?
    
    init(url: String, reqData: [String: Any]?, type: HTTPMethod, headers: HTTPHeaders?) {
        self.url = url
        self.reqData = reqData
        self.type = type
        self.headers = headers
        self.components = URLComponents(string: url)
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "yyyyMMdd'T'HHmmss'Z'"
        dateformatter.timeZone = TimeZone(secondsFromGMT: 0)
        self.dateStr = dateformatter.string(from: Date())
    }
    
    func sign() -> HTTPHeaders? {
        var finalHeaders = headers ?? []
        //finalHeaders.add(name: "host", value: "api.fyndx0.de")
        finalHeaders.add(name: "x-fp-date", value: dateStr)
        guard let components = self.components else { return finalHeaders }
        var reqHash = "".sha256()
        if let data = reqData {
            reqHash = data.pretty.sha256()
        }
        let releventSignHeaders = finalHeaders.filter({ header -> Bool in
            for regex in HEADERS_TO_INCLUDE
            where header.name.lowercased().range(of: regex, options: .regularExpression) != nil {
                return true
            }
            return false
        })
        let signingData: [String] = [type.rawValue.uppercased(),
                                     components.path,
                                     components.percentEncodedQuery?.trim() ?? "",
                                     releventSignHeaders.reduce("", {"\($0.isEmpty ? "" : ($0+"\n"))\($1.name):\($1.value)"}),
                                     releventSignHeaders.reduce("", {"\($0.isEmpty ? "" : ($0+";"))\($1.name)"}),
                                     reqHash]
        let finalSignatureData = [dateStr,
                                  signingData.joined(separator: "\n").sha256()]
        print("responseData used for sign:--------\n\(reqData?.pretty ?? "")")
        print("-----------")
        print("Signature Data: -----------\n"+signingData.joined(separator: "\n"))
        print("-----------")
        print("Final data:---------\n"+finalSignatureData.joined(separator: "\n"))
        print("-----------")
        let signature = finalSignatureData
            .joined(separator: "\n").hmac(algorithm: .SHA256, key: signingkey)
        finalHeaders.add(name: "x-fp-signature", value: "v1:\(signature)")
        return finalHeaders
    }
}
