

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var employeeDiscount: [String: Any]?

        public var couponCode: String

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var cartItems: [OpenApiOrderItem]

        public var affiliateOrderId: String?

        public var currencyCode: String?

        public var shippingAddress: ShippingAddress?

        public var orderId: String?

        public var comment: String?

        public var couponValue: Double

        public var billingAddress: ShippingAddress

        public var gstin: String?

        public var coupon: String?

        public var cartValue: Double

        public var deliveryCharges: Double

        public var paymentMode: String?

        public var loyaltyDiscount: Double?

        public var files: [OpenApiFiles]?

        public var cashbackApplied: Double

        public var codCharges: Double

        public enum CodingKeys: String, CodingKey {
            case employeeDiscount = "employee_discount"

            case couponCode = "coupon_code"

            case paymentMethods = "payment_methods"

            case cartItems = "cart_items"

            case affiliateOrderId = "affiliate_order_id"

            case currencyCode = "currency_code"

            case shippingAddress = "shipping_address"

            case orderId = "order_id"

            case comment

            case couponValue = "coupon_value"

            case billingAddress = "billing_address"

            case gstin

            case coupon

            case cartValue = "cart_value"

            case deliveryCharges = "delivery_charges"

            case paymentMode = "payment_mode"

            case loyaltyDiscount = "loyalty_discount"

            case files

            case cashbackApplied = "cashback_applied"

            case codCharges = "cod_charges"
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, comment: String? = nil, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, gstin: String? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.employeeDiscount = employeeDiscount

            self.couponCode = couponCode

            self.paymentMethods = paymentMethods

            self.cartItems = cartItems

            self.affiliateOrderId = affiliateOrderId

            self.currencyCode = currencyCode

            self.shippingAddress = shippingAddress

            self.orderId = orderId

            self.comment = comment

            self.couponValue = couponValue

            self.billingAddress = billingAddress

            self.gstin = gstin

            self.coupon = coupon

            self.cartValue = cartValue

            self.deliveryCharges = deliveryCharges

            self.paymentMode = paymentMode

            self.loyaltyDiscount = loyaltyDiscount

            self.files = files

            self.cashbackApplied = cashbackApplied

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponCode = try container.decode(String.self, forKey: .couponCode)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

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

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            codCharges = try container.decode(Double.self, forKey: .codCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}
