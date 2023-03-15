

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryStoreRule
         Used By: Configuration
     */

    class InventoryStoreRule: Codable {
        public var criteria: String?

        public var rules: [StoreCriteriaRule]?

        public var stores: [Int]?

        public enum CodingKeys: String, CodingKey {
            case criteria

            case rules

            case stores
        }

        public init(criteria: String? = nil, rules: [StoreCriteriaRule]? = nil, stores: [Int]? = nil) {
            self.criteria = criteria

            self.rules = rules

            self.stores = stores
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                criteria = try container.decode(String.self, forKey: .criteria)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rules = try container.decode([StoreCriteriaRule].self, forKey: .rules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stores = try container.decode([Int].self, forKey: .stores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(criteria, forKey: .criteria)

            try? container.encodeIfPresent(rules, forKey: .rules)

            try? container.encodeIfPresent(stores, forKey: .stores)
        }
    }
}
