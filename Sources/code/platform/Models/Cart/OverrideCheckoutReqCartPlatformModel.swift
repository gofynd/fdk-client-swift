

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var currencyCode: String

        public var orderType: String

        public var shippingAddress: [String: Any]?

        public var aggregator: String

        public var cartItems: [OverrideCartItem]

        public var cartId: String

        public var paymentIdentifier: String

        public var orderingStore: Int?

        public var merchantCode: String

        public var billingAddress: [String: Any]?

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case currencyCode = "currency_code"

            case orderType = "order_type"

            case shippingAddress = "shipping_address"

            case aggregator

            case cartItems = "cart_items"

            case cartId = "cart_id"

            case paymentIdentifier = "payment_identifier"

            case orderingStore = "ordering_store"

            case merchantCode = "merchant_code"

            case billingAddress = "billing_address"

            case paymentMode = "payment_mode"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.currencyCode = currencyCode

            self.orderType = orderType

            self.shippingAddress = shippingAddress

            self.aggregator = aggregator

            self.cartItems = cartItems

            self.cartId = cartId

            self.paymentIdentifier = paymentIdentifier

            self.orderingStore = orderingStore

            self.merchantCode = merchantCode

            self.billingAddress = billingAddress

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currencyCode = try container.decode(String.self, forKey: .currencyCode)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                shippingAddress = try container.decode([String: Any].self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

            cartId = try container.decode(String.self, forKey: .cartId)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}
