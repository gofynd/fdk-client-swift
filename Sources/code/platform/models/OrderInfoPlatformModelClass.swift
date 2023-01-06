

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var coupon: String?

        public var discount: Double

        public var billingAddress: OrderUser

        public var bags: [AffiliateBag]

        public var items: [String: Any]

        public var shippingAddress: OrderUser

        public var user: UserData

        public var orderValue: Double

        public var orderPriority: OrderPriority?

        public var payment: [String: Any]?

        public var shipment: ShipmentData?

        public var deliveryCharges: Double

        public var codCharges: Double

        public var paymentMode: String

        public var affiliateOrderId: String?

        public enum CodingKeys: String, CodingKey {
            case coupon

            case discount

            case billingAddress = "billing_address"

            case bags

            case items

            case shippingAddress = "shipping_address"

            case user

            case orderValue = "order_value"

            case orderPriority = "order_priority"

            case payment

            case shipment

            case deliveryCharges = "delivery_charges"

            case codCharges = "cod_charges"

            case paymentMode = "payment_mode"

            case affiliateOrderId = "affiliate_order_id"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.coupon = coupon

            self.discount = discount

            self.billingAddress = billingAddress

            self.bags = bags

            self.items = items

            self.shippingAddress = shippingAddress

            self.user = user

            self.orderValue = orderValue

            self.orderPriority = orderPriority

            self.payment = payment

            self.shipment = shipment

            self.deliveryCharges = deliveryCharges

            self.codCharges = codCharges

            self.paymentMode = paymentMode

            self.affiliateOrderId = affiliateOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            items = try container.decode([String: Any].self, forKey: .items)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            user = try container.decode(UserData.self, forKey: .user)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

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

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
        }
    }
}
