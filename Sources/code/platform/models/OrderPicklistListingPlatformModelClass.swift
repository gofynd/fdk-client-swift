

import Foundation
public extension PlatformClient {
    /*
         Model: OrderPicklistListing
         Used By: Order
     */

    class OrderPicklistListing: Codable {
        public var user: PlatformOrderUserInfo?

        public var deliveryAddress: PlatformDeliveryAddress?

        public var channel: Channel?

        public var fyndstoreEmp: [String: Any]?

        public var orderingStore: [String: Any]?

        public var breakupValues: PlatformBreakupValues?

        public var id: String?

        public var application: PlatformApplication?

        public var shipments: PlatformShipmentDetails?

        public var createdAt: String?

        public var totalShipmentsInOrder: Int?

        public var payments: ItemsPayments?

        public var paymentMethods: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case user

            case deliveryAddress = "delivery_address"

            case channel

            case fyndstoreEmp = "fyndstore_emp"

            case orderingStore = "ordering_store"

            case breakupValues = "breakup_values"

            case id

            case application

            case shipments

            case createdAt = "created_at"

            case totalShipmentsInOrder = "total_shipments_in_order"

            case payments

            case paymentMethods = "payment_methods"
        }

        public init(application: PlatformApplication? = nil, breakupValues: PlatformBreakupValues? = nil, channel: Channel? = nil, createdAt: String? = nil, deliveryAddress: PlatformDeliveryAddress? = nil, fyndstoreEmp: [String: Any]? = nil, id: String? = nil, orderingStore: [String: Any]? = nil, payments: ItemsPayments? = nil, paymentMethods: [String: Any]? = nil, shipments: PlatformShipmentDetails? = nil, totalShipmentsInOrder: Int? = nil, user: PlatformOrderUserInfo? = nil) {
            self.user = user

            self.deliveryAddress = deliveryAddress

            self.channel = channel

            self.fyndstoreEmp = fyndstoreEmp

            self.orderingStore = orderingStore

            self.breakupValues = breakupValues

            self.id = id

            self.application = application

            self.shipments = shipments

            self.createdAt = createdAt

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.payments = payments

            self.paymentMethods = paymentMethods
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                user = try container.decode(PlatformOrderUserInfo.self, forKey: .user)

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
                channel = try container.decode(Channel.self, forKey: .channel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode(PlatformBreakupValues.self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                application = try container.decode(PlatformApplication.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode(PlatformShipmentDetails.self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payments = try container.decode(ItemsPayments.self, forKey: .payments)

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

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
        }
    }
}
