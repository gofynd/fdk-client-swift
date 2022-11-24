

import Foundation
public extension PlatformClient {
    /*
         Model: OrderInfo
         Used By: OrderManage
     */

    class OrderInfo: Codable {
        public var shipment: ShipmentData?

        public var payment: [String: Any]?

        public var codCharges: Double

        public var orderValue: Double

        public var paymentMode: String

        public var bags: [AffiliateBag]

        public var affiliateOrderId: String?

        public var deliveryCharges: Double

        public var shippingAddress: OrderUser

        public var items: [String: Any]

        public var billingAddress: OrderUser

        public var user: UserData

        public var orderPriority: OrderPriority?

        public var coupon: String?

        public var discount: Double

        public enum CodingKeys: String, CodingKey {
            case shipment

            case payment

            case codCharges = "cod_charges"

            case orderValue = "order_value"

            case paymentMode = "payment_mode"

            case bags

            case affiliateOrderId = "affiliate_order_id"

            case deliveryCharges = "delivery_charges"

            case shippingAddress = "shipping_address"

            case items

            case billingAddress = "billing_address"

            case user

            case orderPriority = "order_priority"

            case coupon

            case discount
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            self.shipment = shipment

            self.payment = payment

            self.codCharges = codCharges

            self.orderValue = orderValue

            self.paymentMode = paymentMode

            self.bags = bags

            self.affiliateOrderId = affiliateOrderId

            self.deliveryCharges = deliveryCharges

            self.shippingAddress = shippingAddress

            self.items = items

            self.billingAddress = billingAddress

            self.user = user

            self.orderPriority = orderPriority

            self.coupon = coupon

            self.discount = discount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipment = try container.decode(ShipmentData.self, forKey: .shipment)

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

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            bags = try container.decode([AffiliateBag].self, forKey: .bags)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)

            items = try container.decode([String: Any].self, forKey: .items)

            billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)

            user = try container.decode(UserData.self, forKey: .user)

            do {
                orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)

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

            discount = try container.decode(Double.self, forKey: .discount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(discount, forKey: .discount)
        }
    }
}
