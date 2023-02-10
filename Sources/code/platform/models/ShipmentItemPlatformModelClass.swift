

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentItem
         Used By: Order
     */

    class ShipmentItem: Codable {
        public var shipmentCreatedAt: Int

        public var createdAt: String

        public var id: String

        public var bags: [BagUnit]?

        public var application: [String: Any]?

        public var fulfillingCentre: String

        public var paymentModeInfo: PaymentModeInfo?

        public var shipmentStatus: ShipmentStatus?

        public var user: UserDataInfo?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var paymentMethods: [String: Any]?

        public var prices: Prices?

        public var sla: [String: Any]?

        public var totalShipmentsInOrder: Int

        public var totalBagsCount: Int

        public var channel: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case shipmentCreatedAt = "shipment_created_at"

            case createdAt = "created_at"

            case id

            case bags

            case application

            case fulfillingCentre = "fulfilling_centre"

            case paymentModeInfo = "payment_mode_info"

            case shipmentStatus = "shipment_status"

            case user

            case fulfillingStore = "fulfilling_store"

            case paymentMethods = "payment_methods"

            case prices

            case sla

            case totalShipmentsInOrder = "total_shipments_in_order"

            case totalBagsCount = "total_bags_count"

            case channel
        }

        public init(application: [String: Any]? = nil, bags: [BagUnit]? = nil, channel: [String: Any]? = nil, createdAt: String, fulfillingCentre: String, fulfillingStore: ShipmentItemFulFillingStore? = nil, id: String, paymentMethods: [String: Any]? = nil, paymentModeInfo: PaymentModeInfo? = nil, prices: Prices? = nil, shipmentCreatedAt: Int, shipmentStatus: ShipmentStatus? = nil, sla: [String: Any]? = nil, totalBagsCount: Int, totalShipmentsInOrder: Int, user: UserDataInfo? = nil) {
            self.shipmentCreatedAt = shipmentCreatedAt

            self.createdAt = createdAt

            self.id = id

            self.bags = bags

            self.application = application

            self.fulfillingCentre = fulfillingCentre

            self.paymentModeInfo = paymentModeInfo

            self.shipmentStatus = shipmentStatus

            self.user = user

            self.fulfillingStore = fulfillingStore

            self.paymentMethods = paymentMethods

            self.prices = prices

            self.sla = sla

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.totalBagsCount = totalBagsCount

            self.channel = channel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentCreatedAt = try container.decode(Int.self, forKey: .shipmentCreatedAt)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            id = try container.decode(String.self, forKey: .id)

            do {
                bags = try container.decode([BagUnit].self, forKey: .bags)

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

            fulfillingCentre = try container.decode(String.self, forKey: .fulfillingCentre)

            do {
                paymentModeInfo = try container.decode(PaymentModeInfo.self, forKey: .paymentModeInfo)

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
                user = try container.decode(UserDataInfo.self, forKey: .user)

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
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

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
                sla = try container.decode([String: Any].self, forKey: .sla)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            totalBagsCount = try container.decode(Int.self, forKey: .totalBagsCount)

            do {
                channel = try container.decode([String: Any].self, forKey: .channel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(fulfillingCentre, forKey: .fulfillingCentre)

            try? container.encodeIfPresent(paymentModeInfo, forKey: .paymentModeInfo)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(sla, forKey: .sla)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(totalBagsCount, forKey: .totalBagsCount)

            try? container.encodeIfPresent(channel, forKey: .channel)
        }
    }
}
