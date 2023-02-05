

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var payment: [String: Any]?

        public var billingAddress: OrderUser

        public var items: [String: Any]

        public var paymentMode: String

        public var codCharges: Double

        public var orderValue: Double

        public var coupon: String?

        public var shippingAddress: OrderUser

        public var orderPriority: OrderPriority?

        public var bags: [AffiliateBag]

        public var shipment: ShipmentData?

        public var discount: Double

        public var deliveryCharges: Double

        public var affiliateOrderId: String?

        public var user: UserData

        public enum CodingKeys: String, CodingKey {
            case payment

            case billingAddress = "billing_address"

            case items

            case paymentMode = "payment_mode"

            case codCharges = "cod_charges"

            case orderValue = "order_value"

            case coupon

            case shippingAddress = "shipping_address"

            case orderPriority = "order_priority"

            case bags

            case shipment

            case discount

            case deliveryCharges = "delivery_charges"

            case affiliateOrderId = "affiliate_order_id"

            case user
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.payment = payment

            self.billingAddress = billingAddress

            self.items = items

            self.paymentMode = paymentMode

            self.codCharges = codCharges

            self.orderValue = orderValue

            self.coupon = coupon

            self.shippingAddress = shippingAddress

            self.orderPriority = orderPriority

            self.bags = bags

            self.shipment = shipment

            self.discount = discount

            self.deliveryCharges = deliveryCharges

            self.affiliateOrderId = affiliateOrderId

            self.user = user
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            items = try container.decode([String: Any].self, forKey: .items)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode(UserData.self, forKey: .user)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}
