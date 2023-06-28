

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var currencyCode: String

        public var paymentIdentifier: String

        public var paymentMode: String

        public var merchantCode: String

        public var billingAddress: [String: Any]?

        public var cartItems: [OverrideCartItem]

        public var orderType: String

        public var shippingAddress: [String: Any]?

        public var cartId: String

        public var orderingStore: Int?

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case currencyCode = "currency_code"

            case paymentIdentifier = "payment_identifier"

            case paymentMode = "payment_mode"

            case merchantCode = "merchant_code"

            case billingAddress = "billing_address"

            case cartItems = "cart_items"

            case orderType = "order_type"

            case shippingAddress = "shipping_address"

            case cartId = "cart_id"

            case orderingStore = "ordering_store"

            case aggregator
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.currencyCode = currencyCode

            self.paymentIdentifier = paymentIdentifier

            self.paymentMode = paymentMode

            self.merchantCode = merchantCode

            self.billingAddress = billingAddress

            self.cartItems = cartItems

            self.orderType = orderType

            self.shippingAddress = shippingAddress

            self.cartId = cartId

            self.orderingStore = orderingStore

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currencyCode = try container.decode(String.self, forKey: .currencyCode)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                shippingAddress = try container.decode([String: Any].self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartId = try container.decode(String.self, forKey: .cartId)

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
