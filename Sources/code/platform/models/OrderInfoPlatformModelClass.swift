

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var discount: Double

        public var coupon: String?

        public var orderPriority: OrderPriority?

        public var orderValue: Double

        public var affiliateOrderId: String?

        public var bags: [AffiliateBag]

        public var items: [String: Any]

        public var codCharges: Double

        public var user: UserData

        public var shipment: ShipmentData?

        public var payment: [String: Any]?

        public var billingAddress: OrderUser

        public var paymentMode: String

        public var shippingAddress: OrderUser

        public var deliveryCharges: Double

        public enum CodingKeys: String, CodingKey {
            case discount

            case coupon

            case orderPriority = "order_priority"

            case orderValue = "order_value"

            case affiliateOrderId = "affiliate_order_id"

            case bags

            case items

            case codCharges = "cod_charges"

            case user

            case shipment

            case payment

            case billingAddress = "billing_address"

            case paymentMode = "payment_mode"

            case shippingAddress = "shipping_address"

            case deliveryCharges = "delivery_charges"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.discount = discount

            self.coupon = coupon

            self.orderPriority = orderPriority

            self.orderValue = orderValue

            self.affiliateOrderId = affiliateOrderId

            self.bags = bags

            self.items = items

            self.codCharges = codCharges

            self.user = user

            self.shipment = shipment

            self.payment = payment

            self.billingAddress = billingAddress

            self.paymentMode = paymentMode

            self.shippingAddress = shippingAddress

            self.deliveryCharges = deliveryCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Double.self, forKey: .discount)

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

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            items = try container.decode([String: Any].self, forKey: .items)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            user = try container.decode(UserData.self, forKey: .user)

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

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
        }
    }
}
