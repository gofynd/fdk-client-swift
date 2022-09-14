

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var cashbackApplied: Double

        public var shippingAddress: ShippingAddress?

        public var files: [OpenApiFiles]?

        public var orderId: String?

        public var deliveryCharges: Double

        public var billingAddress: ShippingAddress

        public var couponCode: String

        public var cartValue: Double

        public var paymentMode: String?

        public var couponValue: Double

        public var affiliateOrderId: String?

        public var codCharges: Double

        public var coupon: String?

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var currencyCode: String?

        public var loyaltyDiscount: Double?

        public var cartItems: [OpenApiOrderItem]

        public var employeeDiscount: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case cashbackApplied = "cashback_applied"

            case shippingAddress = "shipping_address"

            case files

            case orderId = "order_id"

            case deliveryCharges = "delivery_charges"

            case billingAddress = "billing_address"

            case couponCode = "coupon_code"

            case cartValue = "cart_value"

            case paymentMode = "payment_mode"

            case couponValue = "coupon_value"

            case affiliateOrderId = "affiliate_order_id"

            case codCharges = "cod_charges"

            case coupon

            case paymentMethods = "payment_methods"

            case currencyCode = "currency_code"

            case loyaltyDiscount = "loyalty_discount"

            case cartItems = "cart_items"

            case employeeDiscount = "employee_discount"
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.cashbackApplied = cashbackApplied

            self.shippingAddress = shippingAddress

            self.files = files

            self.orderId = orderId

            self.deliveryCharges = deliveryCharges

            self.billingAddress = billingAddress

            self.couponCode = couponCode

            self.cartValue = cartValue

            self.paymentMode = paymentMode

            self.couponValue = couponValue

            self.affiliateOrderId = affiliateOrderId

            self.codCharges = codCharges

            self.coupon = coupon

            self.paymentMethods = paymentMethods

            self.currencyCode = currencyCode

            self.loyaltyDiscount = loyaltyDiscount

            self.cartItems = cartItems

            self.employeeDiscount = employeeDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            couponCode = try container.decode(String.self, forKey: .couponCode)

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                coupon = try container.decode(String.self, forKey: .coupon)

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
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            do {
                employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)
        }
    }
}
