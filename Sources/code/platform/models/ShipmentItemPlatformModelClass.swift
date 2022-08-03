

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentItem
         Used By: Orders
     */

    class ShipmentItem: Codable {
        public var user: UserDataInfo?

        public var shipmentStatus: ShipmentStatus?

        public var application: [String: Any]?

        public var prices: Prices?

        public var paymentModeInfo: PaymentModeInfo?

        public var sla: [String: Any]?

        public var id: String

        public var totalBagsCount: Int

        public var bags: [BagUnit]?

        public var shipmentCreatedAt: Int

        public var channel: [String: Any]?

        public var totalShipmentsInOrder: Int

        public var createdAt: String

        public var fulfillingCentre: String

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public enum CodingKeys: String, CodingKey {
            case user

            case shipmentStatus = "shipment_status"

            case application

            case prices

            case paymentModeInfo = "payment_mode_info"

            case sla

            case id

            case totalBagsCount = "total_bags_count"

            case bags

            case shipmentCreatedAt = "shipment_created_at"

            case channel

            case totalShipmentsInOrder = "total_shipments_in_order"

            case createdAt = "created_at"

            case fulfillingCentre = "fulfilling_centre"

            case fulfillingStore = "fulfilling_store"
        }

        public init(application: [String: Any]? = nil, bags: [BagUnit]? = nil, channel: [String: Any]? = nil, createdAt: String, fulfillingCentre: String, fulfillingStore: ShipmentItemFulFillingStore? = nil, id: String, paymentModeInfo: PaymentModeInfo? = nil, prices: Prices? = nil, shipmentCreatedAt: Int, shipmentStatus: ShipmentStatus? = nil, sla: [String: Any]? = nil, totalBagsCount: Int, totalShipmentsInOrder: Int, user: UserDataInfo? = nil) {
            self.user = user

            self.shipmentStatus = shipmentStatus

            self.application = application

            self.prices = prices

            self.paymentModeInfo = paymentModeInfo

            self.sla = sla

            self.id = id

            self.totalBagsCount = totalBagsCount

            self.bags = bags

            self.shipmentCreatedAt = shipmentCreatedAt

            self.channel = channel

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.createdAt = createdAt

            self.fulfillingCentre = fulfillingCentre

            self.fulfillingStore = fulfillingStore
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                user = try container.decode(UserDataInfo.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentStatus = try container.decode(ShipmentStatus.self, forKey: .shipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                application = try container.decode([String: Any].self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentModeInfo = try container.decode(PaymentModeInfo.self, forKey: .paymentModeInfo)

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

            id = try container.decode(String.self, forKey: .id)

            totalBagsCount = try container.decode(Int.self, forKey: .totalBagsCount)

            do {
                bags = try container.decode([BagUnit].self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentCreatedAt = try container.decode(Int.self, forKey: .shipmentCreatedAt)

            do {
                channel = try container.decode([String: Any].self, forKey: .channel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            fulfillingCentre = try container.decode(String.self, forKey: .fulfillingCentre)

            do {
                fulfillingStore = try container.decode(ShipmentItemFulFillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(paymentModeInfo, forKey: .paymentModeInfo)

            try? container.encodeIfPresent(sla, forKey: .sla)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(totalBagsCount, forKey: .totalBagsCount)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(fulfillingCentre, forKey: .fulfillingCentre)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)
        }
    }
}
