import Foundation
class PublicAPIClient {
    static func execute(config: PublicConfig,
                        method: String,
                        url: String,
                        query: [String: Any]?,
                        extraHeaders: [(key: String, value: String)] = [],
                        body: [String: Any]?,
                        responseType: String = "application/json",
                        onResponse: @escaping OnResponse) {
        var headers = [
            (key: "x-fp-sdk-version", value: "3.11.0")
        ]
        headers.append(contentsOf: extraHeaders)
        headers.append(contentsOf: config.extraHeaders)
        if let userAgent = config.userAgent {
            headers.append((key: "User-Agent", value: userAgent))
        }
        if let language = config.language {
            headers.append((key: "Accept-Language", value: language))
        }
        if let currency = config.currency {
            headers.append((key: "x-currency-code",value: currency))
        }
        AlmofireHelper.request(config.domain.appendAsPath(url),
                                query: query,
                                parameters: body,
                                type: method,
                                headers: headers,
                                responseType: responseType,
                                onResponse: onResponse)
    }
}