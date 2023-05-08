

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiPlatformCheckoutReqSchema
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReqSchema: Codable {
        public var cartValue: Double

        public var cartItems: [OpenApiOrderItemSchema]

        public var coupon: String?

        public var comment: String?

        public var loyaltyDiscount: Double?

        public var couponCode: String

        public var orderId: String?

        public var deliveryCharges: Double

        public var paymentMode: String?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var currencyCode: String?

        public var employeeDiscount: [String: Any]?

        public var billingAddress: ShippingAddressSchema

        public var files: [OpenApiFilesSchema]?

        public var couponValue: Double

        public var gstin: String?

        public var affiliateOrderId: String?

        public var shippingAddress: ShippingAddressSchema?

        public var cashbackApplied: Double

        public var codCharges: Double

        public enum CodingKeys: String, CodingKey {
            case cartValue = "cart_value"

            case cartItems = "cart_items"

            case coupon

            case comment

            case loyaltyDiscount = "loyalty_discount"

            case couponCode = "coupon_code"

            case orderId = "order_id"

            case deliveryCharges = "delivery_charges"

            case paymentMode = "payment_mode"

            case paymentMethods = "payment_methods"

            case currencyCode = "currency_code"

            case employeeDiscount = "employee_discount"

            case billingAddress = "billing_address"

            case files

            case couponValue = "coupon_value"

            case gstin

            case affiliateOrderId = "affiliate_order_id"

            case shippingAddress = "shipping_address"

            case cashbackApplied = "cashback_applied"

            case codCharges = "cod_charges"
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddressSchema, cartItems: [OpenApiOrderItemSchema], cartValue: Double, cashbackApplied: Double, codCharges: Double, comment: String? = nil, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFilesSchema]? = nil, gstin: String? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddressSchema? = nil) {
            self.cartValue = cartValue

            self.cartItems = cartItems

            self.coupon = coupon

            self.comment = comment

            self.loyaltyDiscount = loyaltyDiscount

            self.couponCode = couponCode

            self.orderId = orderId

            self.deliveryCharges = deliveryCharges

            self.paymentMode = paymentMode

            self.paymentMethods = paymentMethods

            self.currencyCode = currencyCode

            self.employeeDiscount = employeeDiscount

            self.billingAddress = billingAddress

            self.files = files

            self.couponValue = couponValue

            self.gstin = gstin

            self.affiliateOrderId = affiliateOrderId

            self.shippingAddress = shippingAddress

            self.cashbackApplied = cashbackApplied

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            cartItems = try container.decode([OpenApiOrderItemSchema].self, forKey: .cartItems)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

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
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponCode = try container.decode(String.self, forKey: .couponCode)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

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

            billingAddress = try container.decode(ShippingAddressSchema.self, forKey: .billingAddress)

            do {
                files = try container.decode([OpenApiFilesSchema].self, forKey: .files)

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
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shippingAddress = try container.decode(ShippingAddressSchema.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            codCharges = try container.decode(Double.self, forKey: .codCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}
