

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentItem
         Used By: Order
     */

    class ShipmentItem: Codable {
        public var channel: ShipmentListingChannel?

        public var deliveryAddress: PlatformDeliveryAddress?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var orderingChannnel: String?

        public var shipmentCreatedAt: String

        public var displayName: String?

        public var invoiceId: String?

        public var prices: Prices?

        public var estimatedSlaTime: String?

        public var customerNote: String?

        public var previousShipmentId: String?

        public var canProcess: Bool?

        public var shipmentStatus: ShipmentStatus?

        public var totalBags: Int

        public var user: UserDataInfo?

        public var shipmentId: String?

        public var paymentMode: String?

        public var lockStatus: Bool?

        public var orderDate: String?

        public var orderId: String

        public var meta: ShipmentItemMeta?

        public var bags: [BagUnit]?

        public var statusCreatedAt: String?

        public var paymentMethods: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case channel

            case deliveryAddress = "delivery_address"

            case fulfillingStore = "fulfilling_store"

            case orderingChannnel = "ordering_channnel"

            case shipmentCreatedAt = "shipment_created_at"

            case displayName = "display_name"

            case invoiceId = "invoice_id"

            case prices

            case estimatedSlaTime = "estimated_sla_time"

            case customerNote = "customer_note"

            case previousShipmentId = "previous_shipment_id"

            case canProcess = "can_process"

            case shipmentStatus = "shipment_status"

            case totalBags = "total_bags"

            case user

            case shipmentId = "shipment_id"

            case paymentMode = "payment_mode"

            case lockStatus = "lock_status"

            case orderDate = "order_date"

            case orderId = "order_id"

            case meta

            case bags

            case statusCreatedAt = "status_created_at"

            case paymentMethods = "payment_methods"
        }

        public init(bags: [BagUnit]? = nil, canProcess: Bool? = nil, channel: ShipmentListingChannel? = nil, customerNote: String? = nil, deliveryAddress: PlatformDeliveryAddress? = nil, displayName: String? = nil, estimatedSlaTime: String? = nil, fulfillingStore: ShipmentItemFulFillingStore? = nil, invoiceId: String? = nil, lockStatus: Bool? = nil, meta: ShipmentItemMeta? = nil, orderingChannnel: String? = nil, orderDate: String? = nil, orderId: String, paymentMethods: [String: Any]? = nil, paymentMode: String? = nil, previousShipmentId: String? = nil, prices: Prices? = nil, shipmentCreatedAt: String, shipmentId: String? = nil, shipmentStatus: ShipmentStatus? = nil, statusCreatedAt: String? = nil, totalBags: Int, user: UserDataInfo? = nil) {
            self.channel = channel

            self.deliveryAddress = deliveryAddress

            self.fulfillingStore = fulfillingStore

            self.orderingChannnel = orderingChannnel

            self.shipmentCreatedAt = shipmentCreatedAt

            self.displayName = displayName

            self.invoiceId = invoiceId

            self.prices = prices

            self.estimatedSlaTime = estimatedSlaTime

            self.customerNote = customerNote

            self.previousShipmentId = previousShipmentId

            self.canProcess = canProcess

            self.shipmentStatus = shipmentStatus

            self.totalBags = totalBags

            self.user = user

            self.shipmentId = shipmentId

            self.paymentMode = paymentMode

            self.lockStatus = lockStatus

            self.orderDate = orderDate

            self.orderId = orderId

            self.meta = meta

            self.bags = bags

            self.statusCreatedAt = statusCreatedAt

            self.paymentMethods = paymentMethods
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                channel = try container.decode(ShipmentListingChannel.self, forKey: .channel)

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
                fulfillingStore = try container.decode(ShipmentItemFulFillingStore.self, forKey: .fulfillingStore)

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

            shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

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

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

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
                customerNote = try container.decode(String.self, forKey: .customerNote)

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
                canProcess = try container.decode(Bool.self, forKey: .canProcess)

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

            totalBags = try container.decode(Int.self, forKey: .totalBags)

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
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

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

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                meta = try container.decode(ShipmentItemMeta.self, forKey: .meta)

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
                statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)

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

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(orderingChannnel, forKey: .orderingChannnel)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(estimatedSlaTime, forKey: .estimatedSlaTime)

            try? container.encodeIfPresent(customerNote, forKey: .customerNote)

            try? container.encode(previousShipmentId, forKey: .previousShipmentId)

            try? container.encodeIfPresent(canProcess, forKey: .canProcess)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentItem
         Used By: Order
     */

    class ShipmentItem: Codable {
        public var channel: ShipmentListingChannel?

        public var deliveryAddress: PlatformDeliveryAddress?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var orderingChannnel: String?

        public var shipmentCreatedAt: String

        public var displayName: String?

        public var invoiceId: String?

        public var prices: Prices?

        public var estimatedSlaTime: String?

        public var customerNote: String?

        public var previousShipmentId: String?

        public var canProcess: Bool?

        public var shipmentStatus: ShipmentStatus?

        public var totalBags: Int

        public var user: UserDataInfo?

        public var shipmentId: String?

        public var paymentMode: String?

        public var lockStatus: Bool?

        public var orderDate: String?

        public var orderId: String

        public var meta: ShipmentItemMeta?

        public var bags: [BagUnit]?

        public var statusCreatedAt: String?

        public var paymentMethods: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case channel

            case deliveryAddress = "delivery_address"

            case fulfillingStore = "fulfilling_store"

            case orderingChannnel = "ordering_channnel"

            case shipmentCreatedAt = "shipment_created_at"

            case displayName = "display_name"

            case invoiceId = "invoice_id"

            case prices

            case estimatedSlaTime = "estimated_sla_time"

            case customerNote = "customer_note"

            case previousShipmentId = "previous_shipment_id"

            case canProcess = "can_process"

            case shipmentStatus = "shipment_status"

            case totalBags = "total_bags"

            case user

            case shipmentId = "shipment_id"

            case paymentMode = "payment_mode"

            case lockStatus = "lock_status"

            case orderDate = "order_date"

            case orderId = "order_id"

            case meta

            case bags

            case statusCreatedAt = "status_created_at"

            case paymentMethods = "payment_methods"
        }

        public init(bags: [BagUnit]? = nil, canProcess: Bool? = nil, channel: ShipmentListingChannel? = nil, customerNote: String? = nil, deliveryAddress: PlatformDeliveryAddress? = nil, displayName: String? = nil, estimatedSlaTime: String? = nil, fulfillingStore: ShipmentItemFulFillingStore? = nil, invoiceId: String? = nil, lockStatus: Bool? = nil, meta: ShipmentItemMeta? = nil, orderingChannnel: String? = nil, orderDate: String? = nil, orderId: String, paymentMethods: [String: Any]? = nil, paymentMode: String? = nil, previousShipmentId: String? = nil, prices: Prices? = nil, shipmentCreatedAt: String, shipmentId: String? = nil, shipmentStatus: ShipmentStatus? = nil, statusCreatedAt: String? = nil, totalBags: Int, user: UserDataInfo? = nil) {
            self.channel = channel

            self.deliveryAddress = deliveryAddress

            self.fulfillingStore = fulfillingStore

            self.orderingChannnel = orderingChannnel

            self.shipmentCreatedAt = shipmentCreatedAt

            self.displayName = displayName

            self.invoiceId = invoiceId

            self.prices = prices

            self.estimatedSlaTime = estimatedSlaTime

            self.customerNote = customerNote

            self.previousShipmentId = previousShipmentId

            self.canProcess = canProcess

            self.shipmentStatus = shipmentStatus

            self.totalBags = totalBags

            self.user = user

            self.shipmentId = shipmentId

            self.paymentMode = paymentMode

            self.lockStatus = lockStatus

            self.orderDate = orderDate

            self.orderId = orderId

            self.meta = meta

            self.bags = bags

            self.statusCreatedAt = statusCreatedAt

            self.paymentMethods = paymentMethods
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                channel = try container.decode(ShipmentListingChannel.self, forKey: .channel)

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
                fulfillingStore = try container.decode(ShipmentItemFulFillingStore.self, forKey: .fulfillingStore)

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

            shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

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

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

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
                customerNote = try container.decode(String.self, forKey: .customerNote)

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
                canProcess = try container.decode(Bool.self, forKey: .canProcess)

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

            totalBags = try container.decode(Int.self, forKey: .totalBags)

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
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

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

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                meta = try container.decode(ShipmentItemMeta.self, forKey: .meta)

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
                statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)

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

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(orderingChannnel, forKey: .orderingChannnel)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(estimatedSlaTime, forKey: .estimatedSlaTime)

            try? container.encodeIfPresent(customerNote, forKey: .customerNote)

            try? container.encode(previousShipmentId, forKey: .previousShipmentId)

            try? container.encodeIfPresent(canProcess, forKey: .canProcess)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
        }
    }
}
