

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var cartItems: [OverrideCartItem]

        public var shippingAddress: [String: Any]?

        public var orderType: String

        public var aggregator: String

        public var paymentIdentifier: String

        public var billingAddress: [String: Any]?

        public var currencyCode: String

        public var cartId: String

        public var orderingStore: Int?

        public var merchantCode: String

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case cartItems = "cart_items"

            case shippingAddress = "shipping_address"

            case orderType = "order_type"

            case aggregator

            case paymentIdentifier = "payment_identifier"

            case billingAddress = "billing_address"

            case currencyCode = "currency_code"

            case cartId = "cart_id"

            case orderingStore = "ordering_store"

            case merchantCode = "merchant_code"

            case paymentMode = "payment_mode"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.cartItems = cartItems

            self.shippingAddress = shippingAddress

            self.orderType = orderType

            self.aggregator = aggregator

            self.paymentIdentifier = paymentIdentifier

            self.billingAddress = billingAddress

            self.currencyCode = currencyCode

            self.cartId = cartId

            self.orderingStore = orderingStore

            self.merchantCode = merchantCode

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

            do {
                shippingAddress = try container.decode([String: Any].self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currencyCode = try container.decode(String.self, forKey: .currencyCode)

            cartId = try container.decode(String.self, forKey: .cartId)

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}
