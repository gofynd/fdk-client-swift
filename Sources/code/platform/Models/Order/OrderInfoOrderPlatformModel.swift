

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var orderPriority: OrderPriority?

        public var shippingAddress: OrderUser

        public var paymentMode: String

        public var bags: [AffiliateBag]

        public var discount: Double

        public var items: [String: Any]

        public var deliveryCharges: Double

        public var payment: [String: Any]?

        public var user: UserData

        public var affiliateOrderId: String?

        public var orderValue: Double

        public var coupon: String?

        public var billingAddress: OrderUser

        public var shipment: ShipmentData?

        public var codCharges: Double

        public enum CodingKeys: String, CodingKey {
            case orderPriority = "order_priority"

            case shippingAddress = "shipping_address"

            case paymentMode = "payment_mode"

            case bags

            case discount

            case items

            case deliveryCharges = "delivery_charges"

            case payment

            case user

            case affiliateOrderId = "affiliate_order_id"

            case orderValue = "order_value"

            case coupon

            case billingAddress = "billing_address"

            case shipment

            case codCharges = "cod_charges"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.orderPriority = orderPriority

            self.shippingAddress = shippingAddress

            self.paymentMode = paymentMode

            self.bags = bags

            self.discount = discount

            self.items = items

            self.deliveryCharges = deliveryCharges

            self.payment = payment

            self.user = user

            self.affiliateOrderId = affiliateOrderId

            self.orderValue = orderValue

            self.coupon = coupon

            self.billingAddress = billingAddress

            self.shipment = shipment

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            discount = try container.decode(Double.self, forKey: .discount)

            items = try container.decode([String: Any].self, forKey: .items)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode(UserData.self, forKey: .user)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

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
        public var orderPriority: OrderPriority?

        public var shippingAddress: OrderUser

        public var paymentMode: String

        public var bags: [AffiliateBag]

        public var discount: Double

        public var items: [String: Any]

        public var deliveryCharges: Double

        public var payment: [String: Any]?

        public var user: UserData

        public var affiliateOrderId: String?

        public var orderValue: Double

        public var coupon: String?

        public var billingAddress: OrderUser

        public var shipment: ShipmentData?

        public var codCharges: Double

        public enum CodingKeys: String, CodingKey {
            case orderPriority = "order_priority"

            case shippingAddress = "shipping_address"

            case paymentMode = "payment_mode"

            case bags

            case discount

            case items

            case deliveryCharges = "delivery_charges"

            case payment

            case user

            case affiliateOrderId = "affiliate_order_id"

            case orderValue = "order_value"

            case coupon

            case billingAddress = "billing_address"

            case shipment

            case codCharges = "cod_charges"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.orderPriority = orderPriority

            self.shippingAddress = shippingAddress

            self.paymentMode = paymentMode

            self.bags = bags

            self.discount = discount

            self.items = items

            self.deliveryCharges = deliveryCharges

            self.payment = payment

            self.user = user

            self.affiliateOrderId = affiliateOrderId

            self.orderValue = orderValue

            self.coupon = coupon

            self.billingAddress = billingAddress

            self.shipment = shipment

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            discount = try container.decode(Double.self, forKey: .discount)

            items = try container.decode([String: Any].self, forKey: .items)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode(UserData.self, forKey: .user)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}
