

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var payment: [String: Any]?

        public var affiliateOrderId: String?

        public var shipment: ShipmentData?

        public var deliveryCharges: Double

        public var paymentMode: String

        public var bags: [AffiliateBag]

        public var items: [String: Any]

        public var coupon: String?

        public var codCharges: Double

        public var billingAddress: OrderUser

        public var discount: Double

        public var user: UserData

        public var orderValue: Double

        public var shippingAddress: OrderUser

        public var orderPriority: OrderPriority?

        public enum CodingKeys: String, CodingKey {
            case payment

            case affiliateOrderId = "affiliate_order_id"

            case shipment

            case deliveryCharges = "delivery_charges"

            case paymentMode = "payment_mode"

            case bags

            case items

            case coupon

            case codCharges = "cod_charges"

            case billingAddress = "billing_address"

            case discount

            case user

            case orderValue = "order_value"

            case shippingAddress = "shipping_address"

            case orderPriority = "order_priority"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.payment = payment

            self.affiliateOrderId = affiliateOrderId

            self.shipment = shipment

            self.deliveryCharges = deliveryCharges

            self.paymentMode = paymentMode

            self.bags = bags

            self.items = items

            self.coupon = coupon

            self.codCharges = codCharges

            self.billingAddress = billingAddress

            self.discount = discount

            self.user = user

            self.orderValue = orderValue

            self.shippingAddress = shippingAddress

            self.orderPriority = orderPriority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

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

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            items = try container.decode([String: Any].self, forKey: .items)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            discount = try container.decode(Double.self, forKey: .discount)

            user = try container.decode(UserData.self, forKey: .user)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)
        }
    }
}
