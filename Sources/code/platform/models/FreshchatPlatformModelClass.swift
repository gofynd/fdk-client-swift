import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: Freshchat
         Used By: Configuration
     */

    class Freshchat: Codable {
        public var credentials: FreshchatCredentials?

        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case credentials

            case enabled
        }

        public init(credentials: FreshchatCredentials?, enabled: Bool?) {
            self.credentials = credentials

            self.enabled = enabled
        }

        public func duplicate() -> Freshchat {
            let dict = self.dictionary!
            let copy = Freshchat(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                credentials = try container.decode(FreshchatCredentials.self, forKey: .credentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(credentials, forKey: .credentials)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }
}
