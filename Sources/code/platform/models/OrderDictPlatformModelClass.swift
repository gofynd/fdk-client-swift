

import Foundation
public extension PlatformClient {
    /*
         Model: OrderDict
         Used By: Orders
     */

    class OrderDict: Codable {
        public var shipmentCount: Int

        public var fyndOrderId: String

        public var orderDate: String

        public enum CodingKeys: String, CodingKey {
            case shipmentCount = "shipment_count"

            case fyndOrderId = "fynd_order_id"

            case orderDate = "order_date"
        }

        public init(fyndOrderId: String, orderDate: String, shipmentCount: Int) {
            self.shipmentCount = shipmentCount

            self.fyndOrderId = fyndOrderId

            self.orderDate = orderDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentCount = try container.decode(Int.self, forKey: .shipmentCount)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            orderDate = try container.decode(String.self, forKey: .orderDate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentCount, forKey: .shipmentCount)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)
        }
    }
}
