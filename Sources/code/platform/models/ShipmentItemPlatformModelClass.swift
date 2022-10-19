

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentItem
         Used By: Orders
     */

    class ShipmentItem: Codable {
        public var application: [String: Any]?

        public var totalBagsCount: Int

        public var shipmentCreatedAt: Int

        public var fulfillingCentre: String

        public var prices: Prices?

        public var paymentModeInfo: PaymentModeInfo?

        public var createdAt: String

        public var sla: [String: Any]?

        public var user: UserDataInfo?

        public var bags: [BagUnit]?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var shipmentStatus: ShipmentStatus?

        public var id: String

        public var channel: [String: Any]?

        public var totalShipmentsInOrder: Int

        public enum CodingKeys: String, CodingKey {
            case application

            case totalBagsCount = "total_bags_count"

            case shipmentCreatedAt = "shipment_created_at"

            case fulfillingCentre = "fulfilling_centre"

            case prices

            case paymentModeInfo = "payment_mode_info"

            case createdAt = "created_at"

            case sla

            case user

            case bags

            case fulfillingStore = "fulfilling_store"

            case shipmentStatus = "shipment_status"

            case id

            case channel

            case totalShipmentsInOrder = "total_shipments_in_order"
        }

        public init(application: [String: Any]? = nil, bags: [BagUnit]? = nil, channel: [String: Any]? = nil, createdAt: String, fulfillingCentre: String, fulfillingStore: ShipmentItemFulFillingStore? = nil, id: String, paymentModeInfo: PaymentModeInfo? = nil, prices: Prices? = nil, shipmentCreatedAt: Int, shipmentStatus: ShipmentStatus? = nil, sla: [String: Any]? = nil, totalBagsCount: Int, totalShipmentsInOrder: Int, user: UserDataInfo? = nil) {
            self.application = application

            self.totalBagsCount = totalBagsCount

            self.shipmentCreatedAt = shipmentCreatedAt

            self.fulfillingCentre = fulfillingCentre

            self.prices = prices

            self.paymentModeInfo = paymentModeInfo

            self.createdAt = createdAt

            self.sla = sla

            self.user = user

            self.bags = bags

            self.fulfillingStore = fulfillingStore

            self.shipmentStatus = shipmentStatus

            self.id = id

            self.channel = channel

            self.totalShipmentsInOrder = totalShipmentsInOrder
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                application = try container.decode([String: Any].self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalBagsCount = try container.decode(Int.self, forKey: .totalBagsCount)

            shipmentCreatedAt = try container.decode(Int.self, forKey: .shipmentCreatedAt)

            fulfillingCentre = try container.decode(String.self, forKey: .fulfillingCentre)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                sla = try container.decode([String: Any].self, forKey: .sla)

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
                shipmentStatus = try container.decode(ShipmentStatus.self, forKey: .shipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                channel = try container.decode([String: Any].self, forKey: .channel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(totalBagsCount, forKey: .totalBagsCount)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(fulfillingCentre, forKey: .fulfillingCentre)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(paymentModeInfo, forKey: .paymentModeInfo)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(sla, forKey: .sla)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)
        }
    }
}
