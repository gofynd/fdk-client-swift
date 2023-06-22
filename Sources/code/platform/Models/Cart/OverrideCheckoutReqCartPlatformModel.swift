

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var orderingStore: Int?

        public var paymentMode: String

        public var billingAddress: [String: Any]?

        public var currencyCode: String

        public var paymentIdentifier: String

        public var merchantCode: String

        public var orderType: String

        public var cartItems: [OverrideCartItem]

        public var shippingAddress: [String: Any]?

        public var cartId: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case orderingStore = "ordering_store"

            case paymentMode = "payment_mode"

            case billingAddress = "billing_address"

            case currencyCode = "currency_code"

            case paymentIdentifier = "payment_identifier"

            case merchantCode = "merchant_code"

            case orderType = "order_type"

            case cartItems = "cart_items"

            case shippingAddress = "shipping_address"

            case cartId = "cart_id"

            case aggregator
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.orderingStore = orderingStore

            self.paymentMode = paymentMode

            self.billingAddress = billingAddress

            self.currencyCode = currencyCode

            self.paymentIdentifier = paymentIdentifier

            self.merchantCode = merchantCode

            self.orderType = orderType

            self.cartItems = cartItems

            self.shippingAddress = shippingAddress

            self.cartId = cartId

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currencyCode = try container.decode(String.self, forKey: .currencyCode)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            orderType = try container.decode(String.self, forKey: .orderType)

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

            do {
                shippingAddress = try container.decode([String: Any].self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartId = try container.decode(String.self, forKey: .cartId)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
