

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var affiliateOrderId: String?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var couponCode: String

        public var cartValue: Double

        public var files: [OpenApiFiles]?

        public var employeeDiscount: [String: Any]?

        public var paymentMode: String?

        public var currencyCode: String?

        public var comment: String?

        public var coupon: String?

        public var cashbackApplied: Double

        public var billingAddress: ShippingAddress

        public var loyaltyDiscount: Double?

        public var orderId: String?

        public var couponValue: Double

        public var shippingAddress: ShippingAddress?

        public var deliveryCharges: Double

        public var gstin: String?

        public var codCharges: Double

        public var cartItems: [OpenApiOrderItem]

        public enum CodingKeys: String, CodingKey {
            case affiliateOrderId = "affiliate_order_id"

            case paymentMethods = "payment_methods"

            case couponCode = "coupon_code"

            case cartValue = "cart_value"

            case files

            case employeeDiscount = "employee_discount"

            case paymentMode = "payment_mode"

            case currencyCode = "currency_code"

            case comment

            case coupon

            case cashbackApplied = "cashback_applied"

            case billingAddress = "billing_address"

            case loyaltyDiscount = "loyalty_discount"

            case orderId = "order_id"

            case couponValue = "coupon_value"

            case shippingAddress = "shipping_address"

            case deliveryCharges = "delivery_charges"

            case gstin

            case codCharges = "cod_charges"

            case cartItems = "cart_items"
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, comment: String? = nil, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, gstin: String? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.affiliateOrderId = affiliateOrderId

            self.paymentMethods = paymentMethods

            self.couponCode = couponCode

            self.cartValue = cartValue

            self.files = files

            self.employeeDiscount = employeeDiscount

            self.paymentMode = paymentMode

            self.currencyCode = currencyCode

            self.comment = comment

            self.coupon = coupon

            self.cashbackApplied = cashbackApplied

            self.billingAddress = billingAddress

            self.loyaltyDiscount = loyaltyDiscount

            self.orderId = orderId

            self.couponValue = couponValue

            self.shippingAddress = shippingAddress

            self.deliveryCharges = deliveryCharges

            self.gstin = gstin

            self.codCharges = codCharges

            self.cartItems = cartItems
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            couponCode = try container.decode(String.self, forKey: .couponCode)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

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
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

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
                comment = try container.decode(String.self, forKey: .comment)

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

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

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
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
        }
    }
}
