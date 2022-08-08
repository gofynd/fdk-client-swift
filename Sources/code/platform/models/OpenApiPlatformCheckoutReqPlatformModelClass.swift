

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var employeeDiscount: [String: Any]?

        public var loyaltyDiscount: Double?

        public var orderId: String?

        public var affiliateOrderId: String?

        public var billingAddress: ShippingAddress

        public var codCharges: Double

        public var currencyCode: String?

        public var couponCode: String

        public var files: [OpenApiFiles]?

        public var couponValue: Double

        public var deliveryCharges: Double

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var shippingAddress: ShippingAddress?

        public var cartValue: Double

        public var cashbackApplied: Double

        public var cartItems: [OpenApiOrderItem]

        public var paymentMode: String?

        public var coupon: String?

        public enum CodingKeys: String, CodingKey {
            case employeeDiscount = "employee_discount"

            case loyaltyDiscount = "loyalty_discount"

            case orderId = "order_id"

            case affiliateOrderId = "affiliate_order_id"

            case billingAddress = "billing_address"

            case codCharges = "cod_charges"

            case currencyCode = "currency_code"

            case couponCode = "coupon_code"

            case files

            case couponValue = "coupon_value"

            case deliveryCharges = "delivery_charges"

            case paymentMethods = "payment_methods"

            case shippingAddress = "shipping_address"

            case cartValue = "cart_value"

            case cashbackApplied = "cashback_applied"

            case cartItems = "cart_items"

            case paymentMode = "payment_mode"

            case coupon
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.employeeDiscount = employeeDiscount

            self.loyaltyDiscount = loyaltyDiscount

            self.orderId = orderId

            self.affiliateOrderId = affiliateOrderId

            self.billingAddress = billingAddress

            self.codCharges = codCharges

            self.currencyCode = currencyCode

            self.couponCode = couponCode

            self.files = files

            self.couponValue = couponValue

            self.deliveryCharges = deliveryCharges

            self.paymentMethods = paymentMethods

            self.shippingAddress = shippingAddress

            self.cartValue = cartValue

            self.cashbackApplied = cashbackApplied

            self.cartItems = cartItems

            self.paymentMode = paymentMode

            self.coupon = coupon
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)

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

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

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

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponCode = try container.decode(String.self, forKey: .couponCode)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            do {
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

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

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(coupon, forKey: .coupon)
        }
    }
}
