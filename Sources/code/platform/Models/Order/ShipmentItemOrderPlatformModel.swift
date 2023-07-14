

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentItem
         Used By: Order
     */

    class ShipmentItem: Codable {
        public var lockStatus: Bool?

        public var displayName: String?

        public var statusCreatedAt: String?

        public var meta: ShipmentItemMeta?

        public var prices: Prices?

        public var paymentMethods: [String: Any]?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var user: UserDataInfo?

        public var estimatedSlaTime: String?

        public var customerNote: String?

        public var deliveryAddress: PlatformDeliveryAddress?

        public var bags: [BagUnit]?

        public var paymentMode: String?

        public var previousShipmentId: String?

        public var orderingChannnel: String?

        public var canProcess: Bool?

        public var shipmentCreatedAt: String

        public var invoiceId: String?

        public var totalBags: Int

        public var shipmentId: String?

        public var channel: ShipmentListingChannel?

        public var orderDate: String?

        public var shipmentStatus: ShipmentStatus?

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case lockStatus = "lock_status"

            case displayName = "display_name"

            case statusCreatedAt = "status_created_at"

            case meta

            case prices

            case paymentMethods = "payment_methods"

            case fulfillingStore = "fulfilling_store"

            case user

            case estimatedSlaTime = "estimated_sla_time"

            case customerNote = "customer_note"

            case deliveryAddress = "delivery_address"

            case bags

            case paymentMode = "payment_mode"

            case previousShipmentId = "previous_shipment_id"

            case orderingChannnel = "ordering_channnel"

            case canProcess = "can_process"

            case shipmentCreatedAt = "shipment_created_at"

            case invoiceId = "invoice_id"

            case totalBags = "total_bags"

            case shipmentId = "shipment_id"

            case channel

            case orderDate = "order_date"

            case shipmentStatus = "shipment_status"

            case orderId = "order_id"
        }

        public init(bags: [BagUnit]? = nil, canProcess: Bool? = nil, channel: ShipmentListingChannel? = nil, customerNote: String? = nil, deliveryAddress: PlatformDeliveryAddress? = nil, displayName: String? = nil, estimatedSlaTime: String? = nil, fulfillingStore: ShipmentItemFulFillingStore? = nil, invoiceId: String? = nil, lockStatus: Bool? = nil, meta: ShipmentItemMeta? = nil, orderingChannnel: String? = nil, orderDate: String? = nil, orderId: String, paymentMethods: [String: Any]? = nil, paymentMode: String? = nil, previousShipmentId: String? = nil, prices: Prices? = nil, shipmentCreatedAt: String, shipmentId: String? = nil, shipmentStatus: ShipmentStatus? = nil, statusCreatedAt: String? = nil, totalBags: Int, user: UserDataInfo? = nil) {
            self.lockStatus = lockStatus

            self.displayName = displayName

            self.statusCreatedAt = statusCreatedAt

            self.meta = meta

            self.prices = prices

            self.paymentMethods = paymentMethods

            self.fulfillingStore = fulfillingStore

            self.user = user

            self.estimatedSlaTime = estimatedSlaTime

            self.customerNote = customerNote

            self.deliveryAddress = deliveryAddress

            self.bags = bags

            self.paymentMode = paymentMode

            self.previousShipmentId = previousShipmentId

            self.orderingChannnel = orderingChannnel

            self.canProcess = canProcess

            self.shipmentCreatedAt = shipmentCreatedAt

            self.invoiceId = invoiceId

            self.totalBags = totalBags

            self.shipmentId = shipmentId

            self.channel = channel

            self.orderDate = orderDate

            self.shipmentStatus = shipmentStatus

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

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

            do {
                statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(ShipmentItemMeta.self, forKey: .meta)

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
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

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
                user = try container.decode(UserDataInfo.self, forKey: .user)

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
                deliveryAddress = try container.decode(PlatformDeliveryAddress.self, forKey: .deliveryAddress)

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
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

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

            shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

            do {
                invoiceId = try container.decode(String.self, forKey: .invoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalBags = try container.decode(Int.self, forKey: .totalBags)

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
                orderDate = try container.decode(String.self, forKey: .orderDate)

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

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encode(estimatedSlaTime, forKey: .estimatedSlaTime)

            try? container.encodeIfPresent(customerNote, forKey: .customerNote)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(previousShipmentId, forKey: .previousShipmentId)

            try? container.encodeIfPresent(orderingChannnel, forKey: .orderingChannnel)

            try? container.encodeIfPresent(canProcess, forKey: .canProcess)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encode(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentItem
         Used By: Order
     */

    class ShipmentItem: Codable {
        public var lockStatus: Bool?

        public var displayName: String?

        public var statusCreatedAt: String?

        public var meta: ShipmentItemMeta?

        public var prices: Prices?

        public var paymentMethods: [String: Any]?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var user: UserDataInfo?

        public var estimatedSlaTime: String?

        public var customerNote: String?

        public var deliveryAddress: PlatformDeliveryAddress?

        public var bags: [BagUnit]?

        public var paymentMode: String?

        public var previousShipmentId: String?

        public var orderingChannnel: String?

        public var canProcess: Bool?

        public var shipmentCreatedAt: String

        public var invoiceId: String?

        public var totalBags: Int

        public var shipmentId: String?

        public var channel: ShipmentListingChannel?

        public var orderDate: String?

        public var shipmentStatus: ShipmentStatus?

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case lockStatus = "lock_status"

            case displayName = "display_name"

            case statusCreatedAt = "status_created_at"

            case meta

            case prices

            case paymentMethods = "payment_methods"

            case fulfillingStore = "fulfilling_store"

            case user

            case estimatedSlaTime = "estimated_sla_time"

            case customerNote = "customer_note"

            case deliveryAddress = "delivery_address"

            case bags

            case paymentMode = "payment_mode"

            case previousShipmentId = "previous_shipment_id"

            case orderingChannnel = "ordering_channnel"

            case canProcess = "can_process"

            case shipmentCreatedAt = "shipment_created_at"

            case invoiceId = "invoice_id"

            case totalBags = "total_bags"

            case shipmentId = "shipment_id"

            case channel

            case orderDate = "order_date"

            case shipmentStatus = "shipment_status"

            case orderId = "order_id"
        }

        public init(bags: [BagUnit]? = nil, canProcess: Bool? = nil, channel: ShipmentListingChannel? = nil, customerNote: String? = nil, deliveryAddress: PlatformDeliveryAddress? = nil, displayName: String? = nil, estimatedSlaTime: String? = nil, fulfillingStore: ShipmentItemFulFillingStore? = nil, invoiceId: String? = nil, lockStatus: Bool? = nil, meta: ShipmentItemMeta? = nil, orderingChannnel: String? = nil, orderDate: String? = nil, orderId: String, paymentMethods: [String: Any]? = nil, paymentMode: String? = nil, previousShipmentId: String? = nil, prices: Prices? = nil, shipmentCreatedAt: String, shipmentId: String? = nil, shipmentStatus: ShipmentStatus? = nil, statusCreatedAt: String? = nil, totalBags: Int, user: UserDataInfo? = nil) {
            self.lockStatus = lockStatus

            self.displayName = displayName

            self.statusCreatedAt = statusCreatedAt

            self.meta = meta

            self.prices = prices

            self.paymentMethods = paymentMethods

            self.fulfillingStore = fulfillingStore

            self.user = user

            self.estimatedSlaTime = estimatedSlaTime

            self.customerNote = customerNote

            self.deliveryAddress = deliveryAddress

            self.bags = bags

            self.paymentMode = paymentMode

            self.previousShipmentId = previousShipmentId

            self.orderingChannnel = orderingChannnel

            self.canProcess = canProcess

            self.shipmentCreatedAt = shipmentCreatedAt

            self.invoiceId = invoiceId

            self.totalBags = totalBags

            self.shipmentId = shipmentId

            self.channel = channel

            self.orderDate = orderDate

            self.shipmentStatus = shipmentStatus

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

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

            do {
                statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(ShipmentItemMeta.self, forKey: .meta)

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
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

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
                user = try container.decode(UserDataInfo.self, forKey: .user)

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
                deliveryAddress = try container.decode(PlatformDeliveryAddress.self, forKey: .deliveryAddress)

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
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

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

            shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

            do {
                invoiceId = try container.decode(String.self, forKey: .invoiceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalBags = try container.decode(Int.self, forKey: .totalBags)

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
                orderDate = try container.decode(String.self, forKey: .orderDate)

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

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encode(estimatedSlaTime, forKey: .estimatedSlaTime)

            try? container.encodeIfPresent(customerNote, forKey: .customerNote)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(previousShipmentId, forKey: .previousShipmentId)

            try? container.encodeIfPresent(orderingChannnel, forKey: .orderingChannnel)

            try? container.encodeIfPresent(canProcess, forKey: .canProcess)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encode(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
