

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var bags: [AffiliateBag]

        public var items: [String: Any]

        public var affiliateOrderId: String?

        public var codCharges: Double

        public var shippingAddress: OrderUser

        public var user: UserData

        public var paymentMode: String

        public var orderValue: Double

        public var deliveryCharges: Double

        public var coupon: String?

        public var shipment: ShipmentData?

        public var billingAddress: OrderUser

        public var discount: Double

        public var orderPriority: OrderPriority?

        public var payment: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case bags

            case items

            case affiliateOrderId = "affiliate_order_id"

            case codCharges = "cod_charges"

            case shippingAddress = "shipping_address"

            case user

            case paymentMode = "payment_mode"

            case orderValue = "order_value"

            case deliveryCharges = "delivery_charges"

            case coupon

            case shipment

            case billingAddress = "billing_address"

            case discount

            case orderPriority = "order_priority"

            case payment
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.bags = bags

            self.items = items

            self.affiliateOrderId = affiliateOrderId

            self.codCharges = codCharges

            self.shippingAddress = shippingAddress

            self.user = user

            self.paymentMode = paymentMode

            self.orderValue = orderValue

            self.deliveryCharges = deliveryCharges

            self.coupon = coupon

            self.shipment = shipment

            self.billingAddress = billingAddress

            self.discount = discount

            self.orderPriority = orderPriority

            self.payment = payment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            user = try container.decode(UserData.self, forKey: .user)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

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

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(payment, forKey: .payment)
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

        public var items: [String: Any]

        public var affiliateOrderId: String?

        public var codCharges: Double

        public var shippingAddress: OrderUser

        public var user: UserData

        public var paymentMode: String

        public var orderValue: Double

        public var deliveryCharges: Double

        public var coupon: String?

        public var shipment: ShipmentData?

        public var billingAddress: OrderUser

        public var discount: Double

        public var orderPriority: OrderPriority?

        public var payment: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case bags

            case items

            case affiliateOrderId = "affiliate_order_id"

            case codCharges = "cod_charges"

            case shippingAddress = "shipping_address"

            case user

            case paymentMode = "payment_mode"

            case orderValue = "order_value"

            case deliveryCharges = "delivery_charges"

            case coupon

            case shipment

            case billingAddress = "billing_address"

            case discount

            case orderPriority = "order_priority"

            case payment
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.bags = bags

            self.items = items

            self.affiliateOrderId = affiliateOrderId

            self.codCharges = codCharges

            self.shippingAddress = shippingAddress

            self.user = user

            self.paymentMode = paymentMode

            self.orderValue = orderValue

            self.deliveryCharges = deliveryCharges

            self.coupon = coupon

            self.shipment = shipment

            self.billingAddress = billingAddress

            self.discount = discount

            self.orderPriority = orderPriority

            self.payment = payment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            user = try container.decode(UserData.self, forKey: .user)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

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

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(payment, forKey: .payment)
        }
    }
}
