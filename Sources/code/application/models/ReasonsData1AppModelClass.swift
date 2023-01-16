

import Foundation
public extension ApplicationClient {
    /*
         Model: ReasonsData1
         Used By: Order
     */
    class ReasonsData1: Codable {
        public var products: [ProductsReasons1]?

        public var entities: [EntitiesReasons1]?

        public enum CodingKeys: String, CodingKey {
            case products

            case entities
        }

        public init(entities: [EntitiesReasons1]? = nil, products: [ProductsReasons1]? = nil) {
            self.products = products

            self.entities = entities
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                products = try container.decode([ProductsReasons1].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entities = try container.decode([EntitiesReasons1].self, forKey: .entities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(entities, forKey: .entities)
        }
    }
}
