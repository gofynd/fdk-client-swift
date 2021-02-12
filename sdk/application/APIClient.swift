

class APIClient {
    static func execute(conf: Setup, method: String, iurl: String, pathParam: String, queryParams: [String: String], data: [String: String], onResponse: @escaping OnResponse) {
        let headers = HTTPHeaders([
            "Authorization": "Bearer " + (conf.applicationID + conf.applicationToken).asBase64
        ])
        //!TODO: Process iURL with pathParam
        AlmofireHelper.request(_ path: iurl, query: queryParams, parameters: data, type rawType: method, headers: headers, onResponse: onResponse)
    }
}