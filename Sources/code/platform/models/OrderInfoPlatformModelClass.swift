

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var deliveryCharges: Double

        public var codCharges: Double

        public var shippingAddress: OrderUser

        public var orderPriority: OrderPriority?

        public var billingAddress: OrderUser

        public var coupon: String?

        public var shipment: ShipmentData?

        public var bags: [AffiliateBag]

        public var payment: [String: Any]?

        public var orderValue: Double

        public var user: UserData

        public var items: [String: Any]

        public var paymentMode: String

        public var discount: Double

        public var affiliateOrderId: String?

        public enum CodingKeys: String, CodingKey {
            case deliveryCharges = "delivery_charges"

            case codCharges = "cod_charges"

            case shippingAddress = "shipping_address"

            case orderPriority = "order_priority"

            case billingAddress = "billing_address"

            case coupon

            case shipment

            case bags

            case payment

            case orderValue = "order_value"

            case user

            case items

            case paymentMode = "payment_mode"

            case discount

            case affiliateOrderId = "affiliate_order_id"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.deliveryCharges = deliveryCharges

            self.codCharges = codCharges

            self.shippingAddress = shippingAddress

            self.orderPriority = orderPriority

            self.billingAddress = billingAddress

            self.coupon = coupon

            self.shipment = shipment

            self.bags = bags

            self.payment = payment

            self.orderValue = orderValue

            self.user = user

            self.items = items

            self.paymentMode = paymentMode

            self.discount = discount

            self.affiliateOrderId = affiliateOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

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

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            user = try container.decode(UserData.self, forKey: .user)

            items = try container.decode([String: Any].self, forKey: .items)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
        }
    }
}
