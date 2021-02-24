

class PlatformAPIClient {
    static func execute(config: PlatformConfig, method: String, url: String, query: [String: Any]?, body: [String: Any]?, onResponse: @escaping OnResponse) {
        AlmofireHelper.request(config.domain.appendAsPath(url), query: query, parameters: body, type: method, headers: [], onResponse: onResponse)
    }
}