

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var orderValue: Double

        public var discount: Double

        public var codCharges: Double

        public var billingAddress: OrderUser

        public var bags: [AffiliateBag]

        public var items: [String: Any]

        public var paymentMode: String

        public var orderPriority: OrderPriority?

        public var affiliateOrderId: String?

        public var coupon: String?

        public var shippingAddress: OrderUser

        public var user: UserData

        public var payment: [String: Any]?

        public var deliveryCharges: Double

        public var shipment: ShipmentData?

        public enum CodingKeys: String, CodingKey {
            case orderValue = "order_value"

            case discount

            case codCharges = "cod_charges"

            case billingAddress = "billing_address"

            case bags

            case items

            case paymentMode = "payment_mode"

            case orderPriority = "order_priority"

            case affiliateOrderId = "affiliate_order_id"

            case coupon

            case shippingAddress = "shipping_address"

            case user

            case payment

            case deliveryCharges = "delivery_charges"

            case shipment
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.orderValue = orderValue

            self.discount = discount

            self.codCharges = codCharges

            self.billingAddress = billingAddress

            self.bags = bags

            self.items = items

            self.paymentMode = paymentMode

            self.orderPriority = orderPriority

            self.affiliateOrderId = affiliateOrderId

            self.coupon = coupon

            self.shippingAddress = shippingAddress

            self.user = user

            self.payment = payment

            self.deliveryCharges = deliveryCharges

            self.shipment = shipment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            discount = try container.decode(Double.self, forKey: .discount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            items = try container.decode([String: Any].self, forKey: .items)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

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

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            user = try container.decode(UserData.self, forKey: .user)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(shipment, forKey: .shipment)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var orderValue: Double

        public var discount: Double

        public var codCharges: Double

        public var billingAddress: OrderUser

        public var bags: [AffiliateBag]

        public var items: [String: Any]

        public var paymentMode: String

        public var orderPriority: OrderPriority?

        public var affiliateOrderId: String?

        public var coupon: String?

        public var shippingAddress: OrderUser

        public var user: UserData

        public var payment: [String: Any]?

        public var deliveryCharges: Double

        public var shipment: ShipmentData?

        public enum CodingKeys: String, CodingKey {
            case orderValue = "order_value"

            case discount

            case codCharges = "cod_charges"

            case billingAddress = "billing_address"

            case bags

            case items

            case paymentMode = "payment_mode"

            case orderPriority = "order_priority"

            case affiliateOrderId = "affiliate_order_id"

            case coupon

            case shippingAddress = "shipping_address"

            case user

            case payment

            case deliveryCharges = "delivery_charges"

            case shipment
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.orderValue = orderValue

            self.discount = discount

            self.codCharges = codCharges

            self.billingAddress = billingAddress

            self.bags = bags

            self.items = items

            self.paymentMode = paymentMode

            self.orderPriority = orderPriority

            self.affiliateOrderId = affiliateOrderId

            self.coupon = coupon

            self.shippingAddress = shippingAddress

            self.user = user

            self.payment = payment

            self.deliveryCharges = deliveryCharges

            self.shipment = shipment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            discount = try container.decode(Double.self, forKey: .discount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            items = try container.decode([String: Any].self, forKey: .items)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

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

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            user = try container.decode(UserData.self, forKey: .user)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(shipment, forKey: .shipment)
        }
    }
}
