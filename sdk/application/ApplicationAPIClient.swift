class ApplicationAPIClient {
    static func execute(config: ApplicationConfig, method: String, url: String, query: [String: Any]?, body: [String: Any]?, onResponse: @escaping OnResponse) {
        let headers = [
            (key: "x-application-id", value: config.applicationId),
            (key: "x-application-token", value: config.applicationToken),
            (key: "Authorization", value: "Bearer " + "\(config.applicationId):\(config.applicationToken)".asBase64)
        ]
        AlmofireHelper.request(config.domain.appendAsPath(url), query: query, parameters: body, type: method, headers: headers, onResponse: onResponse)
    }
}