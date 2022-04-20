

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryStore
         Used By: Configuration
     */

    class InventoryStore: Codable {
        public var criteria: String?

        public var stores: [[String: Any]]?

        public var rules: AppStoreRules?

        public enum CodingKeys: String, CodingKey {
            case criteria

            case stores

            case rules
        }

        public init(criteria: String? = nil, rules: AppStoreRules? = nil, stores: [[String: Any]]? = nil) {
            self.criteria = criteria

            self.stores = stores

            self.rules = rules
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
                stores = try container.decode([[String: Any]].self, forKey: .stores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rules = try container.decode(AppStoreRules.self, forKey: .rules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(criteria, forKey: .criteria)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(rules, forKey: .rules)
        }
    }
}
