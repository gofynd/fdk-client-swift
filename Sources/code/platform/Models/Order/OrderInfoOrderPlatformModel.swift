

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var bags: [AffiliateBag]

        public var orderValue: Double

        public var shippingAddress: OrderUser

        public var items: [String: Any]

        public var affiliateOrderId: String?

        public var shipment: ShipmentData?

        public var payment: [String: Any]?

        public var coupon: String?

        public var deliveryCharges: Double

        public var user: UserData

        public var discount: Double

        public var orderPriority: OrderPriority?

        public var codCharges: Double

        public var billingAddress: OrderUser

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case bags

            case orderValue = "order_value"

            case shippingAddress = "shipping_address"

            case items

            case affiliateOrderId = "affiliate_order_id"

            case shipment

            case payment

            case coupon

            case deliveryCharges = "delivery_charges"

            case user

            case discount

            case orderPriority = "order_priority"

            case codCharges = "cod_charges"

            case billingAddress = "billing_address"

            case paymentMode = "payment_mode"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.bags = bags

            self.orderValue = orderValue

            self.shippingAddress = shippingAddress

            self.items = items

            self.affiliateOrderId = affiliateOrderId

            self.shipment = shipment

            self.payment = payment

            self.coupon = coupon

            self.deliveryCharges = deliveryCharges

            self.user = user

            self.discount = discount

            self.orderPriority = orderPriority

            self.codCharges = codCharges

            self.billingAddress = billingAddress

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

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
                payment = try container.decode([String: Any].self, forKey: .payment)

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

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            user = try container.decode(UserData.self, forKey: .user)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
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

        public var orderValue: Double

        public var shippingAddress: OrderUser

        public var items: [String: Any]

        public var affiliateOrderId: String?

        public var shipment: ShipmentData?

        public var payment: [String: Any]?

        public var coupon: String?

        public var deliveryCharges: Double

        public var user: UserData

        public var discount: Double

        public var orderPriority: OrderPriority?

        public var codCharges: Double

        public var billingAddress: OrderUser

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case bags

            case orderValue = "order_value"

            case shippingAddress = "shipping_address"

            case items

            case affiliateOrderId = "affiliate_order_id"

            case shipment

            case payment

            case coupon

            case deliveryCharges = "delivery_charges"

            case user

            case discount

            case orderPriority = "order_priority"

            case codCharges = "cod_charges"

            case billingAddress = "billing_address"

            case paymentMode = "payment_mode"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.bags = bags

            self.orderValue = orderValue

            self.shippingAddress = shippingAddress

            self.items = items

            self.affiliateOrderId = affiliateOrderId

            self.shipment = shipment

            self.payment = payment

            self.coupon = coupon

            self.deliveryCharges = deliveryCharges

            self.user = user

            self.discount = discount

            self.orderPriority = orderPriority

            self.codCharges = codCharges

            self.billingAddress = billingAddress

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

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
                payment = try container.decode([String: Any].self, forKey: .payment)

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

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            user = try container.decode(UserData.self, forKey: .user)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}
