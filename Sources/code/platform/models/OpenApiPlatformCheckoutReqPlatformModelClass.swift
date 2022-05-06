

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var shippingAddress: ShippingAddress?

        public var paymentMode: String?

        public var couponCode: String

        public var orderId: String?

        public var cashbackApplied: Double

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var codCharges: Double

        public var files: [OpenApiFiles]?

        public var affiliateOrderId: String?

        public var employeeDiscount: [String: Any]?

        public var cartValue: Double

        public var deliveryCharges: Double

        public var loyaltyDiscount: Double?

        public var coupon: String?

        public var cartItems: [OpenApiOrderItem]

        public var couponValue: Double

        public var billingAddress: ShippingAddress

        public var currencyCode: String?

        public enum CodingKeys: String, CodingKey {
            case shippingAddress = "shipping_address"

            case paymentMode = "payment_mode"

            case couponCode = "coupon_code"

            case orderId = "order_id"

            case cashbackApplied = "cashback_applied"

            case paymentMethods = "payment_methods"

            case codCharges = "cod_charges"

            case files

            case affiliateOrderId = "affiliate_order_id"

            case employeeDiscount = "employee_discount"

            case cartValue = "cart_value"

            case deliveryCharges = "delivery_charges"

            case loyaltyDiscount = "loyalty_discount"

            case coupon

            case cartItems = "cart_items"

            case couponValue = "coupon_value"

            case billingAddress = "billing_address"

            case currencyCode = "currency_code"
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.shippingAddress = shippingAddress

            self.paymentMode = paymentMode

            self.couponCode = couponCode

            self.orderId = orderId

            self.cashbackApplied = cashbackApplied

            self.paymentMethods = paymentMethods

            self.codCharges = codCharges

            self.files = files

            self.affiliateOrderId = affiliateOrderId

            self.employeeDiscount = employeeDiscount

            self.cartValue = cartValue

            self.deliveryCharges = deliveryCharges

            self.loyaltyDiscount = loyaltyDiscount

            self.coupon = coupon

            self.cartItems = cartItems

            self.couponValue = couponValue

            self.billingAddress = billingAddress

            self.currencyCode = currencyCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

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

            couponCode = try container.decode(String.self, forKey: .couponCode)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

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
                employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

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

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }
}
