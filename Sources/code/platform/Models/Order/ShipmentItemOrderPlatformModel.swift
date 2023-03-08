

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentItem
         Used By: Order
     */

    class ShipmentItem: Codable {
        public var user: UserDataInfo?

        public var prices: Prices?

        public var bags: [BagUnit]?

        public var createdAt: String

        public var application: [String: Any]?

        public var paymentMethods: [String: Any]?

        public var id: String

        public var paymentModeInfo: PaymentModeInfo?

        public var fulfillingCentre: String

        public var channel: [String: Any]?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var sla: [String: Any]?

        public var totalBagsCount: Int

        public var totalShipmentsInOrder: Int

        public var company: [String: Any]?

        public var shipmentStatus: ShipmentStatus?

        public var shipmentCreatedAt: Int

        public enum CodingKeys: String, CodingKey {
            case user

            case prices

            case bags

            case createdAt = "created_at"

            case application

            case paymentMethods = "payment_methods"

            case id

            case paymentModeInfo = "payment_mode_info"

            case fulfillingCentre = "fulfilling_centre"

            case channel

            case fulfillingStore = "fulfilling_store"

            case sla

            case totalBagsCount = "total_bags_count"

            case totalShipmentsInOrder = "total_shipments_in_order"

            case company

            case shipmentStatus = "shipment_status"

            case shipmentCreatedAt = "shipment_created_at"
        }

        public init(application: [String: Any]? = nil, bags: [BagUnit]? = nil, channel: [String: Any]? = nil, company: [String: Any]? = nil, createdAt: String, fulfillingCentre: String, fulfillingStore: ShipmentItemFulFillingStore? = nil, id: String, paymentMethods: [String: Any]? = nil, paymentModeInfo: PaymentModeInfo? = nil, prices: Prices? = nil, shipmentCreatedAt: Int, shipmentStatus: ShipmentStatus? = nil, sla: [String: Any]? = nil, totalBagsCount: Int, totalShipmentsInOrder: Int, user: UserDataInfo? = nil) {
            self.user = user

            self.prices = prices

            self.bags = bags

            self.createdAt = createdAt

            self.application = application

            self.paymentMethods = paymentMethods

            self.id = id

            self.paymentModeInfo = paymentModeInfo

            self.fulfillingCentre = fulfillingCentre

            self.channel = channel

            self.fulfillingStore = fulfillingStore

            self.sla = sla

            self.totalBagsCount = totalBagsCount

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.company = company

            self.shipmentStatus = shipmentStatus

            self.shipmentCreatedAt = shipmentCreatedAt
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
                prices = try container.decode(Prices.self, forKey: .prices)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                application = try container.decode([String: Any].self, forKey: .application)

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

            id = try container.decode(String.self, forKey: .id)

            do {
                paymentModeInfo = try container.decode(PaymentModeInfo.self, forKey: .paymentModeInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillingCentre = try container.decode(String.self, forKey: .fulfillingCentre)

            do {
                channel = try container.decode([String: Any].self, forKey: .channel)

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
                sla = try container.decode([String: Any].self, forKey: .sla)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalBagsCount = try container.decode(Int.self, forKey: .totalBagsCount)

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            do {
                company = try container.decode([String: Any].self, forKey: .company)

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

            shipmentCreatedAt = try container.decode(Int.self, forKey: .shipmentCreatedAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentModeInfo, forKey: .paymentModeInfo)

            try? container.encodeIfPresent(fulfillingCentre, forKey: .fulfillingCentre)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(sla, forKey: .sla)

            try? container.encodeIfPresent(totalBagsCount, forKey: .totalBagsCount)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentItem
         Used By: Order
     */

    class ShipmentItem: Codable {
        public var user: UserDataInfo?

        public var prices: Prices?

        public var bags: [BagUnit]?

        public var createdAt: String

        public var application: [String: Any]?

        public var paymentMethods: [String: Any]?

        public var id: String

        public var paymentModeInfo: PaymentModeInfo?

        public var fulfillingCentre: String

        public var channel: [String: Any]?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var sla: [String: Any]?

        public var totalBagsCount: Int

        public var totalShipmentsInOrder: Int

        public var company: [String: Any]?

        public var shipmentStatus: ShipmentStatus?

        public var shipmentCreatedAt: Int

        public enum CodingKeys: String, CodingKey {
            case user

            case prices

            case bags

            case createdAt = "created_at"

            case application

            case paymentMethods = "payment_methods"

            case id

            case paymentModeInfo = "payment_mode_info"

            case fulfillingCentre = "fulfilling_centre"

            case channel

            case fulfillingStore = "fulfilling_store"

            case sla

            case totalBagsCount = "total_bags_count"

            case totalShipmentsInOrder = "total_shipments_in_order"

            case company

            case shipmentStatus = "shipment_status"

            case shipmentCreatedAt = "shipment_created_at"
        }

        public init(application: [String: Any]? = nil, bags: [BagUnit]? = nil, channel: [String: Any]? = nil, company: [String: Any]? = nil, createdAt: String, fulfillingCentre: String, fulfillingStore: ShipmentItemFulFillingStore? = nil, id: String, paymentMethods: [String: Any]? = nil, paymentModeInfo: PaymentModeInfo? = nil, prices: Prices? = nil, shipmentCreatedAt: Int, shipmentStatus: ShipmentStatus? = nil, sla: [String: Any]? = nil, totalBagsCount: Int, totalShipmentsInOrder: Int, user: UserDataInfo? = nil) {
            self.user = user

            self.prices = prices

            self.bags = bags

            self.createdAt = createdAt

            self.application = application

            self.paymentMethods = paymentMethods

            self.id = id

            self.paymentModeInfo = paymentModeInfo

            self.fulfillingCentre = fulfillingCentre

            self.channel = channel

            self.fulfillingStore = fulfillingStore

            self.sla = sla

            self.totalBagsCount = totalBagsCount

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.company = company

            self.shipmentStatus = shipmentStatus

            self.shipmentCreatedAt = shipmentCreatedAt
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
                prices = try container.decode(Prices.self, forKey: .prices)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                application = try container.decode([String: Any].self, forKey: .application)

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

            id = try container.decode(String.self, forKey: .id)

            do {
                paymentModeInfo = try container.decode(PaymentModeInfo.self, forKey: .paymentModeInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillingCentre = try container.decode(String.self, forKey: .fulfillingCentre)

            do {
                channel = try container.decode([String: Any].self, forKey: .channel)

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
                sla = try container.decode([String: Any].self, forKey: .sla)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalBagsCount = try container.decode(Int.self, forKey: .totalBagsCount)

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            do {
                company = try container.decode([String: Any].self, forKey: .company)

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

            shipmentCreatedAt = try container.decode(Int.self, forKey: .shipmentCreatedAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentModeInfo, forKey: .paymentModeInfo)

            try? container.encodeIfPresent(fulfillingCentre, forKey: .fulfillingCentre)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(sla, forKey: .sla)

            try? container.encodeIfPresent(totalBagsCount, forKey: .totalBagsCount)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)
        }
    }
}
