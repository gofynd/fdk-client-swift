

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var codCharges: Double

        public var deliveryCharges: Double

        public var items: [String: Any]

        public var discount: Double

        public var billingAddress: OrderUser

        public var affiliateOrderId: String?

        public var user: UserData

        public var payment: [String: Any]?

        public var bags: [AffiliateBag]

        public var coupon: String?

        public var orderPriority: OrderPriority?

        public var paymentMode: String

        public var shippingAddress: OrderUser

        public var shipment: ShipmentData?

        public var orderValue: Double

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case deliveryCharges = "delivery_charges"

            case items

            case discount

            case billingAddress = "billing_address"

            case affiliateOrderId = "affiliate_order_id"

            case user

            case payment

            case bags

            case coupon

            case orderPriority = "order_priority"

            case paymentMode = "payment_mode"

            case shippingAddress = "shipping_address"

            case shipment

            case orderValue = "order_value"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.codCharges = codCharges

            self.deliveryCharges = deliveryCharges

            self.items = items

            self.discount = discount

            self.billingAddress = billingAddress

            self.affiliateOrderId = affiliateOrderId

            self.user = user

            self.payment = payment

            self.bags = bags

            self.coupon = coupon

            self.orderPriority = orderPriority

            self.paymentMode = paymentMode

            self.shippingAddress = shippingAddress

            self.shipment = shipment

            self.orderValue = orderValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            items = try container.decode([String: Any].self, forKey: .items)

            discount = try container.decode(Double.self, forKey: .discount)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode(UserData.self, forKey: .user)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

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

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)
        }
    }
}
