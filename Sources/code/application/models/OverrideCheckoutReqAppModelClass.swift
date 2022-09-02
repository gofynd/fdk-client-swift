

import Foundation
public extension ApplicationClient {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */
    class OverrideCheckoutReq: Codable {
        public var aggregator: String

        public var orderType: String

        public var merchantCode: String

        public var paymentMode: String

        public var billingAddress: [String: Any]?

        public var paymentIdentifier: String

        public var cartId: String?

        public var currencyCode: String

        public var cartItems: [OverrideCartItem]

        public var shippingAddress: [String: Any]?

        public var orderingStore: Int?

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case orderType = "order_type"

            case merchantCode = "merchant_code"

            case paymentMode = "payment_mode"

            case billingAddress = "billing_address"

            case paymentIdentifier = "payment_identifier"

            case cartId = "cart_id"

            case currencyCode = "currency_code"

            case cartItems = "cart_items"

            case shippingAddress = "shipping_address"

            case orderingStore = "ordering_store"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String? = nil, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.aggregator = aggregator

            self.orderType = orderType

            self.merchantCode = merchantCode

            self.paymentMode = paymentMode

            self.billingAddress = billingAddress

            self.paymentIdentifier = paymentIdentifier

            self.cartId = cartId

            self.currencyCode = currencyCode

            self.cartItems = cartItems

            self.shippingAddress = shippingAddress

            self.orderingStore = orderingStore
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            orderType = try container.decode(String.self, forKey: .orderType)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currencyCode = try container.decode(String.self, forKey: .currencyCode)

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

            do {
                shippingAddress = try container.decode([String: Any].self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encode(orderingStore, forKey: .orderingStore)
        }
    }
}
