

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var bags: [AffiliateBag]

        public var shippingAddress: OrderUser

        public var payment: [String: Any]?

        public var codCharges: Double

        public var items: [String: Any]

        public var shipment: ShipmentData?

        public var deliveryCharges: Double

        public var discount: Double

        public var paymentMode: String

        public var coupon: String?

        public var billingAddress: OrderUser

        public var user: UserData

        public var affiliateOrderId: String?

        public var orderValue: Double

        public var orderPriority: OrderPriority?

        public enum CodingKeys: String, CodingKey {
            case bags

            case shippingAddress = "shipping_address"

            case payment

            case codCharges = "cod_charges"

            case items

            case shipment

            case deliveryCharges = "delivery_charges"

            case discount

            case paymentMode = "payment_mode"

            case coupon

            case billingAddress = "billing_address"

            case user

            case affiliateOrderId = "affiliate_order_id"

            case orderValue = "order_value"

            case orderPriority = "order_priority"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.bags = bags

            self.shippingAddress = shippingAddress

            self.payment = payment

            self.codCharges = codCharges

            self.items = items

            self.shipment = shipment

            self.deliveryCharges = deliveryCharges

            self.discount = discount

            self.paymentMode = paymentMode

            self.coupon = coupon

            self.billingAddress = billingAddress

            self.user = user

            self.affiliateOrderId = affiliateOrderId

            self.orderValue = orderValue

            self.orderPriority = orderPriority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            discount = try container.decode(Double.self, forKey: .discount)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            user = try container.decode(UserData.self, forKey: .user)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)
        }
    }
}
