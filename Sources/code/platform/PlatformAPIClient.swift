import Foundation
public class PlatformAPIClient {
    public static func execute(config: PlatformConfig,
                                method: String,
                                url: String,
                                query: [String: Any]?,
                                body: [String: Any]?,
                                headers: [(key: String,
                                value: String)] = [],
                                responseType: String = "application/json",
                                onResponse: @escaping OnResponse) {
        config.oauthClient.getAccessToken { (token) in
            if let token = token {
                var finalHeaders = headers
                finalHeaders.append((key: "Authorization", value: "Bearer " + token.accessToken))
                finalHeaders.append((key: "x-fp-sdk-version", value: "0.1.11"))

                AlmofireHelper.request(config.domain.appendAsPath(url),
                                        query: query,
                                        parameters: body,
                                        type: method,
                                        headers: finalHeaders,
                                        responseType: responseType,
                                        onResponse: onResponse)
            } else {
                onResponse(nil, NSError(domain: "No Token", code: 0, userInfo: nil), 0)
            }
        }
    }
}
