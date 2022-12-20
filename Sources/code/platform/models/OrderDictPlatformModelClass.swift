

import Foundation
public extension PlatformClient {
    /*
         Model: OrderDict
         Used By: Order
     */

    class OrderDict: Codable {
        public var shipmentCount: Int

        public var orderDate: String

        public var fyndOrderId: String

        public enum CodingKeys: String, CodingKey {
            case shipmentCount = "shipment_count"

            case orderDate = "order_date"

            case fyndOrderId = "fynd_order_id"
        }

        public init(fyndOrderId: String, orderDate: String, shipmentCount: Int) {
            self.shipmentCount = shipmentCount

            self.orderDate = orderDate

            self.fyndOrderId = fyndOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentCount = try container.decode(Int.self, forKey: .shipmentCount)

            orderDate = try container.decode(String.self, forKey: .orderDate)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentCount, forKey: .shipmentCount)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
        }
    }
}
