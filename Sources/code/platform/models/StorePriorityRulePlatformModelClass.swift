

import Foundation
public extension PlatformClient {
    /*
         Model: StorePriorityRule
         Used By: Configuration
     */

    class StorePriorityRule: Codable {
        public var enabled: Bool?

        public var storetypeOrder: [String]?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case storetypeOrder = "storetype_order"
        }

        public init(enabled: Bool? = nil, storetypeOrder: [String]? = nil) {
            self.enabled = enabled

            self.storetypeOrder = storetypeOrder
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
                storetypeOrder = try container.decode([String].self, forKey: .storetypeOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(storetypeOrder, forKey: .storetypeOrder)
        }
    }
}
