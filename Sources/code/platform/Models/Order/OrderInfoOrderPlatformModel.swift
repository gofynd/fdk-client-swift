

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var orderPriority: OrderPriority?

        public var shipment: ShipmentData?

        public var items: [String: Any]

        public var coupon: String?

        public var bags: [AffiliateBag]

        public var affiliateOrderId: String?

        public var orderValue: Double

        public var billingAddress: OrderUser

        public var payment: [String: Any]?

        public var paymentMode: String

        public var user: UserData

        public var codCharges: Double

        public var shippingAddress: OrderUser

        public var deliveryCharges: Double

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case orderPriority = "order_priority"

            case shipment

            case items

            case coupon

            case bags

            case affiliateOrderId = "affiliate_order_id"

            case orderValue = "order_value"

            case billingAddress = "billing_address"

            case payment

            case paymentMode = "payment_mode"

            case user

            case codCharges = "cod_charges"

            case shippingAddress = "shipping_address"

            case deliveryCharges = "delivery_charges"

            case discount
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.orderPriority = orderPriority

            self.shipment = shipment

            self.items = items

            self.coupon = coupon

            self.bags = bags

            self.affiliateOrderId = affiliateOrderId

            self.orderValue = orderValue

            self.billingAddress = billingAddress

            self.payment = payment

            self.paymentMode = paymentMode

            self.user = user

            self.codCharges = codCharges

            self.shippingAddress = shippingAddress

            self.deliveryCharges = deliveryCharges

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            user = try container.decode(UserData.self, forKey: .user)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

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
        public var orderPriority: OrderPriority?

        public var shipment: ShipmentData?

        public var items: [String: Any]

        public var coupon: String?

        public var bags: [AffiliateBag]

        public var affiliateOrderId: String?

        public var orderValue: Double

        public var billingAddress: OrderUser

        public var payment: [String: Any]?

        public var paymentMode: String

        public var user: UserData

        public var codCharges: Double

        public var shippingAddress: OrderUser

        public var deliveryCharges: Double

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case orderPriority = "order_priority"

            case shipment

            case items

            case coupon

            case bags

            case affiliateOrderId = "affiliate_order_id"

            case orderValue = "order_value"

            case billingAddress = "billing_address"

            case payment

            case paymentMode = "payment_mode"

            case user

            case codCharges = "cod_charges"

            case shippingAddress = "shipping_address"

            case deliveryCharges = "delivery_charges"

            case discount
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.orderPriority = orderPriority

            self.shipment = shipment

            self.items = items

            self.coupon = coupon

            self.bags = bags

            self.affiliateOrderId = affiliateOrderId

            self.orderValue = orderValue

            self.billingAddress = billingAddress

            self.payment = payment

            self.paymentMode = paymentMode

            self.user = user

            self.codCharges = codCharges

            self.shippingAddress = shippingAddress

            self.deliveryCharges = deliveryCharges

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            user = try container.decode(UserData.self, forKey: .user)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
