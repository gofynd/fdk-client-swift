

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment1
         Used By: Orders
     */

    class Shipment1: Codable {
        public var prices: ShipmentPricesDataSet?

        public var orderId: String

        public var rtdDone: String

        public var shipmentStatus: String

        public var shipmentId: String

        public var totalItems: String

        public enum CodingKeys: String, CodingKey {
            case prices

            case orderId = "order_id"

            case rtdDone = "rtd_done"

            case shipmentStatus = "shipment_status"

            case shipmentId = "shipment_id"

            case totalItems = "total_items"
        }

        public init(orderId: String, prices: ShipmentPricesDataSet? = nil, rtdDone: String, shipmentId: String, shipmentStatus: String, totalItems: String) {
            self.prices = prices

            self.orderId = orderId

            self.rtdDone = rtdDone

            self.shipmentStatus = shipmentStatus

            self.shipmentId = shipmentId

            self.totalItems = totalItems
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                prices = try container.decode(ShipmentPricesDataSet.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            rtdDone = try container.decode(String.self, forKey: .rtdDone)

            shipmentStatus = try container.decode(String.self, forKey: .shipmentStatus)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            totalItems = try container.decode(String.self, forKey: .totalItems)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(rtdDone, forKey: .rtdDone)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)
        }
    }
}
