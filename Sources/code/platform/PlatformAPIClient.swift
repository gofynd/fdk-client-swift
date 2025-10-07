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
                var finalHeaders = [(key: String, value: String)]()
                finalHeaders.append((key: "Authorization", value: "Bearer " + token.accessToken))
                finalHeaders.append((key: "x-fp-sdk-version", value: "3.11.0"))
                finalHeaders.append(contentsOf: config.extraHeaders)
                if let userAgent = config.userAgent {
                    finalHeaders.append((key: "User-Agent", value: userAgent))
                }
                if let language = config.language {
                    finalHeaders.append((key: "Accept-Language", value: language))
                }
                if let currency = config.currency {
                    finalHeaders.append((key: "x-currency-code",value: currency))
                }
                if let locationDetails = config.locationDetails, let dict =  locationDetails.dictionary, dict.keys.count > 0{
                    finalHeaders.append((key: "x-location-detail", value: dict.minifiedJson))
                }

                // add the externally passed headers at the last to make sure it always override the preset values
                finalHeaders.append(contentsOf: headers)

                //CustomServerTrustManager.enableSSLPinning = config.enableSSLPinning
                //CustomServerTrustManager.host.insert(URL(string: url)?.host ?? "")

                AlmofireHelper.request(config.domain.appendAsPath(url),
                                        query: query,
                                        parameters: body,
                                        type: method,
                                        headers: finalHeaders,
                                        responseType: responseType,
				      session: config.session,
                                        onResponse: onResponse)
            } else {
                onResponse(nil, NSError(domain: "No Token", code: 0, userInfo: nil), 0)
            }
        }
    }
}
