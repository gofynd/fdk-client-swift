

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var bags: [AffiliateBag]

        public var shippingAddress: OrderUser

        public var orderPriority: OrderPriority?

        public var discount: Double

        public var paymentMode: String

        public var user: UserData

        public var billingAddress: OrderUser

        public var payment: [String: Any]?

        public var coupon: String?

        public var affiliateOrderId: String?

        public var deliveryCharges: Double

        public var shipment: ShipmentData?

        public var orderValue: Double

        public var codCharges: Double

        public var items: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case bags

            case shippingAddress = "shipping_address"

            case orderPriority = "order_priority"

            case discount

            case paymentMode = "payment_mode"

            case user

            case billingAddress = "billing_address"

            case payment

            case coupon

            case affiliateOrderId = "affiliate_order_id"

            case deliveryCharges = "delivery_charges"

            case shipment

            case orderValue = "order_value"

            case codCharges = "cod_charges"

            case items
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.bags = bags

            self.shippingAddress = shippingAddress

            self.orderPriority = orderPriority

            self.discount = discount

            self.paymentMode = paymentMode

            self.user = user

            self.billingAddress = billingAddress

            self.payment = payment

            self.coupon = coupon

            self.affiliateOrderId = affiliateOrderId

            self.deliveryCharges = deliveryCharges

            self.shipment = shipment

            self.orderValue = orderValue

            self.codCharges = codCharges

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            user = try container.decode(UserData.self, forKey: .user)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

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

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            items = try container.decode([String: Any].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
