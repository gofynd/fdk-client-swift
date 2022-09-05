

import Foundation
public extension ApplicationClient {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */
    class OverrideCheckoutReq: Codable {
        public var cartItems: [OverrideCartItem]

        public var billingAddress: [String: Any]?

        public var currencyCode: String

        public var paymentIdentifier: String

        public var paymentMode: String

        public var orderingStore: Int?

        public var orderType: String

        public var aggregator: String

        public var shippingAddress: [String: Any]?

        public var cartId: String?

        public var merchantCode: String

        public enum CodingKeys: String, CodingKey {
            case cartItems = "cart_items"

            case billingAddress = "billing_address"

            case currencyCode = "currency_code"

            case paymentIdentifier = "payment_identifier"

            case paymentMode = "payment_mode"

            case orderingStore = "ordering_store"

            case orderType = "order_type"

            case aggregator

            case shippingAddress = "shipping_address"

            case cartId = "cart_id"

            case merchantCode = "merchant_code"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String? = nil, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.cartItems = cartItems

            self.billingAddress = billingAddress

            self.currencyCode = currencyCode

            self.paymentIdentifier = paymentIdentifier

            self.paymentMode = paymentMode

            self.orderingStore = orderingStore

            self.orderType = orderType

            self.aggregator = aggregator

            self.shippingAddress = shippingAddress

            self.cartId = cartId

            self.merchantCode = merchantCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currencyCode = try container.decode(String.self, forKey: .currencyCode)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                shippingAddress = try container.decode([String: Any].self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantCode = try container.decode(String.self, forKey: .merchantCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
        }
    }
}
