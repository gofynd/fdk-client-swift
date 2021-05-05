class ApplicationAPIClient {
    static func execute(config: ApplicationConfig, method: String, url: String, query: [String: Any]?, extraHeaders: [(key: String, value: String)] = [], body: [String: Any]?, onResponse: @escaping OnResponse) {
        var headers = [
            (key: "Authorization", value: "Bearer " + "\(config.applicationId):\(config.applicationToken)".asBase64)
        ]
        headers.append(contentsOf: extraHeaders)
        AlmofireHelper.request(config.domain.appendAsPath(url), query: query, parameters: body, type: method, headers: headers, onResponse: onResponse)
    }
}