

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var paymentMode: String

        public var bags: [AffiliateBag]

        public var billingAddress: OrderUser

        public var affiliateOrderId: String?

        public var shippingAddress: OrderUser

        public var shipment: ShipmentData?

        public var payment: [String: Any]?

        public var discount: Double

        public var orderPriority: OrderPriority?

        public var coupon: String?

        public var deliveryCharges: Double

        public var codCharges: Double

        public var items: [String: Any]

        public var orderValue: Double

        public var user: UserData

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case bags

            case billingAddress = "billing_address"

            case affiliateOrderId = "affiliate_order_id"

            case shippingAddress = "shipping_address"

            case shipment

            case payment

            case discount

            case orderPriority = "order_priority"

            case coupon

            case deliveryCharges = "delivery_charges"

            case codCharges = "cod_charges"

            case items

            case orderValue = "order_value"

            case user
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.paymentMode = paymentMode

            self.bags = bags

            self.billingAddress = billingAddress

            self.affiliateOrderId = affiliateOrderId

            self.shippingAddress = shippingAddress

            self.shipment = shipment

            self.payment = payment

            self.discount = discount

            self.orderPriority = orderPriority

            self.coupon = coupon

            self.deliveryCharges = deliveryCharges

            self.codCharges = codCharges

            self.items = items

            self.orderValue = orderValue

            self.user = user
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

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

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

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

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            items = try container.decode([String: Any].self, forKey: .items)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            user = try container.decode(UserData.self, forKey: .user)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}
