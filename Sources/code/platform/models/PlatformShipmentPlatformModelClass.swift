

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformShipment
         Used By: Order
     */

    class PlatformShipment: Codable {
        public var status: PlatformShipmentStatus?

        public var bags: Bags?

        public var prices: ShipmentPrices?

        public var id: String?

        public var gst: ShipmentGst?

        public var priority: Double?

        public var priorityText: String?

        public var lockStatus: Bool?

        public var orderingChannel: String?

        public var totalShipmentBags: Int?

        public enum CodingKeys: String, CodingKey {
            case status

            case bags

            case prices

            case id

            case gst

            case priority

            case priorityText = "priority_text"

            case lockStatus = "lock_status"

            case orderingChannel = "ordering_channel"

            case totalShipmentBags = "total_shipment_bags"
        }

        public init(bags: Bags? = nil, gst: ShipmentGst? = nil, id: String? = nil, lockStatus: Bool? = nil, orderingChannel: String? = nil, prices: ShipmentPrices? = nil, priority: Double? = nil, priorityText: String? = nil, status: PlatformShipmentStatus? = nil, totalShipmentBags: Int? = nil) {
            self.status = status

            self.bags = bags

            self.prices = prices

            self.id = id

            self.gst = gst

            self.priority = priority

            self.priorityText = priorityText

            self.lockStatus = lockStatus

            self.orderingChannel = orderingChannel

            self.totalShipmentBags = totalShipmentBags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(PlatformShipmentStatus.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode(Bags.self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                prices = try container.decode(ShipmentPrices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gst = try container.decode(ShipmentGst.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(Double.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)
        }
    }
}
