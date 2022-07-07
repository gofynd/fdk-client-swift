

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentItem
         Used By: Orders
     */

    class ShipmentItem: Codable {
        public var totalBagsCount: Int

        public var shipmentCreatedAt: Int

        public var sla: [String: Any]?

        public var paymentModeInfo: PaymentModeInfo?

        public var id: String

        public var totalShipmentsInOrder: Int

        public var user: UserInfo?

        public var shipmentStatus: ShipmentStatus?

        public var createdAt: String

        public var fulfillingStore: FulFillingStore?

        public var fulfillingCentre: String

        public var bags: [BagItem]?

        public var channel: Channel?

        public var prices: Prices?

        public var application: Application?

        public enum CodingKeys: String, CodingKey {
            case totalBagsCount = "total_bags_count"

            case shipmentCreatedAt = "shipment_created_at"

            case sla

            case paymentModeInfo = "payment_mode_info"

            case id

            case totalShipmentsInOrder = "total_shipments_in_order"

            case user

            case shipmentStatus = "shipment_status"

            case createdAt = "created_at"

            case fulfillingStore = "fulfilling_store"

            case fulfillingCentre = "fulfilling_centre"

            case bags

            case channel

            case prices

            case application
        }

        public init(application: Application? = nil, bags: [BagItem]? = nil, channel: Channel? = nil, createdAt: String, fulfillingCentre: String, fulfillingStore: FulFillingStore? = nil, id: String, paymentModeInfo: PaymentModeInfo? = nil, prices: Prices? = nil, shipmentCreatedAt: Int, shipmentStatus: ShipmentStatus? = nil, sla: [String: Any]? = nil, totalBagsCount: Int, totalShipmentsInOrder: Int, user: UserInfo? = nil) {
            self.totalBagsCount = totalBagsCount

            self.shipmentCreatedAt = shipmentCreatedAt

            self.sla = sla

            self.paymentModeInfo = paymentModeInfo

            self.id = id

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.user = user

            self.shipmentStatus = shipmentStatus

            self.createdAt = createdAt

            self.fulfillingStore = fulfillingStore

            self.fulfillingCentre = fulfillingCentre

            self.bags = bags

            self.channel = channel

            self.prices = prices

            self.application = application
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalBagsCount = try container.decode(Int.self, forKey: .totalBagsCount)

            shipmentCreatedAt = try container.decode(Int.self, forKey: .shipmentCreatedAt)

            do {
                sla = try container.decode([String: Any].self, forKey: .sla)

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

            id = try container.decode(String.self, forKey: .id)

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            do {
                user = try container.decode(UserInfo.self, forKey: .user)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                fulfillingStore = try container.decode(FulFillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillingCentre = try container.decode(String.self, forKey: .fulfillingCentre)

            do {
                bags = try container.decode([BagItem].self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channel = try container.decode(Channel.self, forKey: .channel)

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
                application = try container.decode(Application.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalBagsCount, forKey: .totalBagsCount)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(sla, forKey: .sla)

            try? container.encodeIfPresent(paymentModeInfo, forKey: .paymentModeInfo)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(fulfillingCentre, forKey: .fulfillingCentre)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(application, forKey: .application)
        }
    }
}
