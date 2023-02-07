

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var bags: [AffiliateBag]

        public var items: [String: Any]

        public var shipment: ShipmentData?

        public var user: UserData

        public var shippingAddress: OrderUser

        public var discount: Double

        public var codCharges: Double

        public var payment: [String: Any]?

        public var orderPriority: OrderPriority?

        public var affiliateOrderId: String?

        public var orderValue: Double

        public var paymentMode: String

        public var billingAddress: OrderUser

        public var deliveryCharges: Double

        public var coupon: String?

        public enum CodingKeys: String, CodingKey {
            case bags

            case items

            case shipment

            case user

            case shippingAddress = "shipping_address"

            case discount

            case codCharges = "cod_charges"

            case payment

            case orderPriority = "order_priority"

            case affiliateOrderId = "affiliate_order_id"

            case orderValue = "order_value"

            case paymentMode = "payment_mode"

            case billingAddress = "billing_address"

            case deliveryCharges = "delivery_charges"

            case coupon
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.bags = bags

            self.items = items

            self.shipment = shipment

            self.user = user

            self.shippingAddress = shippingAddress

            self.discount = discount

            self.codCharges = codCharges

            self.payment = payment

            self.orderPriority = orderPriority

            self.affiliateOrderId = affiliateOrderId

            self.orderValue = orderValue

            self.paymentMode = paymentMode

            self.billingAddress = billingAddress

            self.deliveryCharges = deliveryCharges

            self.coupon = coupon
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode(UserData.self, forKey: .user)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            discount = try container.decode(Double.self, forKey: .discount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

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

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

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

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encode(coupon, forKey: .coupon)
        }
    }
}
