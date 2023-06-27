

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var shipment: ShipmentData?

        public var orderPriority: OrderPriority?

        public var paymentMode: String

        public var orderValue: Double

        public var user: UserData

        public var deliveryCharges: Double

        public var billingAddress: OrderUser

        public var bags: [AffiliateBag]

        public var codCharges: Double

        public var shippingAddress: OrderUser

        public var payment: [String: Any]?

        public var affiliateOrderId: String?

        public var discount: Double

        public var coupon: String?

        public var items: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case shipment

            case orderPriority = "order_priority"

            case paymentMode = "payment_mode"

            case orderValue = "order_value"

            case user

            case deliveryCharges = "delivery_charges"

            case billingAddress = "billing_address"

            case bags

            case codCharges = "cod_charges"

            case shippingAddress = "shipping_address"

            case payment

            case affiliateOrderId = "affiliate_order_id"

            case discount

            case coupon

            case items
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.shipment = shipment

            self.orderPriority = orderPriority

            self.paymentMode = paymentMode

            self.orderValue = orderValue

            self.user = user

            self.deliveryCharges = deliveryCharges

            self.billingAddress = billingAddress

            self.bags = bags

            self.codCharges = codCharges

            self.shippingAddress = shippingAddress

            self.payment = payment

            self.affiliateOrderId = affiliateOrderId

            self.discount = discount

            self.coupon = coupon

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

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

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            user = try container.decode(UserData.self, forKey: .user)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([String: Any].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encode(coupon, forKey: .coupon)

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
        public var shipment: ShipmentData?

        public var orderPriority: OrderPriority?

        public var paymentMode: String

        public var orderValue: Double

        public var user: UserData

        public var deliveryCharges: Double

        public var billingAddress: OrderUser

        public var bags: [AffiliateBag]

        public var codCharges: Double

        public var shippingAddress: OrderUser

        public var payment: [String: Any]?

        public var affiliateOrderId: String?

        public var discount: Double

        public var coupon: String?

        public var items: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case shipment

            case orderPriority = "order_priority"

            case paymentMode = "payment_mode"

            case orderValue = "order_value"

            case user

            case deliveryCharges = "delivery_charges"

            case billingAddress = "billing_address"

            case bags

            case codCharges = "cod_charges"

            case shippingAddress = "shipping_address"

            case payment

            case affiliateOrderId = "affiliate_order_id"

            case discount

            case coupon

            case items
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.shipment = shipment

            self.orderPriority = orderPriority

            self.paymentMode = paymentMode

            self.orderValue = orderValue

            self.user = user

            self.deliveryCharges = deliveryCharges

            self.billingAddress = billingAddress

            self.bags = bags

            self.codCharges = codCharges

            self.shippingAddress = shippingAddress

            self.payment = payment

            self.affiliateOrderId = affiliateOrderId

            self.discount = discount

            self.coupon = coupon

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

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

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            user = try container.decode(UserData.self, forKey: .user)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([String: Any].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
