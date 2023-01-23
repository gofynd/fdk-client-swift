

import Foundation
public extension ApplicationClient {
    /*
         Model: CommunicationConsent
         Used By: Communication
     */
    class CommunicationConsent: Codable {
        public var appId: String?

        public var userId: String?

        public var channels: CommunicationConsentChannels?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case userId = "user_id"

            case channels
        }

        public init(appId: String? = nil, channels: CommunicationConsentChannels? = nil, userId: String? = nil) {
            self.appId = appId

            self.userId = userId

            self.channels = channels
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channels = try container.decode(CommunicationConsentChannels.self, forKey: .channels)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(channels, forKey: .channels)
        }
    }
}
