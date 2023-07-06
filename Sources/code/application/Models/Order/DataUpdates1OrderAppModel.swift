

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: DataUpdates1
         Used By: Order
     */
    class DataUpdates1: Codable {
        public var orderItemStatus: [OrderItemDataUpdates]?

        public var entities: [EntitiesDataUpdates]?

        public var products: [ProductsDataUpdates1]?

        public enum CodingKeys: String, CodingKey {
            case orderItemStatus = "order_item_status"

            case entities

            case products
        }

        public init(entities: [EntitiesDataUpdates]? = nil, orderItemStatus: [OrderItemDataUpdates]? = nil, products: [ProductsDataUpdates1]? = nil) {
            self.orderItemStatus = orderItemStatus

            self.entities = entities

            self.products = products
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderItemStatus = try container.decode([OrderItemDataUpdates].self, forKey: .orderItemStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entities = try container.decode([EntitiesDataUpdates].self, forKey: .entities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                products = try container.decode([ProductsDataUpdates1].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderItemStatus, forKey: .orderItemStatus)

            try? container.encodeIfPresent(entities, forKey: .entities)

            try? container.encodeIfPresent(products, forKey: .products)
        }
    }
}
