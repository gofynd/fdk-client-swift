

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var loyaltyDiscount: Double?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var currencyCode: String?

        public var cartItems: [OpenApiOrderItem]

        public var cartValue: Double

        public var files: [OpenApiFiles]?

        public var shippingAddress: ShippingAddress?

        public var deliveryCharges: Double

        public var affiliateOrderId: String?

        public var coupon: String?

        public var cashbackApplied: Double

        public var couponCode: String

        public var couponValue: Double

        public var billingAddress: ShippingAddress

        public var employeeDiscount: [String: Any]?

        public var orderId: String?

        public var codCharges: Double

        public var paymentMode: String?

        public enum CodingKeys: String, CodingKey {
            case loyaltyDiscount = "loyalty_discount"

            case paymentMethods = "payment_methods"

            case currencyCode = "currency_code"

            case cartItems = "cart_items"

            case cartValue = "cart_value"

            case files

            case shippingAddress = "shipping_address"

            case deliveryCharges = "delivery_charges"

            case affiliateOrderId = "affiliate_order_id"

            case coupon

            case cashbackApplied = "cashback_applied"

            case couponCode = "coupon_code"

            case couponValue = "coupon_value"

            case billingAddress = "billing_address"

            case employeeDiscount = "employee_discount"

            case orderId = "order_id"

            case codCharges = "cod_charges"

            case paymentMode = "payment_mode"
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.loyaltyDiscount = loyaltyDiscount

            self.paymentMethods = paymentMethods

            self.currencyCode = currencyCode

            self.cartItems = cartItems

            self.cartValue = cartValue

            self.files = files

            self.shippingAddress = shippingAddress

            self.deliveryCharges = deliveryCharges

            self.affiliateOrderId = affiliateOrderId

            self.coupon = coupon

            self.cashbackApplied = cashbackApplied

            self.couponCode = couponCode

            self.couponValue = couponValue

            self.billingAddress = billingAddress

            self.employeeDiscount = employeeDiscount

            self.orderId = orderId

            self.codCharges = codCharges

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

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

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

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

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

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

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            couponCode = try container.decode(String.self, forKey: .couponCode)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            do {
                employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)

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

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}
