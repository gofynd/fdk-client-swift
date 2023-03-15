

import Foundation
public extension PlatformClient {
    /*
         Model: Safetynet
         Used By: Configuration
     */

    class Safetynet: Codable {
        public var credentials: SafetynetCredentials?

        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case credentials

            case enabled
        }

        public init(credentials: SafetynetCredentials? = nil, enabled: Bool? = nil) {
            self.credentials = credentials

            self.enabled = enabled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                credentials = try container.decode(SafetynetCredentials.self, forKey: .credentials)

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
