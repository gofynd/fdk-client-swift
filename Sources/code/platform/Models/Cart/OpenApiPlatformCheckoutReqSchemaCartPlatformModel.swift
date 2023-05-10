

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiPlatformCheckoutReqSchema
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReqSchema: Codable {
        public var loyaltyDiscount: Double?

        public var deliveryCharges: Double

        public var couponValue: Double

        public var gstin: String?

        public var employeeDiscount: [String: Any]?

        public var codCharges: Double

        public var files: [OpenApiFilesSchema]?

        public var paymentMode: String?

        public var billingAddress: ShippingAddressSchema

        public var orderId: String?

        public var currencyCode: String?

        public var cashbackApplied: Double

        public var coupon: String?

        public var couponCode: String

        public var cartValue: Double

        public var comment: String?

        public var affiliateOrderId: String?

        public var shippingAddress: ShippingAddressSchema?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var cartItems: [OpenApiOrderItemSchema]

        public enum CodingKeys: String, CodingKey {
            case loyaltyDiscount = "loyalty_discount"

            case deliveryCharges = "delivery_charges"

            case couponValue = "coupon_value"

            case gstin

            case employeeDiscount = "employee_discount"

            case codCharges = "cod_charges"

            case files

            case paymentMode = "payment_mode"

            case billingAddress = "billing_address"

            case orderId = "order_id"

            case currencyCode = "currency_code"

            case cashbackApplied = "cashback_applied"

            case coupon

            case couponCode = "coupon_code"

            case cartValue = "cart_value"

            case comment

            case affiliateOrderId = "affiliate_order_id"

            case shippingAddress = "shipping_address"

            case paymentMethods = "payment_methods"

            case cartItems = "cart_items"
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddressSchema, cartItems: [OpenApiOrderItemSchema], cartValue: Double, cashbackApplied: Double, codCharges: Double, comment: String? = nil, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFilesSchema]? = nil, gstin: String? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddressSchema? = nil) {
            self.loyaltyDiscount = loyaltyDiscount

            self.deliveryCharges = deliveryCharges

            self.couponValue = couponValue

            self.gstin = gstin

            self.employeeDiscount = employeeDiscount

            self.codCharges = codCharges

            self.files = files

            self.paymentMode = paymentMode

            self.billingAddress = billingAddress

            self.orderId = orderId

            self.currencyCode = currencyCode

            self.cashbackApplied = cashbackApplied

            self.coupon = coupon

            self.couponCode = couponCode

            self.cartValue = cartValue

            self.comment = comment

            self.affiliateOrderId = affiliateOrderId

            self.shippingAddress = shippingAddress

            self.paymentMethods = paymentMethods

            self.cartItems = cartItems
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

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

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                files = try container.decode([OpenApiFilesSchema].self, forKey: .files)

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
                orderId = try container.decode(String.self, forKey: .orderId)

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

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponCode = try container.decode(String.self, forKey: .couponCode)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                comment = try container.decode(String.self, forKey: .comment)

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

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            cartItems = try container.decode([OpenApiOrderItemSchema].self, forKey: .cartItems)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
        }
    }
}
