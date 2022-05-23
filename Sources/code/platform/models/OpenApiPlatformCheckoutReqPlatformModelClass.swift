

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var couponValue: Double

        public var deliveryCharges: Double

        public var shippingAddress: ShippingAddress?

        public var comment: String?

        public var codCharges: Double

        public var couponCode: String

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var cartValue: Double

        public var paymentMode: String?

        public var employeeDiscount: [String: Any]?

        public var orderId: String?

        public var affiliateOrderId: String?

        public var loyaltyDiscount: Double?

        public var billingAddress: ShippingAddress

        public var cashbackApplied: Double

        public var currencyCode: String?

        public var cartItems: [OpenApiOrderItem]

        public var gstin: String?

        public var files: [OpenApiFiles]?

        public var coupon: String?

        public enum CodingKeys: String, CodingKey {
            case couponValue = "coupon_value"

            case deliveryCharges = "delivery_charges"

            case shippingAddress = "shipping_address"

            case comment

            case codCharges = "cod_charges"

            case couponCode = "coupon_code"

            case paymentMethods = "payment_methods"

            case cartValue = "cart_value"

            case paymentMode = "payment_mode"

            case employeeDiscount = "employee_discount"

            case orderId = "order_id"

            case affiliateOrderId = "affiliate_order_id"

            case loyaltyDiscount = "loyalty_discount"

            case billingAddress = "billing_address"

            case cashbackApplied = "cashback_applied"

            case currencyCode = "currency_code"

            case cartItems = "cart_items"

            case gstin

            case files

            case coupon
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, comment: String? = nil, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, gstin: String? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.couponValue = couponValue

            self.deliveryCharges = deliveryCharges

            self.shippingAddress = shippingAddress

            self.comment = comment

            self.codCharges = codCharges

            self.couponCode = couponCode

            self.paymentMethods = paymentMethods

            self.cartValue = cartValue

            self.paymentMode = paymentMode

            self.employeeDiscount = employeeDiscount

            self.orderId = orderId

            self.affiliateOrderId = affiliateOrderId

            self.loyaltyDiscount = loyaltyDiscount

            self.billingAddress = billingAddress

            self.cashbackApplied = cashbackApplied

            self.currencyCode = currencyCode

            self.cartItems = cartItems

            self.gstin = gstin

            self.files = files

            self.coupon = coupon
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

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

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            couponCode = try container.decode(String.self, forKey: .couponCode)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)

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
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

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

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

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

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(coupon, forKey: .coupon)
        }
    }
}
