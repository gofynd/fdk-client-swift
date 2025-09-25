import Foundation
import Alamofire

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
        headers.append((key: "x-fp-sdk-version", value: "3.10.0"))
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
        if let locationDetails = config.locationDetails, let dict =  locationDetails.dictionary, dict.keys.count > 0 {
            headers.append((key: "x-location-detail", value: dict.minifiedJson))
        }

        // add the externally passed headers at the last to make sure it always override the preset values
        headers.append(contentsOf: extraHeaders)

        AlmofireHelper.request(url,
                                query: query,
                                parameters: body,
                                type: method,
                                headers: headers,
                                responseType: responseType,
                                session: config.session,
                                onResponse: onResponse)
    }
}