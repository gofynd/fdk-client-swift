

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var codCharges: Double

        public var coupon: String?

        public var orderPriority: OrderPriority?

        public var orderValue: Double

        public var shipment: ShipmentData?

        public var paymentMode: String

        public var user: UserData

        public var deliveryCharges: Double

        public var billingAddress: OrderUser

        public var bags: [AffiliateBag]

        public var shippingAddress: OrderUser

        public var discount: Double

        public var items: [String: Any]

        public var affiliateOrderId: String?

        public var payment: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case coupon

            case orderPriority = "order_priority"

            case orderValue = "order_value"

            case shipment

            case paymentMode = "payment_mode"

            case user

            case deliveryCharges = "delivery_charges"

            case billingAddress = "billing_address"

            case bags

            case shippingAddress = "shipping_address"

            case discount

            case items

            case affiliateOrderId = "affiliate_order_id"

            case payment
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.codCharges = codCharges

            self.coupon = coupon

            self.orderPriority = orderPriority

            self.orderValue = orderValue

            self.shipment = shipment

            self.paymentMode = paymentMode

            self.user = user

            self.deliveryCharges = deliveryCharges

            self.billingAddress = billingAddress

            self.bags = bags

            self.shippingAddress = shippingAddress

            self.discount = discount

            self.items = items

            self.affiliateOrderId = affiliateOrderId

            self.payment = payment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

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
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            user = try container.decode(UserData.self, forKey: .user)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            discount = try container.decode(Double.self, forKey: .discount)

            items = try container.decode([String: Any].self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(payment, forKey: .payment)
        }
    }
}
