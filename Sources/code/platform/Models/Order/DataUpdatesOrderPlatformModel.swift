

import Foundation

public extension PlatformClient.Order {
    /*
         Model: DataUpdates
         Used By: Order
     */

    class DataUpdates: Codable {
        public var orderItemStatus: [OrderItemDataUpdates]?

        public var products: [ProductsDataUpdates]?

        public var entities: [EntitiesDataUpdates]?

        public enum CodingKeys: String, CodingKey {
            case orderItemStatus = "order_item_status"

            case products

            case entities
        }

        public init(entities: [EntitiesDataUpdates]? = nil, orderItemStatus: [OrderItemDataUpdates]? = nil, products: [ProductsDataUpdates]? = nil) {
            self.orderItemStatus = orderItemStatus

            self.products = products

            self.entities = entities
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
                products = try container.decode([ProductsDataUpdates].self, forKey: .products)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderItemStatus, forKey: .orderItemStatus)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(entities, forKey: .entities)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: DataUpdates
         Used By: Order
     */

    class DataUpdates: Codable {
        public var orderItemStatus: [OrderItemDataUpdates]?

        public var products: [ProductsDataUpdates]?

        public var entities: [EntitiesDataUpdates]?

        public enum CodingKeys: String, CodingKey {
            case orderItemStatus = "order_item_status"

            case products

            case entities
        }

        public init(entities: [EntitiesDataUpdates]? = nil, orderItemStatus: [OrderItemDataUpdates]? = nil, products: [ProductsDataUpdates]? = nil) {
            self.orderItemStatus = orderItemStatus

            self.products = products

            self.entities = entities
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
                products = try container.decode([ProductsDataUpdates].self, forKey: .products)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderItemStatus, forKey: .orderItemStatus)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(entities, forKey: .entities)
        }
    }
}
