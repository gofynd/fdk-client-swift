

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var shippingAddress: OrderUser

        public var coupon: String?

        public var codCharges: Double

        public var affiliateOrderId: String?

        public var shipment: ShipmentData?

        public var payment: [String: Any]?

        public var paymentMode: String

        public var discount: Double

        public var items: [String: Any]

        public var billingAddress: OrderUser

        public var bags: [AffiliateBag]

        public var orderPriority: OrderPriority?

        public var user: UserData

        public var deliveryCharges: Double

        public var orderValue: Double

        public enum CodingKeys: String, CodingKey {
            case shippingAddress = "shipping_address"

            case coupon

            case codCharges = "cod_charges"

            case affiliateOrderId = "affiliate_order_id"

            case shipment

            case payment

            case paymentMode = "payment_mode"

            case discount

            case items

            case billingAddress = "billing_address"

            case bags

            case orderPriority = "order_priority"

            case user

            case deliveryCharges = "delivery_charges"

            case orderValue = "order_value"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.shippingAddress = shippingAddress

            self.coupon = coupon

            self.codCharges = codCharges

            self.affiliateOrderId = affiliateOrderId

            self.shipment = shipment

            self.payment = payment

            self.paymentMode = paymentMode

            self.discount = discount

            self.items = items

            self.billingAddress = billingAddress

            self.bags = bags

            self.orderPriority = orderPriority

            self.user = user

            self.deliveryCharges = deliveryCharges

            self.orderValue = orderValue
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

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

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

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            discount = try container.decode(Double.self, forKey: .discount)

            items = try container.decode([String: Any].self, forKey: .items)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode(UserData.self, forKey: .user)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            orderValue = try container.decode(Double.self, forKey: .orderValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)
        }
    }
}
