

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var user: UserData

        public var bags: [AffiliateBag]

        public var billingAddress: OrderUser

        public var items: [String: Any]

        public var coupon: String?

        public var deliveryCharges: Double

        public var shipment: ShipmentData?

        public var paymentMode: String

        public var codCharges: Double

        public var affiliateOrderId: String?

        public var shippingAddress: OrderUser

        public var orderValue: Double

        public var payment: [String: Any]?

        public var orderPriority: OrderPriority?

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case user

            case bags

            case billingAddress = "billing_address"

            case items

            case coupon

            case deliveryCharges = "delivery_charges"

            case shipment

            case paymentMode = "payment_mode"

            case codCharges = "cod_charges"

            case affiliateOrderId = "affiliate_order_id"

            case shippingAddress = "shipping_address"

            case orderValue = "order_value"

            case payment

            case orderPriority = "order_priority"

            case discount
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.user = user

            self.bags = bags

            self.billingAddress = billingAddress

            self.items = items

            self.coupon = coupon

            self.deliveryCharges = deliveryCharges

            self.shipment = shipment

            self.paymentMode = paymentMode

            self.codCharges = codCharges

            self.affiliateOrderId = affiliateOrderId

            self.shippingAddress = shippingAddress

            self.orderValue = orderValue

            self.payment = payment

            self.orderPriority = orderPriority

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            user = try container.decode(UserData.self, forKey: .user)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

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

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(discount, forKey: .discount)
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

        public var bags: [AffiliateBag]

        public var billingAddress: OrderUser

        public var items: [String: Any]

        public var coupon: String?

        public var deliveryCharges: Double

        public var shipment: ShipmentData?

        public var paymentMode: String

        public var codCharges: Double

        public var affiliateOrderId: String?

        public var shippingAddress: OrderUser

        public var orderValue: Double

        public var payment: [String: Any]?

        public var orderPriority: OrderPriority?

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case user

            case bags

            case billingAddress = "billing_address"

            case items

            case coupon

            case deliveryCharges = "delivery_charges"

            case shipment

            case paymentMode = "payment_mode"

            case codCharges = "cod_charges"

            case affiliateOrderId = "affiliate_order_id"

            case shippingAddress = "shipping_address"

            case orderValue = "order_value"

            case payment

            case orderPriority = "order_priority"

            case discount
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.user = user

            self.bags = bags

            self.billingAddress = billingAddress

            self.items = items

            self.coupon = coupon

            self.deliveryCharges = deliveryCharges

            self.shipment = shipment

            self.paymentMode = paymentMode

            self.codCharges = codCharges

            self.affiliateOrderId = affiliateOrderId

            self.shippingAddress = shippingAddress

            self.orderValue = orderValue

            self.payment = payment

            self.orderPriority = orderPriority

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            user = try container.decode(UserData.self, forKey: .user)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

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

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
