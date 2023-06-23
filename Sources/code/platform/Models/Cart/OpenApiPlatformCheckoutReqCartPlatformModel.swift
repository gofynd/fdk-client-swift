

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var files: [OpenApiFiles]?

        public var paymentMode: String?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var orderId: String?

        public var couponCode: String

        public var comment: String?

        public var cartItems: [OpenApiOrderItem]

        public var currencyCode: String?

        public var deliveryCharges: Double

        public var employeeDiscount: [String: Any]?

        public var coupon: String?

        public var billingAddress: ShippingAddress

        public var cashbackApplied: Double

        public var codCharges: Double

        public var cartValue: Double

        public var affiliateOrderId: String?

        public var couponValue: Double

        public var loyaltyDiscount: Double?

        public var gstin: String?

        public var shippingAddress: ShippingAddress?

        public enum CodingKeys: String, CodingKey {
            case files

            case paymentMode = "payment_mode"

            case paymentMethods = "payment_methods"

            case orderId = "order_id"

            case couponCode = "coupon_code"

            case comment

            case cartItems = "cart_items"

            case currencyCode = "currency_code"

            case deliveryCharges = "delivery_charges"

            case employeeDiscount = "employee_discount"

            case coupon

            case billingAddress = "billing_address"

            case cashbackApplied = "cashback_applied"

            case codCharges = "cod_charges"

            case cartValue = "cart_value"

            case affiliateOrderId = "affiliate_order_id"

            case couponValue = "coupon_value"

            case loyaltyDiscount = "loyalty_discount"

            case gstin

            case shippingAddress = "shipping_address"
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, comment: String? = nil, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, gstin: String? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.files = files

            self.paymentMode = paymentMode

            self.paymentMethods = paymentMethods

            self.orderId = orderId

            self.couponCode = couponCode

            self.comment = comment

            self.cartItems = cartItems

            self.currencyCode = currencyCode

            self.deliveryCharges = deliveryCharges

            self.employeeDiscount = employeeDiscount

            self.coupon = coupon

            self.billingAddress = billingAddress

            self.cashbackApplied = cashbackApplied

            self.codCharges = codCharges

            self.cartValue = cartValue

            self.affiliateOrderId = affiliateOrderId

            self.couponValue = couponValue

            self.loyaltyDiscount = loyaltyDiscount

            self.gstin = gstin

            self.shippingAddress = shippingAddress
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponCode = try container.decode(String.self, forKey: .couponCode)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

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

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

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

            do {
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
        }
    }
}
