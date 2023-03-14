

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentItem
         Used By: Order
     */

    class ShipmentItem: Codable {
        public var createdAt: String

        public var user: UserDataInfo?

        public var paymentModeInfo: PaymentModeInfo?

        public var bags: [BagUnit]?

        public var prices: Prices?

        public var shipmentStatus: ShipmentStatus?

        public var channel: [String: Any]?

        public var sla: [String: Any]?

        public var application: [String: Any]?

        public var company: [String: Any]?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var totalBagsCount: Int

        public var shipmentCreatedAt: Int

        public var totalShipmentsInOrder: Int

        public var paymentMethods: [String: Any]?

        public var id: String

        public var fulfillingCentre: String

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case user

            case paymentModeInfo = "payment_mode_info"

            case bags

            case prices

            case shipmentStatus = "shipment_status"

            case channel

            case sla

            case application

            case company

            case fulfillingStore = "fulfilling_store"

            case totalBagsCount = "total_bags_count"

            case shipmentCreatedAt = "shipment_created_at"

            case totalShipmentsInOrder = "total_shipments_in_order"

            case paymentMethods = "payment_methods"

            case id

            case fulfillingCentre = "fulfilling_centre"
        }

        public init(application: [String: Any]? = nil, bags: [BagUnit]? = nil, channel: [String: Any]? = nil, company: [String: Any]? = nil, createdAt: String, fulfillingCentre: String, fulfillingStore: ShipmentItemFulFillingStore? = nil, id: String, paymentMethods: [String: Any]? = nil, paymentModeInfo: PaymentModeInfo? = nil, prices: Prices? = nil, shipmentCreatedAt: Int, shipmentStatus: ShipmentStatus? = nil, sla: [String: Any]? = nil, totalBagsCount: Int, totalShipmentsInOrder: Int, user: UserDataInfo? = nil) {
            self.createdAt = createdAt

            self.user = user

            self.paymentModeInfo = paymentModeInfo

            self.bags = bags

            self.prices = prices

            self.shipmentStatus = shipmentStatus

            self.channel = channel

            self.sla = sla

            self.application = application

            self.company = company

            self.fulfillingStore = fulfillingStore

            self.totalBagsCount = totalBagsCount

            self.shipmentCreatedAt = shipmentCreatedAt

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.paymentMethods = paymentMethods

            self.id = id

            self.fulfillingCentre = fulfillingCentre
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                user = try container.decode(UserDataInfo.self, forKey: .user)

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
                bags = try container.decode([BagUnit].self, forKey: .bags)

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
                shipmentStatus = try container.decode(ShipmentStatus.self, forKey: .shipmentStatus)

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
                company = try container.decode([String: Any].self, forKey: .company)

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

            totalBagsCount = try container.decode(Int.self, forKey: .totalBagsCount)

            shipmentCreatedAt = try container.decode(Int.self, forKey: .shipmentCreatedAt)

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            do {
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            fulfillingCentre = try container.decode(String.self, forKey: .fulfillingCentre)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(paymentModeInfo, forKey: .paymentModeInfo)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(sla, forKey: .sla)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(totalBagsCount, forKey: .totalBagsCount)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fulfillingCentre, forKey: .fulfillingCentre)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentItem
         Used By: Order
     */

    class ShipmentItem: Codable {
        public var createdAt: String

        public var user: UserDataInfo?

        public var paymentModeInfo: PaymentModeInfo?

        public var bags: [BagUnit]?

        public var prices: Prices?

        public var shipmentStatus: ShipmentStatus?

        public var channel: [String: Any]?

        public var sla: [String: Any]?

        public var application: [String: Any]?

        public var company: [String: Any]?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var totalBagsCount: Int

        public var shipmentCreatedAt: Int

        public var totalShipmentsInOrder: Int

        public var paymentMethods: [String: Any]?

        public var id: String

        public var fulfillingCentre: String

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case user

            case paymentModeInfo = "payment_mode_info"

            case bags

            case prices

            case shipmentStatus = "shipment_status"

            case channel

            case sla

            case application

            case company

            case fulfillingStore = "fulfilling_store"

            case totalBagsCount = "total_bags_count"

            case shipmentCreatedAt = "shipment_created_at"

            case totalShipmentsInOrder = "total_shipments_in_order"

            case paymentMethods = "payment_methods"

            case id

            case fulfillingCentre = "fulfilling_centre"
        }

        public init(application: [String: Any]? = nil, bags: [BagUnit]? = nil, channel: [String: Any]? = nil, company: [String: Any]? = nil, createdAt: String, fulfillingCentre: String, fulfillingStore: ShipmentItemFulFillingStore? = nil, id: String, paymentMethods: [String: Any]? = nil, paymentModeInfo: PaymentModeInfo? = nil, prices: Prices? = nil, shipmentCreatedAt: Int, shipmentStatus: ShipmentStatus? = nil, sla: [String: Any]? = nil, totalBagsCount: Int, totalShipmentsInOrder: Int, user: UserDataInfo? = nil) {
            self.createdAt = createdAt

            self.user = user

            self.paymentModeInfo = paymentModeInfo

            self.bags = bags

            self.prices = prices

            self.shipmentStatus = shipmentStatus

            self.channel = channel

            self.sla = sla

            self.application = application

            self.company = company

            self.fulfillingStore = fulfillingStore

            self.totalBagsCount = totalBagsCount

            self.shipmentCreatedAt = shipmentCreatedAt

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.paymentMethods = paymentMethods

            self.id = id

            self.fulfillingCentre = fulfillingCentre
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                user = try container.decode(UserDataInfo.self, forKey: .user)

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
                bags = try container.decode([BagUnit].self, forKey: .bags)

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
                shipmentStatus = try container.decode(ShipmentStatus.self, forKey: .shipmentStatus)

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
                company = try container.decode([String: Any].self, forKey: .company)

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

            totalBagsCount = try container.decode(Int.self, forKey: .totalBagsCount)

            shipmentCreatedAt = try container.decode(Int.self, forKey: .shipmentCreatedAt)

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            do {
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            fulfillingCentre = try container.decode(String.self, forKey: .fulfillingCentre)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(paymentModeInfo, forKey: .paymentModeInfo)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(sla, forKey: .sla)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(totalBagsCount, forKey: .totalBagsCount)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fulfillingCentre, forKey: .fulfillingCentre)
        }
    }
}
