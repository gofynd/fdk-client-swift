

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var couponValue: Double

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var paymentMode: String?

        public var currencyCode: String?

        public var loyaltyDiscount: Double?

        public var billingAddress: ShippingAddress

        public var shippingAddress: ShippingAddress?

        public var cartItems: [OpenApiOrderItem]

        public var orderId: String?

        public var deliveryCharges: Double

        public var couponCode: String

        public var cashbackApplied: Double

        public var codCharges: Double

        public var employeeDiscount: [String: Any]?

        public var cartValue: Double

        public var files: [OpenApiFiles]?

        public var affiliateOrderId: String?

        public var coupon: String?

        public enum CodingKeys: String, CodingKey {
            case couponValue = "coupon_value"

            case paymentMethods = "payment_methods"

            case paymentMode = "payment_mode"

            case currencyCode = "currency_code"

            case loyaltyDiscount = "loyalty_discount"

            case billingAddress = "billing_address"

            case shippingAddress = "shipping_address"

            case cartItems = "cart_items"

            case orderId = "order_id"

            case deliveryCharges = "delivery_charges"

            case couponCode = "coupon_code"

            case cashbackApplied = "cashback_applied"

            case codCharges = "cod_charges"

            case employeeDiscount = "employee_discount"

            case cartValue = "cart_value"

            case files

            case affiliateOrderId = "affiliate_order_id"

            case coupon
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.couponValue = couponValue

            self.paymentMethods = paymentMethods

            self.paymentMode = paymentMode

            self.currencyCode = currencyCode

            self.loyaltyDiscount = loyaltyDiscount

            self.billingAddress = billingAddress

            self.shippingAddress = shippingAddress

            self.cartItems = cartItems

            self.orderId = orderId

            self.deliveryCharges = deliveryCharges

            self.couponCode = couponCode

            self.cashbackApplied = cashbackApplied

            self.codCharges = codCharges

            self.employeeDiscount = employeeDiscount

            self.cartValue = cartValue

            self.files = files

            self.affiliateOrderId = affiliateOrderId

            self.coupon = coupon
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

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
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            do {
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            couponCode = try container.decode(String.self, forKey: .couponCode)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

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
                coupon = try container.decode(String.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(coupon, forKey: .coupon)
        }
    }
}
