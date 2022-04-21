

import Foundation
public extension PlatformClient {
    /*
         Model: CompareProductsFeature
         Used By: Configuration
     */

    class CompareProductsFeature: Codable {
        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case enabled
        }

        public init(enabled: Bool? = nil) {
            self.enabled = enabled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }
}
