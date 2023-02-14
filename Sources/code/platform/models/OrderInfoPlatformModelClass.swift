

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var coupon: String?

        public var affiliateOrderId: String?

        public var orderPriority: OrderPriority?

        public var payment: [String: Any]?

        public var shipment: ShipmentData?

        public var discount: Double

        public var deliveryCharges: Double

        public var paymentMode: String

        public var shippingAddress: OrderUser

        public var items: [String: Any]

        public var orderValue: Double

        public var user: UserData

        public var bags: [AffiliateBag]

        public var codCharges: Double

        public var billingAddress: OrderUser

        public enum CodingKeys: String, CodingKey {
            case coupon

            case affiliateOrderId = "affiliate_order_id"

            case orderPriority = "order_priority"

            case payment

            case shipment

            case discount

            case deliveryCharges = "delivery_charges"

            case paymentMode = "payment_mode"

            case shippingAddress = "shipping_address"

            case items

            case orderValue = "order_value"

            case user

            case bags

            case codCharges = "cod_charges"

            case billingAddress = "billing_address"
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.coupon = coupon

            self.affiliateOrderId = affiliateOrderId

            self.orderPriority = orderPriority

            self.payment = payment

            self.shipment = shipment

            self.discount = discount

            self.deliveryCharges = deliveryCharges

            self.paymentMode = paymentMode

            self.shippingAddress = shippingAddress

            self.items = items

            self.orderValue = orderValue

            self.user = user

            self.bags = bags

            self.codCharges = codCharges

            self.billingAddress = billingAddress
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

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

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            items = try container.decode([String: Any].self, forKey: .items)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            user = try container.decode(UserData.self, forKey: .user)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
        }
    }
}
