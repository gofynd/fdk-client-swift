

import Foundation

public extension PlatformClient.Webhook {
    /*
         Model: PingWebhook
         Used By: Webhook
     */

    class PingWebhook: Codable {
        public var webhookUrl: String?

        public var authMeta: [String: Any]?

        public var customHeaders: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case webhookUrl = "webhook_url"

            case authMeta = "auth_meta"

            case customHeaders = "custom_headers"
        }

        public init(authMeta: [String: Any]? = nil, customHeaders: [String: Any]? = nil, webhookUrl: String? = nil) {
            self.webhookUrl = webhookUrl

            self.authMeta = authMeta

            self.customHeaders = customHeaders
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                webhookUrl = try container.decode(String.self, forKey: .webhookUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                authMeta = try container.decode([String: Any].self, forKey: .authMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customHeaders = try container.decode([String: Any].self, forKey: .customHeaders)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(webhookUrl, forKey: .webhookUrl)

            try? container.encodeIfPresent(authMeta, forKey: .authMeta)

            try? container.encodeIfPresent(customHeaders, forKey: .customHeaders)
        }
    }
}
