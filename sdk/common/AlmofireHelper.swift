import Alamofire

typealias OnResponse = (_ responseData: Data?, _ error: Error?, _ responseCode: Int?) -> Void

class AlmofireHelper {
    static func request(_ path: String, query: [String: Any]? = nil, parameters: [String: Any]?, type rawType: String, headers: HTTPHeaders? = nil, onResponse: @escaping OnResponse) {
        let type = HTTPMethod(rawValue: rawValue)
        var queryString = ""
        if let query = query {
            queryString = "?" + query.asQueryString
        }
        let urlString = path + queryString
        let signer = RequestSigner(url: urlString, reqData: parameters, type: type, headers: headers)
        signedHeaders = signer.sign()
        AF.request(urlString, method: type, parameters: parameters, encoding: JSONEncoding.default, headers: signedHeaders).responseJSON { response in
            switch response.result {
            case .success(let result):
                if let json = result as? [String: Any] {
                    onResponse(response.data, nil, response.response?.statusCode)
                } else if let json = result as? [[String: Any]] {
                    onResponse(response.data, nil, response.response?.statusCode)
                } else {
                    onResponse(nil, nil, response.response?.statusCode)
                }
            case .failure(let error):
                if let data = response.data {
                    do {
                        if let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] {
                            onResponse(response.data, error, )
                        } else {
                            onResponse(nil, error, error.asAFError?.responseCode)
                        }
                    } catch _ as NSError {
                        onResponse(nil, error, error.asAFError?.responseCode)
                    }
                } else {
                    onResponse(nil, error, error.asAFError?.responseCode)
                }
            }
        }
    }    
}