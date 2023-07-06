

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var shippingAddress: OrderUser

        public var bags: [AffiliateBag]

        public var payment: [String: Any]?

        public var orderValue: Double

        public var deliveryCharges: Double

        public var items: [String: Any]

        public var codCharges: Double

        public var shipment: ShipmentData?

        public var billingAddress: OrderUser

        public var affiliateOrderId: String?

        public var orderPriority: OrderPriority?

        public var paymentMode: String

        public var user: UserData

        public var discount: Double

        public var coupon: String?

        public enum CodingKeys: String, CodingKey {
            case shippingAddress = "shipping_address"

            case bags

            case payment

            case orderValue = "order_value"

            case deliveryCharges = "delivery_charges"

            case items

            case codCharges = "cod_charges"

            case shipment

            case billingAddress = "billing_address"

            case affiliateOrderId = "affiliate_order_id"

            case orderPriority = "order_priority"

            case paymentMode = "payment_mode"

            case user

            case discount

            case coupon
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.shippingAddress = shippingAddress

            self.bags = bags

            self.payment = payment

            self.orderValue = orderValue

            self.deliveryCharges = deliveryCharges

            self.items = items

            self.codCharges = codCharges

            self.shipment = shipment

            self.billingAddress = billingAddress

            self.affiliateOrderId = affiliateOrderId

            self.orderPriority = orderPriority

            self.paymentMode = paymentMode

            self.user = user

            self.discount = discount

            self.coupon = coupon
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            items = try container.decode([String: Any].self, forKey: .items)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            user = try container.decode(UserData.self, forKey: .user)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encode(coupon, forKey: .coupon)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var shippingAddress: OrderUser

        public var bags: [AffiliateBag]

        public var payment: [String: Any]?

        public var orderValue: Double

        public var deliveryCharges: Double

        public var items: [String: Any]

        public var codCharges: Double

        public var shipment: ShipmentData?

        public var billingAddress: OrderUser

        public var affiliateOrderId: String?

        public var orderPriority: OrderPriority?

        public var paymentMode: String

        public var user: UserData

        public var discount: Double

        public var coupon: String?

        public enum CodingKeys: String, CodingKey {
            case shippingAddress = "shipping_address"

            case bags

            case payment

            case orderValue = "order_value"

            case deliveryCharges = "delivery_charges"

            case items

            case codCharges = "cod_charges"

            case shipment

            case billingAddress = "billing_address"

            case affiliateOrderId = "affiliate_order_id"

            case orderPriority = "order_priority"

            case paymentMode = "payment_mode"

            case user

            case discount

            case coupon
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.shippingAddress = shippingAddress

            self.bags = bags

            self.payment = payment

            self.orderValue = orderValue

            self.deliveryCharges = deliveryCharges

            self.items = items

            self.codCharges = codCharges

            self.shipment = shipment

            self.billingAddress = billingAddress

            self.affiliateOrderId = affiliateOrderId

            self.orderPriority = orderPriority

            self.paymentMode = paymentMode

            self.user = user

            self.discount = discount

            self.coupon = coupon
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            items = try container.decode([String: Any].self, forKey: .items)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            user = try container.decode(UserData.self, forKey: .user)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encode(coupon, forKey: .coupon)
        }
    }
}
