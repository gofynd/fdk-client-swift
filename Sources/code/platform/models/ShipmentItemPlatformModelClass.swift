

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentItem
         Used By: Order
     */

    class ShipmentItem: Codable {
        public var totalShipmentsInOrder: Int

        public var shipmentCreatedAt: Int

        public var user: UserDataInfo?

        public var application: [String: Any]?

        public var shipmentStatus: ShipmentStatus?

        public var fulfillingCentre: String

        public var sla: [String: Any]?

        public var paymentModeInfo: PaymentModeInfo?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var paymentMethods: [String: Any]?

        public var totalBagsCount: Int

        public var prices: Prices?

        public var id: String

        public var channel: [String: Any]?

        public var createdAt: String

        public var bags: [BagUnit]?

        public enum CodingKeys: String, CodingKey {
            case totalShipmentsInOrder = "total_shipments_in_order"

            case shipmentCreatedAt = "shipment_created_at"

            case user

            case application

            case shipmentStatus = "shipment_status"

            case fulfillingCentre = "fulfilling_centre"

            case sla

            case paymentModeInfo = "payment_mode_info"

            case fulfillingStore = "fulfilling_store"

            case paymentMethods = "payment_methods"

            case totalBagsCount = "total_bags_count"

            case prices

            case id

            case channel

            case createdAt = "created_at"

            case bags
        }

        public init(application: [String: Any]? = nil, bags: [BagUnit]? = nil, channel: [String: Any]? = nil, createdAt: String, fulfillingCentre: String, fulfillingStore: ShipmentItemFulFillingStore? = nil, id: String, paymentMethods: [String: Any]? = nil, paymentModeInfo: PaymentModeInfo? = nil, prices: Prices? = nil, shipmentCreatedAt: Int, shipmentStatus: ShipmentStatus? = nil, sla: [String: Any]? = nil, totalBagsCount: Int, totalShipmentsInOrder: Int, user: UserDataInfo? = nil) {
            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.shipmentCreatedAt = shipmentCreatedAt

            self.user = user

            self.application = application

            self.shipmentStatus = shipmentStatus

            self.fulfillingCentre = fulfillingCentre

            self.sla = sla

            self.paymentModeInfo = paymentModeInfo

            self.fulfillingStore = fulfillingStore

            self.paymentMethods = paymentMethods

            self.totalBagsCount = totalBagsCount

            self.prices = prices

            self.id = id

            self.channel = channel

            self.createdAt = createdAt

            self.bags = bags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            shipmentCreatedAt = try container.decode(Int.self, forKey: .shipmentCreatedAt)

            do {
                user = try container.decode(UserDataInfo.self, forKey: .user)

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
                shipmentStatus = try container.decode(ShipmentStatus.self, forKey: .shipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillingCentre = try container.decode(String.self, forKey: .fulfillingCentre)

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

            totalBagsCount = try container.decode(Int.self, forKey: .totalBagsCount)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                bags = try container.decode([BagUnit].self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(fulfillingCentre, forKey: .fulfillingCentre)

            try? container.encodeIfPresent(sla, forKey: .sla)

            try? container.encodeIfPresent(paymentModeInfo, forKey: .paymentModeInfo)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(totalBagsCount, forKey: .totalBagsCount)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(bags, forKey: .bags)
        }
    }
}
