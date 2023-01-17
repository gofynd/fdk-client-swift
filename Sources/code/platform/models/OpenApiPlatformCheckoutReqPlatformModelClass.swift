

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var shippingAddress: ShippingAddress?

        public var deliveryCharges: Double

        public var currencyCode: String?

        public var couponValue: Double

        public var loyaltyDiscount: Double?

        public var paymentMode: String?

        public var cartValue: Double

        public var couponCode: String

        public var cashbackApplied: Double

        public var employeeDiscount: [String: Any]?

        public var coupon: String?

        public var billingAddress: ShippingAddress

        public var cartItems: [OpenApiOrderItem]

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var affiliateOrderId: String?

        public var files: [OpenApiFiles]?

        public var codCharges: Double

        public var orderId: String?

        public enum CodingKeys: String, CodingKey {
            case shippingAddress = "shipping_address"

            case deliveryCharges = "delivery_charges"

            case currencyCode = "currency_code"

            case couponValue = "coupon_value"

            case loyaltyDiscount = "loyalty_discount"

            case paymentMode = "payment_mode"

            case cartValue = "cart_value"

            case couponCode = "coupon_code"

            case cashbackApplied = "cashback_applied"

            case employeeDiscount = "employee_discount"

            case coupon

            case billingAddress = "billing_address"

            case cartItems = "cart_items"

            case paymentMethods = "payment_methods"

            case affiliateOrderId = "affiliate_order_id"

            case files

            case codCharges = "cod_charges"

            case orderId = "order_id"
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.shippingAddress = shippingAddress

            self.deliveryCharges = deliveryCharges

            self.currencyCode = currencyCode

            self.couponValue = couponValue

            self.loyaltyDiscount = loyaltyDiscount

            self.paymentMode = paymentMode

            self.cartValue = cartValue

            self.couponCode = couponCode

            self.cashbackApplied = cashbackApplied

            self.employeeDiscount = employeeDiscount

            self.coupon = coupon

            self.billingAddress = billingAddress

            self.cartItems = cartItems

            self.paymentMethods = paymentMethods

            self.affiliateOrderId = affiliateOrderId

            self.files = files

            self.codCharges = codCharges

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

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

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            couponCode = try container.decode(String.self, forKey: .couponCode)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)

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

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

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

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
