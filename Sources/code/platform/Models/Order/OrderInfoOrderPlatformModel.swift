

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var orderValue: Double

        public var bags: [AffiliateBag]

        public var discount: Double

        public var paymentMode: String

        public var payment: [String: Any]?

        public var billingAddress: OrderUser

        public var user: UserData

        public var shippingAddress: OrderUser

        public var orderPriority: OrderPriority?

        public var coupon: String?

        public var deliveryCharges: Double

        public var affiliateOrderId: String?

        public var shipment: ShipmentData?

        public var items: [String: Any]

        public var codCharges: Double

        public enum CodingKeys: String, CodingKey {
            case orderValue = "order_value"

            case bags

            case discount

            case paymentMode = "payment_mode"

            case payment

            case billingAddress = "billing_address"

            case user

            case shippingAddress = "shipping_address"

            case orderPriority = "order_priority"

            case coupon

            case deliveryCharges = "delivery_charges"

            case affiliateOrderId = "affiliate_order_id"

            case shipment

            case items

            case codCharges = "cod_charges"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.orderValue = orderValue

            self.bags = bags

            self.discount = discount

            self.paymentMode = paymentMode

            self.payment = payment

            self.billingAddress = billingAddress

            self.user = user

            self.shippingAddress = shippingAddress

            self.orderPriority = orderPriority

            self.coupon = coupon

            self.deliveryCharges = deliveryCharges

            self.affiliateOrderId = affiliateOrderId

            self.shipment = shipment

            self.items = items

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            discount = try container.decode(Double.self, forKey: .discount)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            user = try container.decode(UserData.self, forKey: .user)

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

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

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

            items = try container.decode([String: Any].self, forKey: .items)

            codCharges = try container.decode(Double.self, forKey: .codCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
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

        public var bags: [AffiliateBag]

        public var discount: Double

        public var paymentMode: String

        public var payment: [String: Any]?

        public var billingAddress: OrderUser

        public var user: UserData

        public var shippingAddress: OrderUser

        public var orderPriority: OrderPriority?

        public var coupon: String?

        public var deliveryCharges: Double

        public var affiliateOrderId: String?

        public var shipment: ShipmentData?

        public var items: [String: Any]

        public var codCharges: Double

        public enum CodingKeys: String, CodingKey {
            case orderValue = "order_value"

            case bags

            case discount

            case paymentMode = "payment_mode"

            case payment

            case billingAddress = "billing_address"

            case user

            case shippingAddress = "shipping_address"

            case orderPriority = "order_priority"

            case coupon

            case deliveryCharges = "delivery_charges"

            case affiliateOrderId = "affiliate_order_id"

            case shipment

            case items

            case codCharges = "cod_charges"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.orderValue = orderValue

            self.bags = bags

            self.discount = discount

            self.paymentMode = paymentMode

            self.payment = payment

            self.billingAddress = billingAddress

            self.user = user

            self.shippingAddress = shippingAddress

            self.orderPriority = orderPriority

            self.coupon = coupon

            self.deliveryCharges = deliveryCharges

            self.affiliateOrderId = affiliateOrderId

            self.shipment = shipment

            self.items = items

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            discount = try container.decode(Double.self, forKey: .discount)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            user = try container.decode(UserData.self, forKey: .user)

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

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

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

            items = try container.decode([String: Any].self, forKey: .items)

            codCharges = try container.decode(Double.self, forKey: .codCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}
