

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var couponCode: String

        public var loyaltyDiscount: Double?

        public var files: [OpenApiFiles]?

        public var cartValue: Double

        public var cartItems: [OpenApiOrderItem]

        public var coupon: String?

        public var billingAddress: ShippingAddress

        public var comment: String?

        public var paymentMode: String?

        public var affiliateOrderId: String?

        public var cashbackApplied: Double

        public var orderId: String?

        public var deliveryCharges: Double

        public var shippingAddress: ShippingAddress?

        public var couponValue: Double

        public var employeeDiscount: [String: Any]?

        public var gstin: String?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var codCharges: Double

        public var currencyCode: String?

        public enum CodingKeys: String, CodingKey {
            case couponCode = "coupon_code"

            case loyaltyDiscount = "loyalty_discount"

            case files

            case cartValue = "cart_value"

            case cartItems = "cart_items"

            case coupon

            case billingAddress = "billing_address"

            case comment

            case paymentMode = "payment_mode"

            case affiliateOrderId = "affiliate_order_id"

            case cashbackApplied = "cashback_applied"

            case orderId = "order_id"

            case deliveryCharges = "delivery_charges"

            case shippingAddress = "shipping_address"

            case couponValue = "coupon_value"

            case employeeDiscount = "employee_discount"

            case gstin

            case paymentMethods = "payment_methods"

            case codCharges = "cod_charges"

            case currencyCode = "currency_code"
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, comment: String? = nil, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, gstin: String? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.couponCode = couponCode

            self.loyaltyDiscount = loyaltyDiscount

            self.files = files

            self.cartValue = cartValue

            self.cartItems = cartItems

            self.coupon = coupon

            self.billingAddress = billingAddress

            self.comment = comment

            self.paymentMode = paymentMode

            self.affiliateOrderId = affiliateOrderId

            self.cashbackApplied = cashbackApplied

            self.orderId = orderId

            self.deliveryCharges = deliveryCharges

            self.shippingAddress = shippingAddress

            self.couponValue = couponValue

            self.employeeDiscount = employeeDiscount

            self.gstin = gstin

            self.paymentMethods = paymentMethods

            self.codCharges = codCharges

            self.currencyCode = currencyCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponCode = try container.decode(String.self, forKey: .couponCode)

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

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            do {
                comment = try container.decode(String.self, forKey: .comment)

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
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

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

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }
}
