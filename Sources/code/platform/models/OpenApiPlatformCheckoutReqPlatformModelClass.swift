

import Foundation
public extension PlatformClient {
    /*
         Model: OpenApiPlatformCheckoutReq
         Used By: Cart
     */

    class OpenApiPlatformCheckoutReq: Codable {
        public var files: [OpenApiFiles]?

        public var couponCode: String

        public var affiliateOrderId: String?

        public var coupon: String?

        public var codCharges: Double

        public var couponValue: Double

        public var paymentMethods: [MultiTenderPaymentMethod]

        public var employeeDiscount: [String: Any]?

        public var orderId: String?

        public var loyaltyDiscount: Double?

        public var deliveryCharges: Double

        public var currencyCode: String?

        public var paymentMode: String?

        public var cartValue: Double

        public var billingAddress: ShippingAddress

        public var cashbackApplied: Double

        public var shippingAddress: ShippingAddress?

        public var cartItems: [OpenApiOrderItem]

        public enum CodingKeys: String, CodingKey {
            case files

            case couponCode = "coupon_code"

            case affiliateOrderId = "affiliate_order_id"

            case coupon

            case codCharges = "cod_charges"

            case couponValue = "coupon_value"

            case paymentMethods = "payment_methods"

            case employeeDiscount = "employee_discount"

            case orderId = "order_id"

            case loyaltyDiscount = "loyalty_discount"

            case deliveryCharges = "delivery_charges"

            case currencyCode = "currency_code"

            case paymentMode = "payment_mode"

            case cartValue = "cart_value"

            case billingAddress = "billing_address"

            case cashbackApplied = "cashback_applied"

            case shippingAddress = "shipping_address"

            case cartItems = "cart_items"
        }

        public init(affiliateOrderId: String? = nil, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, coupon: String? = nil, couponCode: String, couponValue: Double, currencyCode: String? = nil, deliveryCharges: Double, employeeDiscount: [String: Any]? = nil, files: [OpenApiFiles]? = nil, loyaltyDiscount: Double? = nil, orderId: String? = nil, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String? = nil, shippingAddress: ShippingAddress? = nil) {
            self.files = files

            self.couponCode = couponCode

            self.affiliateOrderId = affiliateOrderId

            self.coupon = coupon

            self.codCharges = codCharges

            self.couponValue = couponValue

            self.paymentMethods = paymentMethods

            self.employeeDiscount = employeeDiscount

            self.orderId = orderId

            self.loyaltyDiscount = loyaltyDiscount

            self.deliveryCharges = deliveryCharges

            self.currencyCode = currencyCode

            self.paymentMode = paymentMode

            self.cartValue = cartValue

            self.billingAddress = billingAddress

            self.cashbackApplied = cashbackApplied

            self.shippingAddress = shippingAddress

            self.cartItems = cartItems
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                files = try container.decode([OpenApiFiles].self, forKey: .files)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponCode = try container.decode(String.self, forKey: .couponCode)

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

            codCharges = try container.decode(Double.self, forKey: .codCharges)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)

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

            do {
                loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)

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

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartValue = try container.decode(Double.self, forKey: .cartValue)

            billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(files, forKey: .files)

            try? container.encodeIfPresent(couponCode, forKey: .couponCode)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
        }
    }
}
