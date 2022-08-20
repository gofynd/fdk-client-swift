

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment1
         Used By: Orders
     */

    class Shipment1: Codable {
        public var totalItems: String

        public var shipmentStatus: String

        public var rtdDone: String

        public var prices: ShipmentPricesDataSet?

        public var shipmentId: String

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case totalItems = "total_items"

            case shipmentStatus = "shipment_status"

            case rtdDone = "rtd_done"

            case prices

            case shipmentId = "shipment_id"

            case orderId = "order_id"
        }

        public init(orderId: String, prices: ShipmentPricesDataSet? = nil, rtdDone: String, shipmentId: String, shipmentStatus: String, totalItems: String) {
            self.totalItems = totalItems

            self.shipmentStatus = shipmentStatus

            self.rtdDone = rtdDone

            self.prices = prices

            self.shipmentId = shipmentId

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalItems = try container.decode(String.self, forKey: .totalItems)

            shipmentStatus = try container.decode(String.self, forKey: .shipmentStatus)

            rtdDone = try container.decode(String.self, forKey: .rtdDone)

            do {
                prices = try container.decode(ShipmentPricesDataSet.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(rtdDone, forKey: .rtdDone)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
