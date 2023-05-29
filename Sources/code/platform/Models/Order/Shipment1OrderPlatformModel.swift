

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Shipment1
         Used By: Order
     */

    class Shipment1: Codable {
        public var shipmentStatus: String

        public var rtdDone: String

        public var totalItems: String

        public var shipmentId: String

        public var orderId: String

        public var prices: ShipmentPricesDataSet?

        public enum CodingKeys: String, CodingKey {
            case shipmentStatus = "shipment_status"

            case rtdDone = "rtd_done"

            case totalItems = "total_items"

            case shipmentId = "shipment_id"

            case orderId = "order_id"

            case prices
        }

        public init(orderId: String, prices: ShipmentPricesDataSet? = nil, rtdDone: String, shipmentId: String, shipmentStatus: String, totalItems: String) {
            self.shipmentStatus = shipmentStatus

            self.rtdDone = rtdDone

            self.totalItems = totalItems

            self.shipmentId = shipmentId

            self.orderId = orderId

            self.prices = prices
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentStatus = try container.decode(String.self, forKey: .shipmentStatus)

            rtdDone = try container.decode(String.self, forKey: .rtdDone)

            totalItems = try container.decode(String.self, forKey: .totalItems)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                prices = try container.decode(ShipmentPricesDataSet.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(rtdDone, forKey: .rtdDone)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(prices, forKey: .prices)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Shipment1
         Used By: Order
     */

    class Shipment1: Codable {
        public var shipmentStatus: String

        public var rtdDone: String

        public var totalItems: String

        public var shipmentId: String

        public var orderId: String

        public var prices: ShipmentPricesDataSet?

        public enum CodingKeys: String, CodingKey {
            case shipmentStatus = "shipment_status"

            case rtdDone = "rtd_done"

            case totalItems = "total_items"

            case shipmentId = "shipment_id"

            case orderId = "order_id"

            case prices
        }

        public init(orderId: String, prices: ShipmentPricesDataSet? = nil, rtdDone: String, shipmentId: String, shipmentStatus: String, totalItems: String) {
            self.shipmentStatus = shipmentStatus

            self.rtdDone = rtdDone

            self.totalItems = totalItems

            self.shipmentId = shipmentId

            self.orderId = orderId

            self.prices = prices
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentStatus = try container.decode(String.self, forKey: .shipmentStatus)

            rtdDone = try container.decode(String.self, forKey: .rtdDone)

            totalItems = try container.decode(String.self, forKey: .totalItems)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                prices = try container.decode(ShipmentPricesDataSet.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(rtdDone, forKey: .rtdDone)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(prices, forKey: .prices)
        }
    }
}
