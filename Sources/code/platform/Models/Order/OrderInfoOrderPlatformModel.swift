

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var shipment: ShipmentData?

        public var affiliateOrderId: String?

        public var payment: [String: Any]?

        public var deliveryCharges: Double

        public var orderPriority: OrderPriority?

        public var orderValue: Double

        public var paymentMode: String

        public var shippingAddress: OrderUser

        public var billingAddress: OrderUser

        public var discount: Double

        public var items: [String: Any]

        public var codCharges: Double

        public var user: UserData

        public var coupon: String?

        public var bags: [AffiliateBag]

        public enum CodingKeys: String, CodingKey {
            case shipment

            case affiliateOrderId = "affiliate_order_id"

            case payment

            case deliveryCharges = "delivery_charges"

            case orderPriority = "order_priority"

            case orderValue = "order_value"

            case paymentMode = "payment_mode"

            case shippingAddress = "shipping_address"

            case billingAddress = "billing_address"

            case discount

            case items

            case codCharges = "cod_charges"

            case user

            case coupon

            case bags
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.shipment = shipment

            self.affiliateOrderId = affiliateOrderId

            self.payment = payment

            self.deliveryCharges = deliveryCharges

            self.orderPriority = orderPriority

            self.orderValue = orderValue

            self.paymentMode = paymentMode

            self.shippingAddress = shippingAddress

            self.billingAddress = billingAddress

            self.discount = discount

            self.items = items

            self.codCharges = codCharges

            self.user = user

            self.coupon = coupon

            self.bags = bags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            discount = try container.decode(Double.self, forKey: .discount)

            items = try container.decode([String: Any].self, forKey: .items)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            user = try container.decode(UserData.self, forKey: .user)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([AffiliateBag].self, forKey: .bags)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(bags, forKey: .bags)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var shipment: ShipmentData?

        public var affiliateOrderId: String?

        public var payment: [String: Any]?

        public var deliveryCharges: Double

        public var orderPriority: OrderPriority?

        public var orderValue: Double

        public var paymentMode: String

        public var shippingAddress: OrderUser

        public var billingAddress: OrderUser

        public var discount: Double

        public var items: [String: Any]

        public var codCharges: Double

        public var user: UserData

        public var coupon: String?

        public var bags: [AffiliateBag]

        public enum CodingKeys: String, CodingKey {
            case shipment

            case affiliateOrderId = "affiliate_order_id"

            case payment

            case deliveryCharges = "delivery_charges"

            case orderPriority = "order_priority"

            case orderValue = "order_value"

            case paymentMode = "payment_mode"

            case shippingAddress = "shipping_address"

            case billingAddress = "billing_address"

            case discount

            case items

            case codCharges = "cod_charges"

            case user

            case coupon

            case bags
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.shipment = shipment

            self.affiliateOrderId = affiliateOrderId

            self.payment = payment

            self.deliveryCharges = deliveryCharges

            self.orderPriority = orderPriority

            self.orderValue = orderValue

            self.paymentMode = paymentMode

            self.shippingAddress = shippingAddress

            self.billingAddress = billingAddress

            self.discount = discount

            self.items = items

            self.codCharges = codCharges

            self.user = user

            self.coupon = coupon

            self.bags = bags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            discount = try container.decode(Double.self, forKey: .discount)

            items = try container.decode([String: Any].self, forKey: .items)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            user = try container.decode(UserData.self, forKey: .user)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([AffiliateBag].self, forKey: .bags)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(bags, forKey: .bags)
        }
    }
}
