

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var paymentMethods: [MultiTenderPaymentMethod]

        public var cartItems: [OpenApiOrderItem]

        public var couponValue: Double

        public var affiliateOrderId: String?

        public var paymentMode: String?

        public var loyaltyDiscount: Double?

        public var cashbackApplied: Double

        public var codCharges: Double

        public var billingAddress: ShippingAddress

        public var comment: String?

        public var currencyCode: String?

        public var employeeDiscount: [String: Any]?

        public var gstin: String?

        public var shippingAddress: ShippingAddress?

        public var couponCode: String

        public var coupon: String?

        public var files: [OpenApiFiles]?

        public var deliveryCharges: Double

        public var orderId: String?

        public var cartValue: Double

        public enum CodingKeys: String, CodingKey {
            case paymentMethods = "payment_methods"

            case cartItems = "cart_items"

            case couponValue = "coupon_value"

            case affiliateOrderId = "affiliate_order_id"

            case paymentMode = "payment_mode"

            case loyaltyDiscount = "loyalty_discount"

            case cashbackApplied = "cashback_applied"

            case codCharges = "cod_charges"

            case billingAddress = "billing_address"

            case comment

            case currencyCode = "currency_code"

            case employeeDiscount = "employee_discount"

            case gstin

            case shippingAddress = "shipping_address"

            case couponCode = "coupon_code"

            case coupon

            case files

            case deliveryCharges = "delivery_charges"

            case orderId = "order_id"

            case cartValue = "cart_value"
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, comment: String? = nil, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, gstin: String? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.paymentMethods = paymentMethods

            self.cartItems = cartItems

            self.couponValue = couponValue

            self.affiliateOrderId = affiliateOrderId

            self.paymentMode = paymentMode

            self.loyaltyDiscount = loyaltyDiscount

            self.cashbackApplied = cashbackApplied

            self.codCharges = codCharges

            self.billingAddress = billingAddress

            self.comment = comment

            self.currencyCode = currencyCode

            self.employeeDiscount = employeeDiscount

            self.gstin = gstin

            self.shippingAddress = shippingAddress

            self.couponCode = couponCode

            self.coupon = coupon

            self.files = files

            self.deliveryCharges = deliveryCharges

            self.orderId = orderId

            self.cartValue = cartValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

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

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            do {
                comment = try container.decode(String.self, forKey: .comment)

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
                employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)

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

            do {
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponCode = try container.decode(String.self, forKey: .couponCode)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

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

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartValue = try container.decode(Double.self, forKey: .cartValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)
        }
    }
}
