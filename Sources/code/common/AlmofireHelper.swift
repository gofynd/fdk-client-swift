import Alamofire
import Foundation

public typealias OnResponse = (_ responseData: Data?, _ error: Swift.Error?, _ responseCode: Int?) -> Void

public class AlmofireHelper {
  public static func request(_ path: String,
                        query: [String: Any]? = nil,
                        parameters: [String: Any]?,
                        type rawType: String,
                        headers: [(key: String, value: String)] = [],
                        isJsonEncoding: Bool = true,
                        responseType: String = "application/json",
                        session: Alamofire.Session = AF,
                        onResponse: @escaping OnResponse) {
        var queryString = ""
        if let query = query {
            queryString = "?" + query.asQueryString
        }
        let urlString = path + queryString
        
        let signer = RequestSigner(url: urlString, reqData: parameters, type: rawType, headers: headers)
        let signedHeaders = signer.sign()
        
        var finalHeaders = HTTPHeaders()
        signedHeaders.forEach { (key, value) in
            finalHeaders.add(name: key, value: value)
        }

        let encoding :ParameterEncoding
        if isJsonEncoding {
            encoding = JSONEncoding.default
        } else {
            encoding = URLEncoding.default
        }

        // if (responseType  == "application/pdf") {
        //     let fileExtenstion = getExtension(from: responseType)
        //     AF.download(urlString, method: HTTPMethod(rawValue: rawType),
        //                 parameters: parameters, encoding: encoding,
        //                 headers: finalHeaders, interceptor: nil,
        //                 to: getTempPath(fileExtension: fileExtenstion))
        //         .downloadProgress { _ in }
        //         .response { response in
        //             switch response.result {
        //             case .success:
        //                 if let filePath = response.fileURL?.absoluteString,
        //                    let urlData = filePath.data(using: .utf8) {
        //                     onResponse(urlData, nil, response.response?.statusCode)
        //                 } else {
        //                     onResponse(nil, response.error, response.error?.responseCode)
        //                 }
        //             case .failure:
        //                 onResponse(nil, response.error, response.error?.responseCode)
        //         }
        //     }
        // }
        if (responseType  == "application/octet-stream" || responseType  == "application/csv" || responseType  == "text/csv" || responseType  == "application/pdf") {
            session.request(urlString, method: HTTPMethod(rawValue: rawType), parameters: parameters, encoding: encoding, headers: finalHeaders).validate()
                .responseString { response in
                print(response.request?.curlString ?? "No Request !!!")
                switch response.result {
                case .success(_):
                    if rawType == "head" {
                        onResponse(response.response?.allHeaderFields.data, nil, response.response?.statusCode)
                    } else {
                        if let data = response.data {
                            onResponse(data, nil, response.response?.statusCode)
                        } else {
                            onResponse(nil, nil, response.response?.statusCode)
                        }
                    }
                case .failure(let error):
                    onResponse(response.data, error, error.asAFError?.responseCode)
                }
            }
        } else {
            session.request(urlString, method: HTTPMethod(rawValue: rawType), parameters: parameters, encoding: encoding, headers: finalHeaders).validate().responseJSON { response in
                print(response.request?.curlString ?? "No Request !!!")
                switch response.result {
                case .success(_):
                    if rawType == "head" {
                        onResponse(response.response?.allHeaderFields.data, nil, response.response?.statusCode)
                    } else {
                        onResponse(response.data, nil, response.response?.statusCode)
                    }
                case .failure(let error):
                    onResponse(response.data, error, error.asAFError?.responseCode)
                }
            }
        }
    }
    
    static func getTempPath(fileExtension: String) -> DownloadRequest.Destination {
        let destinationPath: DownloadRequest.Destination = { _, _ in
            let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0];
            let fileURL = documentsURL.appendingPathComponent("\(UUID().uuidString).\(fileExtension)")
            return (fileURL, [.removePreviousFile, .createIntermediateDirectories])
        }
        return destinationPath
    }
    
    private static func getExtension(from type: String) -> String {
        let mapping = ["application/pdf": "pdf",
                       "application/csv": "csv",
                       "text/csv": "csv"]
        return mapping[type] ?? "txt"
    }
}
