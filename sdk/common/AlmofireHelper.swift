import Alamofire

public typealias OnResponse = (_ responseData: Data?, _ error: Swift.Error?, _ responseCode: Int?) -> Void

class AlmofireHelper {
    static func request(_ path: String, query: [String: Any]? = nil, parameters: [String: Any]?, type rawType: String, headers: [(key: String, value: String)] = [], isJsonEncoding: Bool = true, onResponse: @escaping OnResponse) {
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
        AF.request(urlString, method: HTTPMethod(rawValue: rawType), parameters: parameters, encoding: encoding, headers: finalHeaders).validate().responseJSON { response in
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