

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var discount: Double

        public var paymentMode: String

        public var user: UserData

        public var billingAddress: OrderUser

        public var shippingAddress: OrderUser

        public var orderValue: Double

        public var shipment: ShipmentData?

        public var coupon: String?

        public var orderPriority: OrderPriority?

        public var items: [String: Any]

        public var payment: [String: Any]?

        public var deliveryCharges: Double

        public var codCharges: Double

        public var bags: [AffiliateBag]

        public var affiliateOrderId: String?

        public enum CodingKeys: String, CodingKey {
            case discount

            case paymentMode = "payment_mode"

            case user

            case billingAddress = "billing_address"

            case shippingAddress = "shipping_address"

            case orderValue = "order_value"

            case shipment

            case coupon

            case orderPriority = "order_priority"

            case items

            case payment

            case deliveryCharges = "delivery_charges"

            case codCharges = "cod_charges"

            case bags

            case affiliateOrderId = "affiliate_order_id"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.discount = discount

            self.paymentMode = paymentMode

            self.user = user

            self.billingAddress = billingAddress

            self.shippingAddress = shippingAddress

            self.orderValue = orderValue

            self.shipment = shipment

            self.coupon = coupon

            self.orderPriority = orderPriority

            self.items = items

            self.payment = payment

            self.deliveryCharges = deliveryCharges

            self.codCharges = codCharges

            self.bags = bags

            self.affiliateOrderId = affiliateOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Double.self, forKey: .discount)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            user = try container.decode(UserData.self, forKey: .user)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

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
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
        }
    }
}
