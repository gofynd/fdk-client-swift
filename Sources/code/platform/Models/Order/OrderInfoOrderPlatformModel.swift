

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var payment: [String: Any]?

        public var deliveryCharges: Double

        public var bags: [AffiliateBag]

        public var shipment: ShipmentData?

        public var items: [String: Any]

        public var paymentMode: String

        public var shippingAddress: OrderUser

        public var orderPriority: OrderPriority?

        public var discount: Double

        public var billingAddress: OrderUser

        public var coupon: String?

        public var affiliateOrderId: String?

        public var user: UserData

        public var codCharges: Double

        public var orderValue: Double

        public enum CodingKeys: String, CodingKey {
            case payment

            case deliveryCharges = "delivery_charges"

            case bags

            case shipment

            case items

            case paymentMode = "payment_mode"

            case shippingAddress = "shipping_address"

            case orderPriority = "order_priority"

            case discount

            case billingAddress = "billing_address"

            case coupon

            case affiliateOrderId = "affiliate_order_id"

            case user

            case codCharges = "cod_charges"

            case orderValue = "order_value"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.payment = payment

            self.deliveryCharges = deliveryCharges

            self.bags = bags

            self.shipment = shipment

            self.items = items

            self.paymentMode = paymentMode

            self.shippingAddress = shippingAddress

            self.orderPriority = orderPriority

            self.discount = discount

            self.billingAddress = billingAddress

            self.coupon = coupon

            self.affiliateOrderId = affiliateOrderId

            self.user = user

            self.codCharges = codCharges

            self.orderValue = orderValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([String: Any].self, forKey: .items)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

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

            user = try container.decode(UserData.self, forKey: .user)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            orderValue = try container.decode(Double.self, forKey: .orderValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(user, forKey: .user)

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
        public var payment: [String: Any]?

        public var deliveryCharges: Double

        public var bags: [AffiliateBag]

        public var shipment: ShipmentData?

        public var items: [String: Any]

        public var paymentMode: String

        public var shippingAddress: OrderUser

        public var orderPriority: OrderPriority?

        public var discount: Double

        public var billingAddress: OrderUser

        public var coupon: String?

        public var affiliateOrderId: String?

        public var user: UserData

        public var codCharges: Double

        public var orderValue: Double

        public enum CodingKeys: String, CodingKey {
            case payment

            case deliveryCharges = "delivery_charges"

            case bags

            case shipment

            case items

            case paymentMode = "payment_mode"

            case shippingAddress = "shipping_address"

            case orderPriority = "order_priority"

            case discount

            case billingAddress = "billing_address"

            case coupon

            case affiliateOrderId = "affiliate_order_id"

            case user

            case codCharges = "cod_charges"

            case orderValue = "order_value"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.payment = payment

            self.deliveryCharges = deliveryCharges

            self.bags = bags

            self.shipment = shipment

            self.items = items

            self.paymentMode = paymentMode

            self.shippingAddress = shippingAddress

            self.orderPriority = orderPriority

            self.discount = discount

            self.billingAddress = billingAddress

            self.coupon = coupon

            self.affiliateOrderId = affiliateOrderId

            self.user = user

            self.codCharges = codCharges

            self.orderValue = orderValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([String: Any].self, forKey: .items)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

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

            user = try container.decode(UserData.self, forKey: .user)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            orderValue = try container.decode(Double.self, forKey: .orderValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)
        }
    }
}
