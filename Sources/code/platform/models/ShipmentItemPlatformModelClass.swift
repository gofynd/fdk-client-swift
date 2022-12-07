

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentItem
         Used By: Orders
     */

    class ShipmentItem: Codable {
        public var createdAt: String

        public var totalBagsCount: Int

        public var id: String

        public var prices: Prices?

        public var sla: [String: Any]?

        public var bags: [BagUnit]?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var channel: [String: Any]?

        public var fulfillingCentre: String

        public var paymentModeInfo: PaymentModeInfo?

        public var shipmentCreatedAt: Int

        public var application: [String: Any]?

        public var user: UserDataInfo?

        public var totalShipmentsInOrder: Int

        public var shipmentStatus: ShipmentStatus?

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case totalBagsCount = "total_bags_count"

            case id

            case prices

            case sla

            case bags

            case fulfillingStore = "fulfilling_store"

            case channel

            case fulfillingCentre = "fulfilling_centre"

            case paymentModeInfo = "payment_mode_info"

            case shipmentCreatedAt = "shipment_created_at"

            case application

            case user

            case totalShipmentsInOrder = "total_shipments_in_order"

            case shipmentStatus = "shipment_status"
        }

        public init(application: [String: Any]? = nil, bags: [BagUnit]? = nil, channel: [String: Any]? = nil, createdAt: String, fulfillingCentre: String, fulfillingStore: ShipmentItemFulFillingStore? = nil, id: String, paymentModeInfo: PaymentModeInfo? = nil, prices: Prices? = nil, shipmentCreatedAt: Int, shipmentStatus: ShipmentStatus? = nil, sla: [String: Any]? = nil, totalBagsCount: Int, totalShipmentsInOrder: Int, user: UserDataInfo? = nil) {
            self.createdAt = createdAt

            self.totalBagsCount = totalBagsCount

            self.id = id

            self.prices = prices

            self.sla = sla

            self.bags = bags

            self.fulfillingStore = fulfillingStore

            self.channel = channel

            self.fulfillingCentre = fulfillingCentre

            self.paymentModeInfo = paymentModeInfo

            self.shipmentCreatedAt = shipmentCreatedAt

            self.application = application

            self.user = user

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.shipmentStatus = shipmentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            totalBagsCount = try container.decode(Int.self, forKey: .totalBagsCount)

            id = try container.decode(String.self, forKey: .id)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sla = try container.decode([String: Any].self, forKey: .sla)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode([BagUnit].self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfillingStore = try container.decode(ShipmentItemFulFillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channel = try container.decode([String: Any].self, forKey: .channel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillingCentre = try container.decode(String.self, forKey: .fulfillingCentre)

            do {
                paymentModeInfo = try container.decode(PaymentModeInfo.self, forKey: .paymentModeInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentCreatedAt = try container.decode(Int.self, forKey: .shipmentCreatedAt)

            do {
                application = try container.decode([String: Any].self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(UserDataInfo.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            do {
                shipmentStatus = try container.decode(ShipmentStatus.self, forKey: .shipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(totalBagsCount, forKey: .totalBagsCount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(sla, forKey: .sla)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(fulfillingCentre, forKey: .fulfillingCentre)

            try? container.encodeIfPresent(paymentModeInfo, forKey: .paymentModeInfo)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)
        }
    }
}
