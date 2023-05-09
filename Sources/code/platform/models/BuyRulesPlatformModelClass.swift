

import Foundation
public extension PlatformClient {
    /*
         Model: BuyRules
         Used By: Order
     */

    class BuyRules: Codable {
        public var cartConditions: [String: Any]?

        public var itemCriteria: ItemCriterias?

        public enum CodingKeys: String, CodingKey {
            case cartConditions = "cart_conditions"

            case itemCriteria = "item_criteria"
        }

        public init(cartConditions: [String: Any]? = nil, itemCriteria: ItemCriterias? = nil) {
            self.cartConditions = cartConditions

            self.itemCriteria = itemCriteria
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cartConditions = try container.decode([String: Any].self, forKey: .cartConditions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCriteria = try container.decode(ItemCriterias.self, forKey: .itemCriteria)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cartConditions, forKey: .cartConditions)

            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)
        }
    }
}
