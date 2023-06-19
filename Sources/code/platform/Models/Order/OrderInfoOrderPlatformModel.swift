

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var bags: [AffiliateBag]

        public var orderValue: Double

        public var affiliateOrderId: String?

        public var items: [String: Any]

        public var shippingAddress: OrderUser

        public var user: UserData

        public var coupon: String?

        public var shipment: ShipmentData?

        public var discount: Double

        public var payment: [String: Any]?

        public var orderPriority: OrderPriority?

        public var billingAddress: OrderUser

        public var codCharges: Double

        public var paymentMode: String

        public var deliveryCharges: Double

        public enum CodingKeys: String, CodingKey {
            case bags

            case orderValue = "order_value"

            case affiliateOrderId = "affiliate_order_id"

            case items

            case shippingAddress = "shipping_address"

            case user

            case coupon

            case shipment

            case discount

            case payment

            case orderPriority = "order_priority"

            case billingAddress = "billing_address"

            case codCharges = "cod_charges"

            case paymentMode = "payment_mode"

            case deliveryCharges = "delivery_charges"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.bags = bags

            self.orderValue = orderValue

            self.affiliateOrderId = affiliateOrderId

            self.items = items

            self.shippingAddress = shippingAddress

            self.user = user

            self.coupon = coupon

            self.shipment = shipment

            self.discount = discount

            self.payment = payment

            self.orderPriority = orderPriority

            self.billingAddress = billingAddress

            self.codCharges = codCharges

            self.paymentMode = paymentMode

            self.deliveryCharges = deliveryCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([String: Any].self, forKey: .items)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            user = try container.decode(UserData.self, forKey: .user)

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

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

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

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
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

        public var affiliateOrderId: String?

        public var items: [String: Any]

        public var shippingAddress: OrderUser

        public var user: UserData

        public var coupon: String?

        public var shipment: ShipmentData?

        public var discount: Double

        public var payment: [String: Any]?

        public var orderPriority: OrderPriority?

        public var billingAddress: OrderUser

        public var codCharges: Double

        public var paymentMode: String

        public var deliveryCharges: Double

        public enum CodingKeys: String, CodingKey {
            case bags

            case orderValue = "order_value"

            case affiliateOrderId = "affiliate_order_id"

            case items

            case shippingAddress = "shipping_address"

            case user

            case coupon

            case shipment

            case discount

            case payment

            case orderPriority = "order_priority"

            case billingAddress = "billing_address"

            case codCharges = "cod_charges"

            case paymentMode = "payment_mode"

            case deliveryCharges = "delivery_charges"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.bags = bags

            self.orderValue = orderValue

            self.affiliateOrderId = affiliateOrderId

            self.items = items

            self.shippingAddress = shippingAddress

            self.user = user

            self.coupon = coupon

            self.shipment = shipment

            self.discount = discount

            self.payment = payment

            self.orderPriority = orderPriority

            self.billingAddress = billingAddress

            self.codCharges = codCharges

            self.paymentMode = paymentMode

            self.deliveryCharges = deliveryCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([String: Any].self, forKey: .items)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            user = try container.decode(UserData.self, forKey: .user)

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

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

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

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
        }
    }
}
