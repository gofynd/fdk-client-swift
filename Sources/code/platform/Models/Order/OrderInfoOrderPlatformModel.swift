

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var discount: Double

        public var user: UserData

        public var orderPriority: OrderPriority?

        public var shipment: ShipmentData?

        public var paymentMode: String

        public var payment: [String: Any]?

        public var orderValue: Double

        public var coupon: String?

        public var shippingAddress: OrderUser

        public var bags: [AffiliateBag]

        public var codCharges: Double

        public var billingAddress: OrderUser

        public var deliveryCharges: Double

        public var affiliateOrderId: String?

        public var items: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case discount

            case user

            case orderPriority = "order_priority"

            case shipment

            case paymentMode = "payment_mode"

            case payment

            case orderValue = "order_value"

            case coupon

            case shippingAddress = "shipping_address"

            case bags

            case codCharges = "cod_charges"

            case billingAddress = "billing_address"

            case deliveryCharges = "delivery_charges"

            case affiliateOrderId = "affiliate_order_id"

            case items
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.discount = discount

            self.user = user

            self.orderPriority = orderPriority

            self.shipment = shipment

            self.paymentMode = paymentMode

            self.payment = payment

            self.orderValue = orderValue

            self.coupon = coupon

            self.shippingAddress = shippingAddress

            self.bags = bags

            self.codCharges = codCharges

            self.billingAddress = billingAddress

            self.deliveryCharges = deliveryCharges

            self.affiliateOrderId = affiliateOrderId

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Double.self, forKey: .discount)

            user = try container.decode(UserData.self, forKey: .user)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([String: Any].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var discount: Double

        public var user: UserData

        public var orderPriority: OrderPriority?

        public var shipment: ShipmentData?

        public var paymentMode: String

        public var payment: [String: Any]?

        public var orderValue: Double

        public var coupon: String?

        public var shippingAddress: OrderUser

        public var bags: [AffiliateBag]

        public var codCharges: Double

        public var billingAddress: OrderUser

        public var deliveryCharges: Double

        public var affiliateOrderId: String?

        public var items: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case discount

            case user

            case orderPriority = "order_priority"

            case shipment

            case paymentMode = "payment_mode"

            case payment

            case orderValue = "order_value"

            case coupon

            case shippingAddress = "shipping_address"

            case bags

            case codCharges = "cod_charges"

            case billingAddress = "billing_address"

            case deliveryCharges = "delivery_charges"

            case affiliateOrderId = "affiliate_order_id"

            case items
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.discount = discount

            self.user = user

            self.orderPriority = orderPriority

            self.shipment = shipment

            self.paymentMode = paymentMode

            self.payment = payment

            self.orderValue = orderValue

            self.coupon = coupon

            self.shippingAddress = shippingAddress

            self.bags = bags

            self.codCharges = codCharges

            self.billingAddress = billingAddress

            self.deliveryCharges = deliveryCharges

            self.affiliateOrderId = affiliateOrderId

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Double.self, forKey: .discount)

            user = try container.decode(UserData.self, forKey: .user)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([String: Any].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
