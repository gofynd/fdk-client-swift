

import Foundation
public extension ApplicationClient {
    /*
         Model: DataUpdates
         Used By: Order
     */
    class DataUpdates: Codable {
        public var entities: [EntitiesDataUpdates]?

        public var products: [ProductsDataUpdates]?

        public enum CodingKeys: String, CodingKey {
            case entities

            case products
        }

        public init(entities: [EntitiesDataUpdates]? = nil, products: [ProductsDataUpdates]? = nil) {
            self.entities = entities

            self.products = products
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                entities = try container.decode([EntitiesDataUpdates].self, forKey: .entities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                products = try container.decode([ProductsDataUpdates].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(entities, forKey: .entities)

            try? container.encodeIfPresent(products, forKey: .products)
        }
    }
}
