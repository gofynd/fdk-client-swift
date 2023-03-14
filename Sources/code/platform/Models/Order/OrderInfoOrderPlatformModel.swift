

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var shippingAddress: OrderUser

        public var coupon: String?

        public var payment: [String: Any]?

        public var user: UserData

        public var discount: Double

        public var paymentMode: String

        public var billingAddress: OrderUser

        public var orderPriority: OrderPriority?

        public var bags: [AffiliateBag]

        public var orderValue: Double

        public var codCharges: Double

        public var shipment: ShipmentData?

        public var affiliateOrderId: String?

        public var items: [String: Any]

        public var deliveryCharges: Double

        public enum CodingKeys: String, CodingKey {
            case shippingAddress = "shipping_address"

            case coupon

            case payment

            case user

            case discount

            case paymentMode = "payment_mode"

            case billingAddress = "billing_address"

            case orderPriority = "order_priority"

            case bags

            case orderValue = "order_value"

            case codCharges = "cod_charges"

            case shipment

            case affiliateOrderId = "affiliate_order_id"

            case items

            case deliveryCharges = "delivery_charges"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.shippingAddress = shippingAddress

            self.coupon = coupon

            self.payment = payment

            self.user = user

            self.discount = discount

            self.paymentMode = paymentMode

            self.billingAddress = billingAddress

            self.orderPriority = orderPriority

            self.bags = bags

            self.orderValue = orderValue

            self.codCharges = codCharges

            self.shipment = shipment

            self.affiliateOrderId = affiliateOrderId

            self.items = items

            self.deliveryCharges = deliveryCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

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

            user = try container.decode(UserData.self, forKey: .user)

            discount = try container.decode(Double.self, forKey: .discount)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

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

            items = try container.decode([String: Any].self, forKey: .items)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(items, forKey: .items)

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
        public var shippingAddress: OrderUser

        public var coupon: String?

        public var payment: [String: Any]?

        public var user: UserData

        public var discount: Double

        public var paymentMode: String

        public var billingAddress: OrderUser

        public var orderPriority: OrderPriority?

        public var bags: [AffiliateBag]

        public var orderValue: Double

        public var codCharges: Double

        public var shipment: ShipmentData?

        public var affiliateOrderId: String?

        public var items: [String: Any]

        public var deliveryCharges: Double

        public enum CodingKeys: String, CodingKey {
            case shippingAddress = "shipping_address"

            case coupon

            case payment

            case user

            case discount

            case paymentMode = "payment_mode"

            case billingAddress = "billing_address"

            case orderPriority = "order_priority"

            case bags

            case orderValue = "order_value"

            case codCharges = "cod_charges"

            case shipment

            case affiliateOrderId = "affiliate_order_id"

            case items

            case deliveryCharges = "delivery_charges"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.shippingAddress = shippingAddress

            self.coupon = coupon

            self.payment = payment

            self.user = user

            self.discount = discount

            self.paymentMode = paymentMode

            self.billingAddress = billingAddress

            self.orderPriority = orderPriority

            self.bags = bags

            self.orderValue = orderValue

            self.codCharges = codCharges

            self.shipment = shipment

            self.affiliateOrderId = affiliateOrderId

            self.items = items

            self.deliveryCharges = deliveryCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

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

            user = try container.decode(UserData.self, forKey: .user)

            discount = try container.decode(Double.self, forKey: .discount)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

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

            items = try container.decode([String: Any].self, forKey: .items)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
        }
    }
}
