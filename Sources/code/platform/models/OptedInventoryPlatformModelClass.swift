

import Foundation
public extension PlatformClient {
    /*
         Model: OptedInventory
         Used By: Configuration
     */

    class OptedInventory: Codable {
        public var optType: OptType?

        public var items: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case optType = "opt_type"

            case items
        }

        public init(items: [String: Any]? = nil, optType: OptType? = nil) {
            self.optType = optType

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                optType = try container.decode(OptType.self, forKey: .optType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([String: Any].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(optType, forKey: .optType)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
