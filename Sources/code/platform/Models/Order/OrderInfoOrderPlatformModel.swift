

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var shippingAddress: OrderUser

        public var user: UserData

        public var items: [String: Any]

        public var deliveryCharges: Double

        public var orderPriority: OrderPriority?

        public var billingAddress: OrderUser

        public var affiliateOrderId: String?

        public var payment: [String: Any]?

        public var shipment: ShipmentData?

        public var coupon: String?

        public var bags: [AffiliateBag]

        public var paymentMode: String

        public var discount: Double

        public var codCharges: Double

        public var orderValue: Double

        public enum CodingKeys: String, CodingKey {
            case shippingAddress = "shipping_address"

            case user

            case items

            case deliveryCharges = "delivery_charges"

            case orderPriority = "order_priority"

            case billingAddress = "billing_address"

            case affiliateOrderId = "affiliate_order_id"

            case payment

            case shipment

            case coupon

            case bags

            case paymentMode = "payment_mode"

            case discount

            case codCharges = "cod_charges"

            case orderValue = "order_value"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.shippingAddress = shippingAddress

            self.user = user

            self.items = items

            self.deliveryCharges = deliveryCharges

            self.orderPriority = orderPriority

            self.billingAddress = billingAddress

            self.affiliateOrderId = affiliateOrderId

            self.payment = payment

            self.shipment = shipment

            self.coupon = coupon

            self.bags = bags

            self.paymentMode = paymentMode

            self.discount = discount

            self.codCharges = codCharges

            self.orderValue = orderValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            user = try container.decode(UserData.self, forKey: .user)

            items = try container.decode([String: Any].self, forKey: .items)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

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
                payment = try container.decode([String: Any].self, forKey: .payment)

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

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            discount = try container.decode(Double.self, forKey: .discount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            orderValue = try container.decode(Double.self, forKey: .orderValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)
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

        public var user: UserData

        public var items: [String: Any]

        public var deliveryCharges: Double

        public var orderPriority: OrderPriority?

        public var billingAddress: OrderUser

        public var affiliateOrderId: String?

        public var payment: [String: Any]?

        public var shipment: ShipmentData?

        public var coupon: String?

        public var bags: [AffiliateBag]

        public var paymentMode: String

        public var discount: Double

        public var codCharges: Double

        public var orderValue: Double

        public enum CodingKeys: String, CodingKey {
            case shippingAddress = "shipping_address"

            case user

            case items

            case deliveryCharges = "delivery_charges"

            case orderPriority = "order_priority"

            case billingAddress = "billing_address"

            case affiliateOrderId = "affiliate_order_id"

            case payment

            case shipment

            case coupon

            case bags

            case paymentMode = "payment_mode"

            case discount

            case codCharges = "cod_charges"

            case orderValue = "order_value"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.shippingAddress = shippingAddress

            self.user = user

            self.items = items

            self.deliveryCharges = deliveryCharges

            self.orderPriority = orderPriority

            self.billingAddress = billingAddress

            self.affiliateOrderId = affiliateOrderId

            self.payment = payment

            self.shipment = shipment

            self.coupon = coupon

            self.bags = bags

            self.paymentMode = paymentMode

            self.discount = discount

            self.codCharges = codCharges

            self.orderValue = orderValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            user = try container.decode(UserData.self, forKey: .user)

            items = try container.decode([String: Any].self, forKey: .items)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

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
                payment = try container.decode([String: Any].self, forKey: .payment)

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

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            discount = try container.decode(Double.self, forKey: .discount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            orderValue = try container.decode(Double.self, forKey: .orderValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)
        }
    }
}
