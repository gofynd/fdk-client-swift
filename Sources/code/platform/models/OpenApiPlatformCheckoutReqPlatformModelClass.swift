

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var paymentMode: String?

        public var cartValue: Double

        public var shippingAddress: ShippingAddress?

        public var employeeDiscount: [String: Any]?

        public var cartItems: [OpenApiOrderItem]

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var affiliateOrderId: String?

        public var orderId: String?

        public var couponCode: String

        public var deliveryCharges: Double

        public var coupon: String?

        public var codCharges: Double

        public var comment: String?

        public var loyaltyDiscount: Double?

        public var gstin: String?

        public var cashbackApplied: Double

        public var couponValue: Double

        public var billingAddress: ShippingAddress

        public var currencyCode: String?

        public var files: [OpenApiFiles]?

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case cartValue = "cart_value"

            case shippingAddress = "shipping_address"

            case employeeDiscount = "employee_discount"

            case cartItems = "cart_items"

            case paymentMethods = "payment_methods"

            case affiliateOrderId = "affiliate_order_id"

            case orderId = "order_id"

            case couponCode = "coupon_code"

            case deliveryCharges = "delivery_charges"

            case coupon

            case codCharges = "cod_charges"

            case comment

            case loyaltyDiscount = "loyalty_discount"

            case gstin

            case cashbackApplied = "cashback_applied"

            case couponValue = "coupon_value"

            case billingAddress = "billing_address"

            case currencyCode = "currency_code"

            case files
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, comment: String? = nil, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, gstin: String? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.paymentMode = paymentMode

            self.cartValue = cartValue

            self.shippingAddress = shippingAddress

            self.employeeDiscount = employeeDiscount

            self.cartItems = cartItems

            self.paymentMethods = paymentMethods

            self.affiliateOrderId = affiliateOrderId

            self.orderId = orderId

            self.couponCode = couponCode

            self.deliveryCharges = deliveryCharges

            self.coupon = coupon

            self.codCharges = codCharges

            self.comment = comment

            self.loyaltyDiscount = loyaltyDiscount

            self.gstin = gstin

            self.cashbackApplied = cashbackApplied

            self.couponValue = couponValue

            self.billingAddress = billingAddress

            self.currencyCode = currencyCode

            self.files = files
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

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

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

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

            couponCode = try container.decode(String.self, forKey: .couponCode)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                comment = try container.decode(String.self, forKey: .comment)

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
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(files, forKey: .files)
        }
    }
}
