

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var coupon: String?

        public var items: [String: Any]

        public var orderValue: Double

        public var paymentMode: String

        public var orderPriority: OrderPriority?

        public var billingAddress: OrderUser

        public var shipment: ShipmentData?

        public var codCharges: Double

        public var user: UserData

        public var shippingAddress: OrderUser

        public var bags: [AffiliateBag]

        public var affiliateOrderId: String?

        public var discount: Double

        public var payment: [String: Any]?

        public var deliveryCharges: Double

        public enum CodingKeys: String, CodingKey {
            case coupon

            case items

            case orderValue = "order_value"

            case paymentMode = "payment_mode"

            case orderPriority = "order_priority"

            case billingAddress = "billing_address"

            case shipment

            case codCharges = "cod_charges"

            case user

            case shippingAddress = "shipping_address"

            case bags

            case affiliateOrderId = "affiliate_order_id"

            case discount

            case payment

            case deliveryCharges = "delivery_charges"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.coupon = coupon

            self.items = items

            self.orderValue = orderValue

            self.paymentMode = paymentMode

            self.orderPriority = orderPriority

            self.billingAddress = billingAddress

            self.shipment = shipment

            self.codCharges = codCharges

            self.user = user

            self.shippingAddress = shippingAddress

            self.bags = bags

            self.affiliateOrderId = affiliateOrderId

            self.discount = discount

            self.payment = payment

            self.deliveryCharges = deliveryCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([String: Any].self, forKey: .items)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            user = try container.decode(UserData.self, forKey: .user)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

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

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(payment, forKey: .payment)

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
        public var coupon: String?

        public var items: [String: Any]

        public var orderValue: Double

        public var paymentMode: String

        public var orderPriority: OrderPriority?

        public var billingAddress: OrderUser

        public var shipment: ShipmentData?

        public var codCharges: Double

        public var user: UserData

        public var shippingAddress: OrderUser

        public var bags: [AffiliateBag]

        public var affiliateOrderId: String?

        public var discount: Double

        public var payment: [String: Any]?

        public var deliveryCharges: Double

        public enum CodingKeys: String, CodingKey {
            case coupon

            case items

            case orderValue = "order_value"

            case paymentMode = "payment_mode"

            case orderPriority = "order_priority"

            case billingAddress = "billing_address"

            case shipment

            case codCharges = "cod_charges"

            case user

            case shippingAddress = "shipping_address"

            case bags

            case affiliateOrderId = "affiliate_order_id"

            case discount

            case payment

            case deliveryCharges = "delivery_charges"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.coupon = coupon

            self.items = items

            self.orderValue = orderValue

            self.paymentMode = paymentMode

            self.orderPriority = orderPriority

            self.billingAddress = billingAddress

            self.shipment = shipment

            self.codCharges = codCharges

            self.user = user

            self.shippingAddress = shippingAddress

            self.bags = bags

            self.affiliateOrderId = affiliateOrderId

            self.discount = discount

            self.payment = payment

            self.deliveryCharges = deliveryCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([String: Any].self, forKey: .items)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            user = try container.decode(UserData.self, forKey: .user)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

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

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
        }
    }
}
