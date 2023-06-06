

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentItem
         Used By: Order
     */

    class ShipmentItem: Codable {
        public var lockStatus: Bool?

        public var deliveryAddress: PlatformDeliveryAddress?

        public var bags: [BagUnit]?

        public var paymentMethods: [String: Any]?

        public var channel: ShipmentListingChannel?

        public var user: UserDataInfo?

        public var shipmentId: String?

        public var shipmentStatus: ShipmentStatus?

        public var statusCreatedAt: String?

        public var prices: Prices?

        public var paymentMode: String?

        public var canProcess: Bool?

        public var previousShipmentId: String?

        public var orderId: String

        public var estimatedSlaTime: String?

        public var totalBags: Int

        public var customerNote: String?

        public var displayName: String?

        public var meta: ShipmentItemMeta?

        public var shipmentCreatedAt: String

        public var orderingChannnel: String?

        public var orderDate: String?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var invoiceId: String?

        public enum CodingKeys: String, CodingKey {
            case lockStatus = "lock_status"

            case deliveryAddress = "delivery_address"

            case bags

            case paymentMethods = "payment_methods"

            case channel

            case user

            case shipmentId = "shipment_id"

            case shipmentStatus = "shipment_status"

            case statusCreatedAt = "status_created_at"

            case prices

            case paymentMode = "payment_mode"

            case canProcess = "can_process"

            case previousShipmentId = "previous_shipment_id"

            case orderId = "order_id"

            case estimatedSlaTime = "estimated_sla_time"

            case totalBags = "total_bags"

            case customerNote = "customer_note"

            case displayName = "display_name"

            case meta

            case shipmentCreatedAt = "shipment_created_at"

            case orderingChannnel = "ordering_channnel"

            case orderDate = "order_date"

            case fulfillingStore = "fulfilling_store"

            case invoiceId = "invoice_id"
        }

        public init(bags: [BagUnit]? = nil, canProcess: Bool? = nil, channel: ShipmentListingChannel? = nil, customerNote: String? = nil, deliveryAddress: PlatformDeliveryAddress? = nil, displayName: String? = nil, estimatedSlaTime: String? = nil, fulfillingStore: ShipmentItemFulFillingStore? = nil, invoiceId: String? = nil, lockStatus: Bool? = nil, meta: ShipmentItemMeta? = nil, orderingChannnel: String? = nil, orderDate: String? = nil, orderId: String, paymentMethods: [String: Any]? = nil, paymentMode: String? = nil, previousShipmentId: String? = nil, prices: Prices? = nil, shipmentCreatedAt: String, shipmentId: String? = nil, shipmentStatus: ShipmentStatus? = nil, statusCreatedAt: String? = nil, totalBags: Int, user: UserDataInfo? = nil) {
            self.lockStatus = lockStatus

            self.deliveryAddress = deliveryAddress

            self.bags = bags

            self.paymentMethods = paymentMethods

            self.channel = channel

            self.user = user

            self.shipmentId = shipmentId

            self.shipmentStatus = shipmentStatus

            self.statusCreatedAt = statusCreatedAt

            self.prices = prices

            self.paymentMode = paymentMode

            self.canProcess = canProcess

            self.previousShipmentId = previousShipmentId

            self.orderId = orderId

            self.estimatedSlaTime = estimatedSlaTime

            self.totalBags = totalBags

            self.customerNote = customerNote

            self.displayName = displayName

            self.meta = meta

            self.shipmentCreatedAt = shipmentCreatedAt

            self.orderingChannnel = orderingChannnel

            self.orderDate = orderDate

            self.fulfillingStore = fulfillingStore

            self.invoiceId = invoiceId
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
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

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
                shipmentStatus = try container.decode(ShipmentStatus.self, forKey: .shipmentStatus)

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
                prices = try container.decode(Prices.self, forKey: .prices)

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
                canProcess = try container.decode(Bool.self, forKey: .canProcess)

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

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                estimatedSlaTime = try container.decode(String.self, forKey: .estimatedSlaTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalBags = try container.decode(Int.self, forKey: .totalBags)

            do {
                customerNote = try container.decode(String.self, forKey: .customerNote)

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
                meta = try container.decode(ShipmentItemMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

            do {
                orderingChannnel = try container.decode(String.self, forKey: .orderingChannnel)

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
                fulfillingStore = try container.decode(ShipmentItemFulFillingStore.self, forKey: .fulfillingStore)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(canProcess, forKey: .canProcess)

            try? container.encode(previousShipmentId, forKey: .previousShipmentId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(estimatedSlaTime, forKey: .estimatedSlaTime)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(customerNote, forKey: .customerNote)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(orderingChannnel, forKey: .orderingChannnel)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encode(invoiceId, forKey: .invoiceId)
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

        public var deliveryAddress: PlatformDeliveryAddress?

        public var bags: [BagUnit]?

        public var paymentMethods: [String: Any]?

        public var channel: ShipmentListingChannel?

        public var user: UserDataInfo?

        public var shipmentId: String?

        public var shipmentStatus: ShipmentStatus?

        public var statusCreatedAt: String?

        public var prices: Prices?

        public var paymentMode: String?

        public var canProcess: Bool?

        public var previousShipmentId: String?

        public var orderId: String

        public var estimatedSlaTime: String?

        public var totalBags: Int

        public var customerNote: String?

        public var displayName: String?

        public var meta: ShipmentItemMeta?

        public var shipmentCreatedAt: String

        public var orderingChannnel: String?

        public var orderDate: String?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var invoiceId: String?

        public enum CodingKeys: String, CodingKey {
            case lockStatus = "lock_status"

            case deliveryAddress = "delivery_address"

            case bags

            case paymentMethods = "payment_methods"

            case channel

            case user

            case shipmentId = "shipment_id"

            case shipmentStatus = "shipment_status"

            case statusCreatedAt = "status_created_at"

            case prices

            case paymentMode = "payment_mode"

            case canProcess = "can_process"

            case previousShipmentId = "previous_shipment_id"

            case orderId = "order_id"

            case estimatedSlaTime = "estimated_sla_time"

            case totalBags = "total_bags"

            case customerNote = "customer_note"

            case displayName = "display_name"

            case meta

            case shipmentCreatedAt = "shipment_created_at"

            case orderingChannnel = "ordering_channnel"

            case orderDate = "order_date"

            case fulfillingStore = "fulfilling_store"

            case invoiceId = "invoice_id"
        }

        public init(bags: [BagUnit]? = nil, canProcess: Bool? = nil, channel: ShipmentListingChannel? = nil, customerNote: String? = nil, deliveryAddress: PlatformDeliveryAddress? = nil, displayName: String? = nil, estimatedSlaTime: String? = nil, fulfillingStore: ShipmentItemFulFillingStore? = nil, invoiceId: String? = nil, lockStatus: Bool? = nil, meta: ShipmentItemMeta? = nil, orderingChannnel: String? = nil, orderDate: String? = nil, orderId: String, paymentMethods: [String: Any]? = nil, paymentMode: String? = nil, previousShipmentId: String? = nil, prices: Prices? = nil, shipmentCreatedAt: String, shipmentId: String? = nil, shipmentStatus: ShipmentStatus? = nil, statusCreatedAt: String? = nil, totalBags: Int, user: UserDataInfo? = nil) {
            self.lockStatus = lockStatus

            self.deliveryAddress = deliveryAddress

            self.bags = bags

            self.paymentMethods = paymentMethods

            self.channel = channel

            self.user = user

            self.shipmentId = shipmentId

            self.shipmentStatus = shipmentStatus

            self.statusCreatedAt = statusCreatedAt

            self.prices = prices

            self.paymentMode = paymentMode

            self.canProcess = canProcess

            self.previousShipmentId = previousShipmentId

            self.orderId = orderId

            self.estimatedSlaTime = estimatedSlaTime

            self.totalBags = totalBags

            self.customerNote = customerNote

            self.displayName = displayName

            self.meta = meta

            self.shipmentCreatedAt = shipmentCreatedAt

            self.orderingChannnel = orderingChannnel

            self.orderDate = orderDate

            self.fulfillingStore = fulfillingStore

            self.invoiceId = invoiceId
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
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

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
                shipmentStatus = try container.decode(ShipmentStatus.self, forKey: .shipmentStatus)

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
                prices = try container.decode(Prices.self, forKey: .prices)

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
                canProcess = try container.decode(Bool.self, forKey: .canProcess)

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

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                estimatedSlaTime = try container.decode(String.self, forKey: .estimatedSlaTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalBags = try container.decode(Int.self, forKey: .totalBags)

            do {
                customerNote = try container.decode(String.self, forKey: .customerNote)

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
                meta = try container.decode(ShipmentItemMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

            do {
                orderingChannnel = try container.decode(String.self, forKey: .orderingChannnel)

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
                fulfillingStore = try container.decode(ShipmentItemFulFillingStore.self, forKey: .fulfillingStore)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(canProcess, forKey: .canProcess)

            try? container.encode(previousShipmentId, forKey: .previousShipmentId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(estimatedSlaTime, forKey: .estimatedSlaTime)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(customerNote, forKey: .customerNote)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(orderingChannnel, forKey: .orderingChannnel)

            try? container.encodeIfPresent(orderDate, forKey: .orderDate)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encode(invoiceId, forKey: .invoiceId)
        }
    }
}
