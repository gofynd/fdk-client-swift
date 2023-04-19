

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var bags: [AffiliateBag]

        public var discount: Double

        public var orderPriority: OrderPriority?

        public var payment: [String: Any]?

        public var shippingAddress: OrderUser

        public var affiliateOrderId: String?

        public var paymentMode: String

        public var shipment: ShipmentData?

        public var coupon: String?

        public var orderValue: Double

        public var billingAddress: OrderUser

        public var user: UserData

        public var codCharges: Double

        public var deliveryCharges: Double

        public var items: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case bags

            case discount

            case orderPriority = "order_priority"

            case payment

            case shippingAddress = "shipping_address"

            case affiliateOrderId = "affiliate_order_id"

            case paymentMode = "payment_mode"

            case shipment

            case coupon

            case orderValue = "order_value"

            case billingAddress = "billing_address"

            case user

            case codCharges = "cod_charges"

            case deliveryCharges = "delivery_charges"

            case items
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.bags = bags

            self.discount = discount

            self.orderPriority = orderPriority

            self.payment = payment

            self.shippingAddress = shippingAddress

            self.affiliateOrderId = affiliateOrderId

            self.paymentMode = paymentMode

            self.shipment = shipment

            self.coupon = coupon

            self.orderValue = orderValue

            self.billingAddress = billingAddress

            self.user = user

            self.codCharges = codCharges

            self.deliveryCharges = deliveryCharges

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            user = try container.decode(UserData.self, forKey: .user)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            items = try container.decode([String: Any].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

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
        public var bags: [AffiliateBag]

        public var discount: Double

        public var orderPriority: OrderPriority?

        public var payment: [String: Any]?

        public var shippingAddress: OrderUser

        public var affiliateOrderId: String?

        public var paymentMode: String

        public var shipment: ShipmentData?

        public var coupon: String?

        public var orderValue: Double

        public var billingAddress: OrderUser

        public var user: UserData

        public var codCharges: Double

        public var deliveryCharges: Double

        public var items: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case bags

            case discount

            case orderPriority = "order_priority"

            case payment

            case shippingAddress = "shipping_address"

            case affiliateOrderId = "affiliate_order_id"

            case paymentMode = "payment_mode"

            case shipment

            case coupon

            case orderValue = "order_value"

            case billingAddress = "billing_address"

            case user

            case codCharges = "cod_charges"

            case deliveryCharges = "delivery_charges"

            case items
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.bags = bags

            self.discount = discount

            self.orderPriority = orderPriority

            self.payment = payment

            self.shippingAddress = shippingAddress

            self.affiliateOrderId = affiliateOrderId

            self.paymentMode = paymentMode

            self.shipment = shipment

            self.coupon = coupon

            self.orderValue = orderValue

            self.billingAddress = billingAddress

            self.user = user

            self.codCharges = codCharges

            self.deliveryCharges = deliveryCharges

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            user = try container.decode(UserData.self, forKey: .user)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            items = try container.decode([String: Any].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
