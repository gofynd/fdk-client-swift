

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: OrderManage
     */

    class OrderInfo: Codable {
        public var paymentMode: String

        public var billingAddress: OrderUser

        public var payment: [String: Any]?

        public var discount: Double

        public var codCharges: Double

        public var shippingAddress: OrderUser

        public var deliveryCharges: Double

        public var affiliateOrderId: String?

        public var coupon: String?

        public var items: [String: Any]

        public var orderValue: Double

        public var orderPriority: OrderPriority?

        public var bags: [AffiliateBag]

        public var shipment: ShipmentData?

        public var user: UserData

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case billingAddress = "billing_address"

            case payment

            case discount

            case codCharges = "cod_charges"

            case shippingAddress = "shipping_address"

            case deliveryCharges = "delivery_charges"

            case affiliateOrderId = "affiliate_order_id"

            case coupon

            case items

            case orderValue = "order_value"

            case orderPriority = "order_priority"

            case bags

            case shipment

            case user
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.paymentMode = paymentMode

            self.billingAddress = billingAddress

            self.payment = payment

            self.discount = discount

            self.codCharges = codCharges

            self.shippingAddress = shippingAddress

            self.deliveryCharges = deliveryCharges

            self.affiliateOrderId = affiliateOrderId

            self.coupon = coupon

            self.items = items

            self.orderValue = orderValue

            self.orderPriority = orderPriority

            self.bags = bags

            self.shipment = shipment

            self.user = user
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            do {
                payment = try container.decode([String: Any].self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

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

            items = try container.decode([String: Any].self, forKey: .items)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

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

            user = try container.decode(UserData.self, forKey: .user)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}
