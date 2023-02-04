

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: Order
     */

    class OrderInfo: Codable {
        public var payment: [String: Any]?

        public var orderValue: Double

        public var deliveryCharges: Double

        public var affiliateOrderId: String?

        public var paymentMode: String

        public var user: UserData

        public var codCharges: Double

        public var orderPriority: OrderPriority?

        public var billingAddress: OrderUser

        public var discount: Double

        public var items: [String: Any]

        public var shippingAddress: OrderUser

        public var shipment: ShipmentData?

        public var coupon: String?

        public var bags: [AffiliateBag]

        public enum CodingKeys: String, CodingKey {
            case payment

            case orderValue = "order_value"

            case deliveryCharges = "delivery_charges"

            case affiliateOrderId = "affiliate_order_id"

            case paymentMode = "payment_mode"

            case user

            case codCharges = "cod_charges"

            case orderPriority = "order_priority"

            case billingAddress = "billing_address"

            case discount

            case items

            case shippingAddress = "shipping_address"

            case shipment

            case coupon

            case bags
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.payment = payment

            self.orderValue = orderValue

            self.deliveryCharges = deliveryCharges

            self.affiliateOrderId = affiliateOrderId

            self.paymentMode = paymentMode

            self.user = user

            self.codCharges = codCharges

            self.orderPriority = orderPriority

            self.billingAddress = billingAddress

            self.discount = discount

            self.items = items

            self.shippingAddress = shippingAddress

            self.shipment = shipment

            self.coupon = coupon

            self.bags = bags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            user = try container.decode(UserData.self, forKey: .user)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            discount = try container.decode(Double.self, forKey: .discount)

            items = try container.decode([String: Any].self, forKey: .items)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

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

            bags = try container.decode([AffiliateBag].self, forKey: .bags)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(bags, forKey: .bags)
        }
    }
}
