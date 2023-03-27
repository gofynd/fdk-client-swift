

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderDict
         Used By: Order
     */

    class OrderDict: Codable {
        public var fyndOrderId: String

        public var orderDate: String

        public var shipmentCount: Int

        public enum CodingKeys: String, CodingKey {
            case fyndOrderId = "fynd_order_id"

            case orderDate = "order_date"

            case shipmentCount = "shipment_count"
        }

        public init(fyndOrderId: String, orderDate: String, shipmentCount: Int) {
            self.fyndOrderId = fyndOrderId

            self.orderDate = orderDate

            self.shipmentCount = shipmentCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            orderDate = try container.decode(String.self, forKey: .orderDate)

            shipmentCount = try container.decode(Int.self, forKey: .shipmentCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(shipmentCount, forKey: .shipmentCount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderDict
         Used By: Order
     */

    class OrderDict: Codable {
        public var fyndOrderId: String

        public var orderDate: String

        public var shipmentCount: Int

        public enum CodingKeys: String, CodingKey {
            case fyndOrderId = "fynd_order_id"

            case orderDate = "order_date"

            case shipmentCount = "shipment_count"
        }

        public init(fyndOrderId: String, orderDate: String, shipmentCount: Int) {
            self.fyndOrderId = fyndOrderId

            self.orderDate = orderDate

            self.shipmentCount = shipmentCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            orderDate = try container.decode(String.self, forKey: .orderDate)

            shipmentCount = try container.decode(Int.self, forKey: .shipmentCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(shipmentCount, forKey: .shipmentCount)
        }
    }
}
