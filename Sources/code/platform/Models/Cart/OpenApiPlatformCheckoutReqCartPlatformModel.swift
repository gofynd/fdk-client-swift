

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var cartValue: Double

        public var orderId: String?

        public var loyaltyDiscount: Double?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var comment: String?

        public var employeeDiscount: [String: Any]?

        public var couponValue: Double

        public var cartItems: [OpenApiOrderItem]

        public var couponCode: String

        public var currencyCode: String?

        public var files: [OpenApiFiles]?

        public var paymentMode: String?

        public var billingAddress: ShippingAddress

        public var coupon: String?

        public var shippingAddress: ShippingAddress?

        public var gstin: String?

        public var affiliateOrderId: String?

        public var deliveryCharges: Double

        public var codCharges: Double

        public var cashbackApplied: Double

        public enum CodingKeys: String, CodingKey {
            case cartValue = "cart_value"

            case orderId = "order_id"

            case loyaltyDiscount = "loyalty_discount"

            case paymentMethods = "payment_methods"

            case comment

            case employeeDiscount = "employee_discount"

            case couponValue = "coupon_value"

            case cartItems = "cart_items"

            case couponCode = "coupon_code"

            case currencyCode = "currency_code"

            case files

            case paymentMode = "payment_mode"

            case billingAddress = "billing_address"

            case coupon

            case shippingAddress = "shipping_address"

            case gstin

            case affiliateOrderId = "affiliate_order_id"

            case deliveryCharges = "delivery_charges"

            case codCharges = "cod_charges"

            case cashbackApplied = "cashback_applied"
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, comment: String? = nil, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, gstin: String? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.cartValue = cartValue

            self.orderId = orderId

            self.loyaltyDiscount = loyaltyDiscount

            self.paymentMethods = paymentMethods

            self.comment = comment

            self.employeeDiscount = employeeDiscount

            self.couponValue = couponValue

            self.cartItems = cartItems

            self.couponCode = couponCode

            self.currencyCode = currencyCode

            self.files = files

            self.paymentMode = paymentMode

            self.billingAddress = billingAddress

            self.coupon = coupon

            self.shippingAddress = shippingAddress

            self.gstin = gstin

            self.affiliateOrderId = affiliateOrderId

            self.deliveryCharges = deliveryCharges

            self.codCharges = codCharges

            self.cashbackApplied = cashbackApplied
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

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

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            do {
                comment = try container.decode(String.self, forKey: .comment)

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

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            couponCode = try container.decode(String.self, forKey: .couponCode)

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

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

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
                gstin = try container.decode(String.self, forKey: .gstin)

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

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
        }
    }
}
