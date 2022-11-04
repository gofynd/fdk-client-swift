

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var couponCode: String

        public var cartValue: Double

        public var cartItems: [OpenApiOrderItem]

        public var currencyCode: String?

        public var deliveryCharges: Double

        public var cashbackApplied: Double

        public var codCharges: Double

        public var loyaltyDiscount: Double?

        public var coupon: String?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var billingAddress: ShippingAddress

        public var paymentMode: String?

        public var employeeDiscount: [String: Any]?

        public var shippingAddress: ShippingAddress?

        public var couponValue: Double

        public var files: [OpenApiFiles]?

        public var orderId: String?

        public var affiliateOrderId: String?

        public enum CodingKeys: String, CodingKey {
            case couponCode = "coupon_code"

            case cartValue = "cart_value"

            case cartItems = "cart_items"

            case currencyCode = "currency_code"

            case deliveryCharges = "delivery_charges"

            case cashbackApplied = "cashback_applied"

            case codCharges = "cod_charges"

            case loyaltyDiscount = "loyalty_discount"

            case coupon

            case paymentMethods = "payment_methods"

            case billingAddress = "billing_address"

            case paymentMode = "payment_mode"

            case employeeDiscount = "employee_discount"

            case shippingAddress = "shipping_address"

            case couponValue = "coupon_value"

            case files

            case orderId = "order_id"

            case affiliateOrderId = "affiliate_order_id"
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.couponCode = couponCode

            self.cartValue = cartValue

            self.cartItems = cartItems

            self.currencyCode = currencyCode

            self.deliveryCharges = deliveryCharges

            self.cashbackApplied = cashbackApplied

            self.codCharges = codCharges

            self.loyaltyDiscount = loyaltyDiscount

            self.coupon = coupon

            self.paymentMethods = paymentMethods

            self.billingAddress = billingAddress

            self.paymentMode = paymentMode

            self.employeeDiscount = employeeDiscount

            self.shippingAddress = shippingAddress

            self.couponValue = couponValue

            self.files = files

            self.orderId = orderId

            self.affiliateOrderId = affiliateOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponCode = try container.decode(String.self, forKey: .couponCode)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            codCharges = try container.decode(Double.self, forKey: .codCharges)

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

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

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

            do {
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

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

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
        }
    }
}
