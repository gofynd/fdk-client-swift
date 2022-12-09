

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var employeeDiscount: [String: Any]?

        public var cartItems: [OpenApiOrderItem]

        public var currencyCode: String?

        public var coupon: String?

        public var affiliateOrderId: String?

        public var couponCode: String

        public var loyaltyDiscount: Double?

        public var paymentMode: String?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var shippingAddress: ShippingAddress?

        public var cashbackApplied: Double

        public var deliveryCharges: Double

        public var codCharges: Double

        public var files: [OpenApiFiles]?

        public var orderId: String?

        public var couponValue: Double

        public var billingAddress: ShippingAddress

        public var cartValue: Double

        public enum CodingKeys: String, CodingKey {
            case employeeDiscount = "employee_discount"

            case cartItems = "cart_items"

            case currencyCode = "currency_code"

            case coupon

            case affiliateOrderId = "affiliate_order_id"

            case couponCode = "coupon_code"

            case loyaltyDiscount = "loyalty_discount"

            case paymentMode = "payment_mode"

            case paymentMethods = "payment_methods"

            case shippingAddress = "shipping_address"

            case cashbackApplied = "cashback_applied"

            case deliveryCharges = "delivery_charges"

            case codCharges = "cod_charges"

            case files

            case orderId = "order_id"

            case couponValue = "coupon_value"

            case billingAddress = "billing_address"

            case cartValue = "cart_value"
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.employeeDiscount = employeeDiscount

            self.cartItems = cartItems

            self.currencyCode = currencyCode

            self.coupon = coupon

            self.affiliateOrderId = affiliateOrderId

            self.couponCode = couponCode

            self.loyaltyDiscount = loyaltyDiscount

            self.paymentMode = paymentMode

            self.paymentMethods = paymentMethods

            self.shippingAddress = shippingAddress

            self.cashbackApplied = cashbackApplied

            self.deliveryCharges = deliveryCharges

            self.codCharges = codCharges

            self.files = files

            self.orderId = orderId

            self.couponValue = couponValue

            self.billingAddress = billingAddress

            self.cartValue = cartValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)

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

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

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

            couponCode = try container.decode(String.self, forKey: .couponCode)

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

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
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

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

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            cartValue = try container.decode(Double.self, forKey: .cartValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)
        }
    }
}
