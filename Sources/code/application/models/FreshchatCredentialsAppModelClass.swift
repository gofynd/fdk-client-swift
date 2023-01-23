

import Foundation
public extension ApplicationClient {
    /*
         Model: FreshchatCredentials
         Used By: Configuration
     */
    class FreshchatCredentials: Codable {
        public var appId: String?

        public var appKey: String?

        public var webToken: String?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case appKey = "app_key"

            case webToken = "web_token"
        }

        public init(appId: String? = nil, appKey: String? = nil, webToken: String? = nil) {
            self.appId = appId

            self.appKey = appKey

            self.webToken = webToken
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appId = try container.decode(String.self, forKey: .appId)

                if let strong_appId = appId,
                   let appIdData = Data(base64Encoded: strong_appId)
                {
                    appId = String(data: appIdData, encoding: .utf8) ?? appId
                }

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appKey = try container.decode(String.self, forKey: .appKey)

                if let strong_appKey = appKey,
                   let appKeyData = Data(base64Encoded: strong_appKey)
                {
                    appKey = String(data: appKeyData, encoding: .utf8) ?? appKey
                }

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                webToken = try container.decode(String.self, forKey: .webToken)

                if let strong_webToken = webToken,
                   let webTokenData = Data(base64Encoded: strong_webToken)
                {
                    webToken = String(data: webTokenData, encoding: .utf8) ?? webToken
                }

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId?.asBase64, forKey: .appId)

            try? container.encodeIfPresent(appKey?.asBase64, forKey: .appKey)

            try? container.encodeIfPresent(webToken?.asBase64, forKey: .webToken)
        }
    }
}
