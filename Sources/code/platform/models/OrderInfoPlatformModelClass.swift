

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var affiliateOrderId: String?

        public var items: [String: Any]

        public var coupon: String?

        public var orderValue: Double

        public var deliveryCharges: Double

        public var bags: [AffiliateBag]

        public var billingAddress: OrderUser

        public var codCharges: Double

        public var shippingAddress: OrderUser

        public var user: UserData

        public var paymentMode: String

        public var payment: [String: Any]?

        public var discount: Double

        public var shipment: ShipmentData?

        public var orderPriority: OrderPriority?

        public enum CodingKeys: String, CodingKey {
            case affiliateOrderId = "affiliate_order_id"

            case items

            case coupon

            case orderValue = "order_value"

            case deliveryCharges = "delivery_charges"

            case bags

            case billingAddress = "billing_address"

            case codCharges = "cod_charges"

            case shippingAddress = "shipping_address"

            case user

            case paymentMode = "payment_mode"

            case payment

            case discount

            case shipment

            case orderPriority = "order_priority"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.affiliateOrderId = affiliateOrderId

            self.items = items

            self.coupon = coupon

            self.orderValue = orderValue

            self.deliveryCharges = deliveryCharges

            self.bags = bags

            self.billingAddress = billingAddress

            self.codCharges = codCharges

            self.shippingAddress = shippingAddress

            self.user = user

            self.paymentMode = paymentMode

            self.payment = payment

            self.discount = discount

            self.shipment = shipment

            self.orderPriority = orderPriority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            user = try container.decode(UserData.self, forKey: .user)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)
        }
    }
}
