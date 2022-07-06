

import Foundation
public extension PlatformClient {
    /*
         Model: LoyaltyPointsConfig
         Used By: Configuration
     */

    class LoyaltyPointsConfig: Codable {
        public var enabled: Bool?

        public var autoApply: Bool?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case autoApply = "auto_apply"
        }

        public init(autoApply: Bool? = nil, enabled: Bool? = nil) {
            self.enabled = enabled

            self.autoApply = autoApply
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoApply = try container.decode(Bool.self, forKey: .autoApply)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(autoApply, forKey: .autoApply)
        }
    }
}
