

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var billingAddress: OrderUser

        public var coupon: String?

        public var paymentMode: String

        public var shippingAddress: OrderUser

        public var items: [String: Any]

        public var shipment: ShipmentData?

        public var deliveryCharges: Double

        public var discount: Double

        public var bags: [AffiliateBag]

        public var codCharges: Double

        public var affiliateOrderId: String?

        public var user: UserData

        public var payment: [String: Any]?

        public var orderValue: Double

        public var orderPriority: OrderPriority?

        public enum CodingKeys: String, CodingKey {
            case billingAddress = "billing_address"

            case coupon

            case paymentMode = "payment_mode"

            case shippingAddress = "shipping_address"

            case items

            case shipment

            case deliveryCharges = "delivery_charges"

            case discount

            case bags

            case codCharges = "cod_charges"

            case affiliateOrderId = "affiliate_order_id"

            case user

            case payment

            case orderValue = "order_value"

            case orderPriority = "order_priority"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.billingAddress = billingAddress

            self.coupon = coupon

            self.paymentMode = paymentMode

            self.shippingAddress = shippingAddress

            self.items = items

            self.shipment = shipment

            self.deliveryCharges = deliveryCharges

            self.discount = discount

            self.bags = bags

            self.codCharges = codCharges

            self.affiliateOrderId = affiliateOrderId

            self.user = user

            self.payment = payment

            self.orderValue = orderValue

            self.orderPriority = orderPriority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            discount = try container.decode(Double.self, forKey: .discount)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode(UserData.self, forKey: .user)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

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

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)
        }
    }
}
