

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var user: UserData

        public var billingAddress: OrderUser

        public var orderValue: Double

        public var shipment: ShipmentData?

        public var bags: [AffiliateBag]

        public var items: [String: Any]

        public var codCharges: Double

        public var paymentMode: String

        public var affiliateOrderId: String?

        public var deliveryCharges: Double

        public var shippingAddress: OrderUser

        public var orderPriority: OrderPriority?

        public var coupon: String?

        public var discount: Double

        public var payment: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case user

            case billingAddress = "billing_address"

            case orderValue = "order_value"

            case shipment

            case bags

            case items

            case codCharges = "cod_charges"

            case paymentMode = "payment_mode"

            case affiliateOrderId = "affiliate_order_id"

            case deliveryCharges = "delivery_charges"

            case shippingAddress = "shipping_address"

            case orderPriority = "order_priority"

            case coupon

            case discount

            case payment
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.user = user

            self.billingAddress = billingAddress

            self.orderValue = orderValue

            self.shipment = shipment

            self.bags = bags

            self.items = items

            self.codCharges = codCharges

            self.paymentMode = paymentMode

            self.affiliateOrderId = affiliateOrderId

            self.deliveryCharges = deliveryCharges

            self.shippingAddress = shippingAddress

            self.orderPriority = orderPriority

            self.coupon = coupon

            self.discount = discount

            self.payment = payment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            user = try container.decode(UserData.self, forKey: .user)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            items = try container.decode([String: Any].self, forKey: .items)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

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

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(discount, forKey: .discount)

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
        public var user: UserData

        public var billingAddress: OrderUser

        public var orderValue: Double

        public var shipment: ShipmentData?

        public var bags: [AffiliateBag]

        public var items: [String: Any]

        public var codCharges: Double

        public var paymentMode: String

        public var affiliateOrderId: String?

        public var deliveryCharges: Double

        public var shippingAddress: OrderUser

        public var orderPriority: OrderPriority?

        public var coupon: String?

        public var discount: Double

        public var payment: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case user

            case billingAddress = "billing_address"

            case orderValue = "order_value"

            case shipment

            case bags

            case items

            case codCharges = "cod_charges"

            case paymentMode = "payment_mode"

            case affiliateOrderId = "affiliate_order_id"

            case deliveryCharges = "delivery_charges"

            case shippingAddress = "shipping_address"

            case orderPriority = "order_priority"

            case coupon

            case discount

            case payment
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.user = user

            self.billingAddress = billingAddress

            self.orderValue = orderValue

            self.shipment = shipment

            self.bags = bags

            self.items = items

            self.codCharges = codCharges

            self.paymentMode = paymentMode

            self.affiliateOrderId = affiliateOrderId

            self.deliveryCharges = deliveryCharges

            self.shippingAddress = shippingAddress

            self.orderPriority = orderPriority

            self.coupon = coupon

            self.discount = discount

            self.payment = payment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            user = try container.decode(UserData.self, forKey: .user)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            items = try container.decode([String: Any].self, forKey: .items)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

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

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(payment, forKey: .payment)
        }
    }
}
