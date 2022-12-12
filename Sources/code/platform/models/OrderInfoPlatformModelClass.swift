

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var billingAddress: OrderUser

        public var paymentMode: String

        public var discount: Double

        public var shippingAddress: OrderUser

        public var affiliateOrderId: String?

        public var items: [String: Any]

        public var shipment: ShipmentData?

        public var bags: [AffiliateBag]

        public var codCharges: Double

        public var user: UserData

        public var orderPriority: OrderPriority?

        public var payment: [String: Any]?

        public var orderValue: Double

        public var deliveryCharges: Double

        public var coupon: String?

        public enum CodingKeys: String, CodingKey {
            case billingAddress = "billing_address"

            case paymentMode = "payment_mode"

            case discount

            case shippingAddress = "shipping_address"

            case affiliateOrderId = "affiliate_order_id"

            case items

            case shipment

            case bags

            case codCharges = "cod_charges"

            case user

            case orderPriority = "order_priority"

            case payment

            case orderValue = "order_value"

            case deliveryCharges = "delivery_charges"

            case coupon
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.billingAddress = billingAddress

            self.paymentMode = paymentMode

            self.discount = discount

            self.shippingAddress = shippingAddress

            self.affiliateOrderId = affiliateOrderId

            self.items = items

            self.shipment = shipment

            self.bags = bags

            self.codCharges = codCharges

            self.user = user

            self.orderPriority = orderPriority

            self.payment = payment

            self.orderValue = orderValue

            self.deliveryCharges = deliveryCharges

            self.coupon = coupon
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            discount = try container.decode(Double.self, forKey: .discount)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            user = try container.decode(UserData.self, forKey: .user)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

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

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encode(coupon, forKey: .coupon)
        }
    }
}
