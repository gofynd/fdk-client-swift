

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var coupon: String?

        public var paymentMode: String

        public var billingAddress: OrderUser

        public var orderValue: Double

        public var shipment: ShipmentData?

        public var discount: Double

        public var affiliateOrderId: String?

        public var user: UserData

        public var payment: [String: Any]?

        public var orderPriority: OrderPriority?

        public var codCharges: Double

        public var shippingAddress: OrderUser

        public var deliveryCharges: Double

        public var bags: [AffiliateBag]

        public var items: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case coupon

            case paymentMode = "payment_mode"

            case billingAddress = "billing_address"

            case orderValue = "order_value"

            case shipment

            case discount

            case affiliateOrderId = "affiliate_order_id"

            case user

            case payment

            case orderPriority = "order_priority"

            case codCharges = "cod_charges"

            case shippingAddress = "shipping_address"

            case deliveryCharges = "delivery_charges"

            case bags

            case items
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.coupon = coupon

            self.paymentMode = paymentMode

            self.billingAddress = billingAddress

            self.orderValue = orderValue

            self.shipment = shipment

            self.discount = discount

            self.affiliateOrderId = affiliateOrderId

            self.user = user

            self.payment = payment

            self.orderPriority = orderPriority

            self.codCharges = codCharges

            self.shippingAddress = shippingAddress

            self.deliveryCharges = deliveryCharges

            self.bags = bags

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode(UserData.self, forKey: .user)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

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

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            items = try container.decode([String: Any].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(bags, forKey: .bags)

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
        public var coupon: String?

        public var paymentMode: String

        public var billingAddress: OrderUser

        public var orderValue: Double

        public var shipment: ShipmentData?

        public var discount: Double

        public var affiliateOrderId: String?

        public var user: UserData

        public var payment: [String: Any]?

        public var orderPriority: OrderPriority?

        public var codCharges: Double

        public var shippingAddress: OrderUser

        public var deliveryCharges: Double

        public var bags: [AffiliateBag]

        public var items: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case coupon

            case paymentMode = "payment_mode"

            case billingAddress = "billing_address"

            case orderValue = "order_value"

            case shipment

            case discount

            case affiliateOrderId = "affiliate_order_id"

            case user

            case payment

            case orderPriority = "order_priority"

            case codCharges = "cod_charges"

            case shippingAddress = "shipping_address"

            case deliveryCharges = "delivery_charges"

            case bags

            case items
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.coupon = coupon

            self.paymentMode = paymentMode

            self.billingAddress = billingAddress

            self.orderValue = orderValue

            self.shipment = shipment

            self.discount = discount

            self.affiliateOrderId = affiliateOrderId

            self.user = user

            self.payment = payment

            self.orderPriority = orderPriority

            self.codCharges = codCharges

            self.shippingAddress = shippingAddress

            self.deliveryCharges = deliveryCharges

            self.bags = bags

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode(UserData.self, forKey: .user)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

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

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            items = try container.decode([String: Any].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
