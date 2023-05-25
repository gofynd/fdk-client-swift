

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var affiliateOrderId: String?

        public var items: [String: Any]

        public var payment: [String: Any]?

        public var shippingAddress: OrderUser

        public var coupon: String?

        public var orderPriority: OrderPriority?

        public var shipment: ShipmentData?

        public var billingAddress: OrderUser

        public var codCharges: Double

        public var discount: Double

        public var user: UserData

        public var bags: [AffiliateBag]

        public var orderValue: Double

        public var paymentMode: String

        public var deliveryCharges: Double

        public enum CodingKeys: String, CodingKey {
            case affiliateOrderId = "affiliate_order_id"

            case items

            case payment

            case shippingAddress = "shipping_address"

            case coupon

            case orderPriority = "order_priority"

            case shipment

            case billingAddress = "billing_address"

            case codCharges = "cod_charges"

            case discount

            case user

            case bags

            case orderValue = "order_value"

            case paymentMode = "payment_mode"

            case deliveryCharges = "delivery_charges"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.affiliateOrderId = affiliateOrderId

            self.items = items

            self.payment = payment

            self.shippingAddress = shippingAddress

            self.coupon = coupon

            self.orderPriority = orderPriority

            self.shipment = shipment

            self.billingAddress = billingAddress

            self.codCharges = codCharges

            self.discount = discount

            self.user = user

            self.bags = bags

            self.orderValue = orderValue

            self.paymentMode = paymentMode

            self.deliveryCharges = deliveryCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

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

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            discount = try container.decode(Double.self, forKey: .discount)

            user = try container.decode(UserData.self, forKey: .user)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

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
        public var affiliateOrderId: String?

        public var items: [String: Any]

        public var payment: [String: Any]?

        public var shippingAddress: OrderUser

        public var coupon: String?

        public var orderPriority: OrderPriority?

        public var shipment: ShipmentData?

        public var billingAddress: OrderUser

        public var codCharges: Double

        public var discount: Double

        public var user: UserData

        public var bags: [AffiliateBag]

        public var orderValue: Double

        public var paymentMode: String

        public var deliveryCharges: Double

        public enum CodingKeys: String, CodingKey {
            case affiliateOrderId = "affiliate_order_id"

            case items

            case payment

            case shippingAddress = "shipping_address"

            case coupon

            case orderPriority = "order_priority"

            case shipment

            case billingAddress = "billing_address"

            case codCharges = "cod_charges"

            case discount

            case user

            case bags

            case orderValue = "order_value"

            case paymentMode = "payment_mode"

            case deliveryCharges = "delivery_charges"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.affiliateOrderId = affiliateOrderId

            self.items = items

            self.payment = payment

            self.shippingAddress = shippingAddress

            self.coupon = coupon

            self.orderPriority = orderPriority

            self.shipment = shipment

            self.billingAddress = billingAddress

            self.codCharges = codCharges

            self.discount = discount

            self.user = user

            self.bags = bags

            self.orderValue = orderValue

            self.paymentMode = paymentMode

            self.deliveryCharges = deliveryCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

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

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            discount = try container.decode(Double.self, forKey: .discount)

            user = try container.decode(UserData.self, forKey: .user)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
        }
    }
}
