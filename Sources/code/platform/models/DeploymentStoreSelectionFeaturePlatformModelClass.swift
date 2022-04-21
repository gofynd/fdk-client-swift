

import Foundation
public extension PlatformClient {
    /*
         Model: DeploymentStoreSelectionFeature
         Used By: Configuration
     */

    class DeploymentStoreSelectionFeature: Codable {
        public var enabled: Bool?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case type
        }

        public init(enabled: Bool? = nil, type: String? = nil) {
            self.enabled = enabled

            self.type = type
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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
