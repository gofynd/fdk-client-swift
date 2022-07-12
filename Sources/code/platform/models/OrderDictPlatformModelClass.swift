

import Foundation
public extension PlatformClient {
    /*
         Model: OrderDict
         Used By: Orders
     */

    class OrderDict: Codable {
        public var fyndOrderId: String

        public var shipmentCount: Int

        public var orderDate: String

        public enum CodingKeys: String, CodingKey {
            case fyndOrderId = "fynd_order_id"

            case shipmentCount = "shipment_count"

            case orderDate = "order_date"
        }

        public init(fyndOrderId: String, orderDate: String, shipmentCount: Int) {
            self.fyndOrderId = fyndOrderId

            self.shipmentCount = shipmentCount

            self.orderDate = orderDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            shipmentCount = try container.decode(Int.self, forKey: .shipmentCount)

            orderDate = try container.decode(String.self, forKey: .orderDate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(shipmentCount, forKey: .shipmentCount)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)
        }
    }
}
