

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiPlatformCheckoutReqSchema
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReqSchema: Codable {
        public var cashbackApplied: Double

        public var currencyCode: String?

        public var couponCode: String

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var employeeDiscount: [String: Any]?

        public var cartValue: Double

        public var files: [OpenApiFilesSchema]?

        public var couponValue: Double

        public var codCharges: Double

        public var loyaltyDiscount: Double?

        public var gstin: String?

        public var coupon: String?

        public var orderId: String?

        public var paymentMode: String?

        public var billingAddress: ShippingAddressSchema

        public var shippingAddress: ShippingAddressSchema?

        public var cartItems: [OpenApiOrderItemSchema]

        public var affiliateOrderId: String?

        public var deliveryCharges: Double

        public var comment: String?

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case currencyCode = "currency_code"

            case couponCode = "coupon_code"

            case paymentMethods = "payment_methods"

            case employeeDiscount = "employee_discount"

            case cartValue = "cart_value"

            case files

            case couponValue = "coupon_value"

            case codCharges = "cod_charges"

            case loyaltyDiscount = "loyalty_discount"

            case gstin

            case coupon

            case orderId = "order_id"

            case paymentMode = "payment_mode"

            case billingAddress = "billing_address"

            case shippingAddress = "shipping_address"

            case cartItems = "cart_items"

            case affiliateOrderId = "affiliate_order_id"

            case deliveryCharges = "delivery_charges"

            case comment
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddressSchema, cartItems: [OpenApiOrderItemSchema], cartValue: Double, cashbackApplied: Double, codCharges: Double, comment: String? = nil, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFilesSchema]? = nil, gstin: String? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddressSchema? = nil) {
            self.cashbackApplied = cashbackApplied

            self.currencyCode = currencyCode

            self.couponCode = couponCode

            self.paymentMethods = paymentMethods

            self.employeeDiscount = employeeDiscount

            self.cartValue = cartValue

            self.files = files

            self.couponValue = couponValue

            self.codCharges = codCharges

            self.loyaltyDiscount = loyaltyDiscount

            self.gstin = gstin

            self.coupon = coupon

            self.orderId = orderId

            self.paymentMode = paymentMode

            self.billingAddress = billingAddress

            self.shippingAddress = shippingAddress

            self.cartItems = cartItems

            self.affiliateOrderId = affiliateOrderId

            self.deliveryCharges = deliveryCharges

            self.comment = comment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponCode = try container.decode(String.self, forKey: .couponCode)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            do {
                employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                files = try container.decode([OpenApiFilesSchema].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

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
                coupon = try container.decode(String.self, forKey: .coupon)

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
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddress = try container.decode(ShippingAddressSchema.self, forKey: .billingAddress)

            do {
                shippingAddress = try container.decode(ShippingAddressSchema.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartItems = try container.decode([OpenApiOrderItemSchema].self, forKey: .cartItems)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encode(comment, forKey: .comment)
        }
    }
}
