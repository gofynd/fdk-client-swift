

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentItem
         Used By: Order
     */

    class ShipmentItem: Codable {
        public var meta: ShipmentItemMeta?

        public var deliveryAddress: PlatformDeliveryAddress?

        public var lockStatus: Bool?

        public var orderDate: String?

        public var invoiceId: String?

        public var orderId: String

        public var totalBags: Int

        public var prices: Prices?

        public var previousShipmentId: String?

        public var paymentMode: String?

        public var estimatedSlaTime: String?

        public var shipmentStatus: ShipmentStatus?

        public var orderingChannnel: String?

        public var canProcess: Bool?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var bags: [BagUnit]?

        public var customerNote: String?

        public var shipmentCreatedAt: String

        public var user: UserDataInfo?

        public var shipmentId: String?

        public var channel: ShipmentListingChannel?

        public var paymentMethods: [String: Any]?

        public var statusCreatedAt: String?

        public var displayName: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case deliveryAddress = "delivery_address"

            case lockStatus = "lock_status"

            case orderDate = "order_date"

            case invoiceId = "invoice_id"

            case orderId = "order_id"

            case totalBags = "total_bags"

            case prices

            case previousShipmentId = "previous_shipment_id"

            case paymentMode = "payment_mode"

            case estimatedSlaTime = "estimated_sla_time"

            case shipmentStatus = "shipment_status"

            case orderingChannnel = "ordering_channnel"

            case canProcess = "can_process"

            case fulfillingStore = "fulfilling_store"

            case bags

            case customerNote = "customer_note"

            case shipmentCreatedAt = "shipment_created_at"

            case user

            case shipmentId = "shipment_id"

            case channel

            case paymentMethods = "payment_methods"

            case statusCreatedAt = "status_created_at"

            case displayName = "display_name"
        }

        public init(bags: [BagUnit]? = nil, canProcess: Bool? = nil, channel: ShipmentListingChannel? = nil, customerNote: String? = nil, deliveryAddress: PlatformDeliveryAddress? = nil, displayName: String? = nil, estimatedSlaTime: String? = nil, fulfillingStore: ShipmentItemFulFillingStore? = nil, invoiceId: String? = nil, lockStatus: Bool? = nil, meta: ShipmentItemMeta? = nil, orderingChannnel: String? = nil, orderDate: String? = nil, orderId: String, paymentMethods: [String: Any]? = nil, paymentMode: String? = nil, previousShipmentId: String? = nil, prices: Prices? = nil, shipmentCreatedAt: String, shipmentId: String? = nil, shipmentStatus: ShipmentStatus? = nil, statusCreatedAt: String? = nil, totalBags: Int, user: UserDataInfo? = nil) {
            self.meta = meta

            self.deliveryAddress = deliveryAddress

            self.lockStatus = lockStatus

            self.orderDate = orderDate

            self.invoiceId = invoiceId

            self.orderId = orderId

            self.totalBags = totalBags

            self.prices = prices

            self.previousShipmentId = previousShipmentId

            self.paymentMode = paymentMode

            self.estimatedSlaTime = estimatedSlaTime

            self.shipmentStatus = shipmentStatus

            self.orderingChannnel = orderingChannnel

            self.canProcess = canProcess

            self.fulfillingStore = fulfillingStore

            self.bags = bags

            self.customerNote = customerNote

            self.shipmentCreatedAt = shipmentCreatedAt

            self.user = user

            self.shipmentId = shipmentId

            self.channel = channel

            self.paymentMethods = paymentMethods

            self.statusCreatedAt = statusCreatedAt

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode(ShipmentItemMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryAddress = try container.decode(PlatformDeliveryAddress.self, forKey: .deliveryAddress)

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
                orderDate = try container.decode(String.self, forKey: .orderDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceId = try container.decode(String.self, forKey: .invoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            totalBags = try container.decode(Int.self, forKey: .totalBags)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                previousShipmentId = try container.decode(String.self, forKey: .previousShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                estimatedSlaTime = try container.decode(String.self, forKey: .estimatedSlaTime)

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
                orderingChannnel = try container.decode(String.self, forKey: .orderingChannnel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canProcess = try container.decode(Bool.self, forKey: .canProcess)

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
                bags = try container.decode([BagUnit].self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerNote = try container.decode(String.self, forKey: .customerNote)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

            do {
                user = try container.decode(UserDataInfo.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channel = try container.decode(ShipmentListingChannel.self, forKey: .channel)

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
                statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encode(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encode(previousShipmentId, forKey: .previousShipmentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(estimatedSlaTime, forKey: .estimatedSlaTime)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(orderingChannnel, forKey: .orderingChannnel)

            try? container.encodeIfPresent(canProcess, forKey: .canProcess)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(customerNote, forKey: .customerNote)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentItem
         Used By: Order
     */

    class ShipmentItem: Codable {
        public var meta: ShipmentItemMeta?

        public var deliveryAddress: PlatformDeliveryAddress?

        public var lockStatus: Bool?

        public var orderDate: String?

        public var invoiceId: String?

        public var orderId: String

        public var totalBags: Int

        public var prices: Prices?

        public var previousShipmentId: String?

        public var paymentMode: String?

        public var estimatedSlaTime: String?

        public var shipmentStatus: ShipmentStatus?

        public var orderingChannnel: String?

        public var canProcess: Bool?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var bags: [BagUnit]?

        public var customerNote: String?

        public var shipmentCreatedAt: String

        public var user: UserDataInfo?

        public var shipmentId: String?

        public var channel: ShipmentListingChannel?

        public var paymentMethods: [String: Any]?

        public var statusCreatedAt: String?

        public var displayName: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case deliveryAddress = "delivery_address"

            case lockStatus = "lock_status"

            case orderDate = "order_date"

            case invoiceId = "invoice_id"

            case orderId = "order_id"

            case totalBags = "total_bags"

            case prices

            case previousShipmentId = "previous_shipment_id"

            case paymentMode = "payment_mode"

            case estimatedSlaTime = "estimated_sla_time"

            case shipmentStatus = "shipment_status"

            case orderingChannnel = "ordering_channnel"

            case canProcess = "can_process"

            case fulfillingStore = "fulfilling_store"

            case bags

            case customerNote = "customer_note"

            case shipmentCreatedAt = "shipment_created_at"

            case user

            case shipmentId = "shipment_id"

            case channel

            case paymentMethods = "payment_methods"

            case statusCreatedAt = "status_created_at"

            case displayName = "display_name"
        }

        public init(bags: [BagUnit]? = nil, canProcess: Bool? = nil, channel: ShipmentListingChannel? = nil, customerNote: String? = nil, deliveryAddress: PlatformDeliveryAddress? = nil, displayName: String? = nil, estimatedSlaTime: String? = nil, fulfillingStore: ShipmentItemFulFillingStore? = nil, invoiceId: String? = nil, lockStatus: Bool? = nil, meta: ShipmentItemMeta? = nil, orderingChannnel: String? = nil, orderDate: String? = nil, orderId: String, paymentMethods: [String: Any]? = nil, paymentMode: String? = nil, previousShipmentId: String? = nil, prices: Prices? = nil, shipmentCreatedAt: String, shipmentId: String? = nil, shipmentStatus: ShipmentStatus? = nil, statusCreatedAt: String? = nil, totalBags: Int, user: UserDataInfo? = nil) {
            self.meta = meta

            self.deliveryAddress = deliveryAddress

            self.lockStatus = lockStatus

            self.orderDate = orderDate

            self.invoiceId = invoiceId

            self.orderId = orderId

            self.totalBags = totalBags

            self.prices = prices

            self.previousShipmentId = previousShipmentId

            self.paymentMode = paymentMode

            self.estimatedSlaTime = estimatedSlaTime

            self.shipmentStatus = shipmentStatus

            self.orderingChannnel = orderingChannnel

            self.canProcess = canProcess

            self.fulfillingStore = fulfillingStore

            self.bags = bags

            self.customerNote = customerNote

            self.shipmentCreatedAt = shipmentCreatedAt

            self.user = user

            self.shipmentId = shipmentId

            self.channel = channel

            self.paymentMethods = paymentMethods

            self.statusCreatedAt = statusCreatedAt

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode(ShipmentItemMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryAddress = try container.decode(PlatformDeliveryAddress.self, forKey: .deliveryAddress)

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
                orderDate = try container.decode(String.self, forKey: .orderDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceId = try container.decode(String.self, forKey: .invoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            totalBags = try container.decode(Int.self, forKey: .totalBags)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                previousShipmentId = try container.decode(String.self, forKey: .previousShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                estimatedSlaTime = try container.decode(String.self, forKey: .estimatedSlaTime)

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
                orderingChannnel = try container.decode(String.self, forKey: .orderingChannnel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canProcess = try container.decode(Bool.self, forKey: .canProcess)

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
                bags = try container.decode([BagUnit].self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerNote = try container.decode(String.self, forKey: .customerNote)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

            do {
                user = try container.decode(UserDataInfo.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channel = try container.decode(ShipmentListingChannel.self, forKey: .channel)

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
                statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encode(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encode(previousShipmentId, forKey: .previousShipmentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(estimatedSlaTime, forKey: .estimatedSlaTime)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(orderingChannnel, forKey: .orderingChannnel)

            try? container.encodeIfPresent(canProcess, forKey: .canProcess)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(customerNote, forKey: .customerNote)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
