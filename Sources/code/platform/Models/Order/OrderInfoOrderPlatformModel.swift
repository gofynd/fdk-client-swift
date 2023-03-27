

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var payment: [String: Any]?

        public var affiliateOrderId: String?

        public var user: UserData

        public var shippingAddress: OrderUser

        public var billingAddress: OrderUser

        public var shipment: ShipmentData?

        public var discount: Double

        public var paymentMode: String

        public var bags: [AffiliateBag]

        public var coupon: String?

        public var codCharges: Double

        public var deliveryCharges: Double

        public var orderValue: Double

        public var items: [String: Any]

        public var orderPriority: OrderPriority?

        public enum CodingKeys: String, CodingKey {
            case payment

            case affiliateOrderId = "affiliate_order_id"

            case user

            case shippingAddress = "shipping_address"

            case billingAddress = "billing_address"

            case shipment

            case discount

            case paymentMode = "payment_mode"

            case bags

            case coupon

            case codCharges = "cod_charges"

            case deliveryCharges = "delivery_charges"

            case orderValue = "order_value"

            case items

            case orderPriority = "order_priority"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.payment = payment

            self.affiliateOrderId = affiliateOrderId

            self.user = user

            self.shippingAddress = shippingAddress

            self.billingAddress = billingAddress

            self.shipment = shipment

            self.discount = discount

            self.paymentMode = paymentMode

            self.bags = bags

            self.coupon = coupon

            self.codCharges = codCharges

            self.deliveryCharges = deliveryCharges

            self.orderValue = orderValue

            self.items = items

            self.orderPriority = orderPriority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            user = try container.decode(UserData.self, forKey: .user)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)
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

        public var affiliateOrderId: String?

        public var user: UserData

        public var shippingAddress: OrderUser

        public var billingAddress: OrderUser

        public var shipment: ShipmentData?

        public var discount: Double

        public var paymentMode: String

        public var bags: [AffiliateBag]

        public var coupon: String?

        public var codCharges: Double

        public var deliveryCharges: Double

        public var orderValue: Double

        public var items: [String: Any]

        public var orderPriority: OrderPriority?

        public enum CodingKeys: String, CodingKey {
            case payment

            case affiliateOrderId = "affiliate_order_id"

            case user

            case shippingAddress = "shipping_address"

            case billingAddress = "billing_address"

            case shipment

            case discount

            case paymentMode = "payment_mode"

            case bags

            case coupon

            case codCharges = "cod_charges"

            case deliveryCharges = "delivery_charges"

            case orderValue = "order_value"

            case items

            case orderPriority = "order_priority"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.payment = payment

            self.affiliateOrderId = affiliateOrderId

            self.user = user

            self.shippingAddress = shippingAddress

            self.billingAddress = billingAddress

            self.shipment = shipment

            self.discount = discount

            self.paymentMode = paymentMode

            self.bags = bags

            self.coupon = coupon

            self.codCharges = codCharges

            self.deliveryCharges = deliveryCharges

            self.orderValue = orderValue

            self.items = items

            self.orderPriority = orderPriority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            user = try container.decode(UserData.self, forKey: .user)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)
        }
    }
}
