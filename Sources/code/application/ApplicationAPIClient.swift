import Foundation
class ApplicationAPIClient {
    static func execute(config: ApplicationConfig,
                        method: String,
                        url: String,
                        query: [String: Any]?,
                        extraHeaders: [(key: String, value: String)] = [],
                        body: [String: Any]?,
                        responseType: String = "application/json",
                        onResponse: @escaping OnResponse) {
        var headers = [
            (key: "Authorization", value: "Bearer " + "\(config.applicationId):\(config.applicationToken)".asBase64)
        ]
        if let userAgent = config.userAgent {
            headers.append((key: "User-Agent", value: userAgent))
        }
        
        headers.append((key: "x-fp-sdk-version", value: "0.1.11"))

        if let language = config.language {
            headers.append((key: "Accept-Language", value: language))
        }
        
        if let currency = config.currency {
            headers.append((key: "x-currency-code",value: currency))
        }

        headers.append(contentsOf: extraHeaders)
        AlmofireHelper.request(config.domain.appendAsPath(url),
                                query: query,
                                parameters: body,
                                type: method,
                                headers: headers,
                                responseType: responseType,
                                onResponse: onResponse)
    }
}