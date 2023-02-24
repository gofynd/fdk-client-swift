

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var cartValue: Double

        public var deliveryCharges: Double

        public var couponCode: String

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var comment: String?

        public var cartItems: [OpenApiOrderItem]

        public var affiliateOrderId: String?

        public var paymentMode: String?

        public var loyaltyDiscount: Double?

        public var billingAddress: ShippingAddress

        public var codCharges: Double

        public var currencyCode: String?

        public var orderId: String?

        public var couponValue: Double

        public var gstin: String?

        public var shippingAddress: ShippingAddress?

        public var employeeDiscount: [String: Any]?

        public var coupon: String?

        public var cashbackApplied: Double

        public var files: [OpenApiFiles]?

        public enum CodingKeys: String, CodingKey {
            case cartValue = "cart_value"

            case deliveryCharges = "delivery_charges"

            case couponCode = "coupon_code"

            case paymentMethods = "payment_methods"

            case comment

            case cartItems = "cart_items"

            case affiliateOrderId = "affiliate_order_id"

            case paymentMode = "payment_mode"

            case loyaltyDiscount = "loyalty_discount"

            case billingAddress = "billing_address"

            case codCharges = "cod_charges"

            case currencyCode = "currency_code"

            case orderId = "order_id"

            case couponValue = "coupon_value"

            case gstin

            case shippingAddress = "shipping_address"

            case employeeDiscount = "employee_discount"

            case coupon

            case cashbackApplied = "cashback_applied"

            case files
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, comment: String? = nil, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, gstin: String? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.cartValue = cartValue

            self.deliveryCharges = deliveryCharges

            self.couponCode = couponCode

            self.paymentMethods = paymentMethods

            self.comment = comment

            self.cartItems = cartItems

            self.affiliateOrderId = affiliateOrderId

            self.paymentMode = paymentMode

            self.loyaltyDiscount = loyaltyDiscount

            self.billingAddress = billingAddress

            self.codCharges = codCharges

            self.currencyCode = currencyCode

            self.orderId = orderId

            self.couponValue = couponValue

            self.gstin = gstin

            self.shippingAddress = shippingAddress

            self.employeeDiscount = employeeDiscount

            self.coupon = coupon

            self.cashbackApplied = cashbackApplied

            self.files = files
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            couponCode = try container.decode(String.self, forKey: .couponCode)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

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

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

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
                employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)

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

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(files, forKey: .files)
        }
    }
}
