

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var deliveryCharges: Double

        public var codCharges: Double

        public var orderPriority: OrderPriority?

        public var items: [String: Any]

        public var discount: Double

        public var user: UserData

        public var billingAddress: OrderUser

        public var orderValue: Double

        public var coupon: String?

        public var shippingAddress: OrderUser

        public var paymentMode: String

        public var bags: [AffiliateBag]

        public var payment: [String: Any]?

        public var affiliateOrderId: String?

        public var shipment: ShipmentData?

        public enum CodingKeys: String, CodingKey {
            case deliveryCharges = "delivery_charges"

            case codCharges = "cod_charges"

            case orderPriority = "order_priority"

            case items

            case discount

            case user

            case billingAddress = "billing_address"

            case orderValue = "order_value"

            case coupon

            case shippingAddress = "shipping_address"

            case paymentMode = "payment_mode"

            case bags

            case payment

            case affiliateOrderId = "affiliate_order_id"

            case shipment
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.deliveryCharges = deliveryCharges

            self.codCharges = codCharges

            self.orderPriority = orderPriority

            self.items = items

            self.discount = discount

            self.user = user

            self.billingAddress = billingAddress

            self.orderValue = orderValue

            self.coupon = coupon

            self.shippingAddress = shippingAddress

            self.paymentMode = paymentMode

            self.bags = bags

            self.payment = payment

            self.affiliateOrderId = affiliateOrderId

            self.shipment = shipment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([String: Any].self, forKey: .items)

            discount = try container.decode(Double.self, forKey: .discount)

            user = try container.decode(UserData.self, forKey: .user)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

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

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

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
        public var deliveryCharges: Double

        public var codCharges: Double

        public var orderPriority: OrderPriority?

        public var items: [String: Any]

        public var discount: Double

        public var user: UserData

        public var billingAddress: OrderUser

        public var orderValue: Double

        public var coupon: String?

        public var shippingAddress: OrderUser

        public var paymentMode: String

        public var bags: [AffiliateBag]

        public var payment: [String: Any]?

        public var affiliateOrderId: String?

        public var shipment: ShipmentData?

        public enum CodingKeys: String, CodingKey {
            case deliveryCharges = "delivery_charges"

            case codCharges = "cod_charges"

            case orderPriority = "order_priority"

            case items

            case discount

            case user

            case billingAddress = "billing_address"

            case orderValue = "order_value"

            case coupon

            case shippingAddress = "shipping_address"

            case paymentMode = "payment_mode"

            case bags

            case payment

            case affiliateOrderId = "affiliate_order_id"

            case shipment
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.deliveryCharges = deliveryCharges

            self.codCharges = codCharges

            self.orderPriority = orderPriority

            self.items = items

            self.discount = discount

            self.user = user

            self.billingAddress = billingAddress

            self.orderValue = orderValue

            self.coupon = coupon

            self.shippingAddress = shippingAddress

            self.paymentMode = paymentMode

            self.bags = bags

            self.payment = payment

            self.affiliateOrderId = affiliateOrderId

            self.shipment = shipment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([String: Any].self, forKey: .items)

            discount = try container.decode(Double.self, forKey: .discount)

            user = try container.decode(UserData.self, forKey: .user)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

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

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(shipment, forKey: .shipment)
        }
    }
}
