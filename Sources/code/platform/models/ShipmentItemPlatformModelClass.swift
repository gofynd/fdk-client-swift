

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentItem
         Used By: Order
     */

    class ShipmentItem: Codable {
        public var channel: [String: Any]?

        public var user: UserDataInfo?

        public var sla: [String: Any]?

        public var application: [String: Any]?

        public var paymentModeInfo: PaymentModeInfo?

        public var fulfillingCentre: String

        public var prices: Prices?

        public var shipmentStatus: ShipmentStatus?

        public var createdAt: String

        public var id: String

        public var shipmentCreatedAt: Int

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var totalBagsCount: Int

        public var totalShipmentsInOrder: Int

        public var bags: [BagUnit]?

        public var paymentMethods: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case channel

            case user

            case sla

            case application

            case paymentModeInfo = "payment_mode_info"

            case fulfillingCentre = "fulfilling_centre"

            case prices

            case shipmentStatus = "shipment_status"

            case createdAt = "created_at"

            case id

            case shipmentCreatedAt = "shipment_created_at"

            case fulfillingStore = "fulfilling_store"

            case totalBagsCount = "total_bags_count"

            case totalShipmentsInOrder = "total_shipments_in_order"

            case bags

            case paymentMethods = "payment_methods"
        }

        public init(application: [String: Any]? = nil, bags: [BagUnit]? = nil, channel: [String: Any]? = nil, createdAt: String, fulfillingCentre: String, fulfillingStore: ShipmentItemFulFillingStore? = nil, id: String, paymentMethods: [String: Any]? = nil, paymentModeInfo: PaymentModeInfo? = nil, prices: Prices? = nil, shipmentCreatedAt: Int, shipmentStatus: ShipmentStatus? = nil, sla: [String: Any]? = nil, totalBagsCount: Int, totalShipmentsInOrder: Int, user: UserDataInfo? = nil) {
            self.channel = channel

            self.user = user

            self.sla = sla

            self.application = application

            self.paymentModeInfo = paymentModeInfo

            self.fulfillingCentre = fulfillingCentre

            self.prices = prices

            self.shipmentStatus = shipmentStatus

            self.createdAt = createdAt

            self.id = id

            self.shipmentCreatedAt = shipmentCreatedAt

            self.fulfillingStore = fulfillingStore

            self.totalBagsCount = totalBagsCount

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.bags = bags

            self.paymentMethods = paymentMethods
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                channel = try container.decode([String: Any].self, forKey: .channel)

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
                sla = try container.decode([String: Any].self, forKey: .sla)

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
                paymentModeInfo = try container.decode(PaymentModeInfo.self, forKey: .paymentModeInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillingCentre = try container.decode(String.self, forKey: .fulfillingCentre)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

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

            id = try container.decode(String.self, forKey: .id)

            shipmentCreatedAt = try container.decode(Int.self, forKey: .shipmentCreatedAt)

            do {
                fulfillingStore = try container.decode(ShipmentItemFulFillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalBagsCount = try container.decode(Int.self, forKey: .totalBagsCount)

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            do {
                bags = try container.decode([BagUnit].self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(sla, forKey: .sla)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(paymentModeInfo, forKey: .paymentModeInfo)

            try? container.encodeIfPresent(fulfillingCentre, forKey: .fulfillingCentre)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(totalBagsCount, forKey: .totalBagsCount)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
        }
    }
}
