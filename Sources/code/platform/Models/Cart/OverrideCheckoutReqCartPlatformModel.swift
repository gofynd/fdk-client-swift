

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var paymentIdentifier: String

        public var billingAddress: [String: Any]?

        public var merchantCode: String

        public var orderType: String

        public var currencyCode: String

        public var cartId: String

        public var paymentMode: String

        public var shippingAddress: [String: Any]?

        public var aggregator: String

        public var orderingStore: Int?

        public var cartItems: [OverrideCartItem]

        public enum CodingKeys: String, CodingKey {
            case paymentIdentifier = "payment_identifier"

            case billingAddress = "billing_address"

            case merchantCode = "merchant_code"

            case orderType = "order_type"

            case currencyCode = "currency_code"

            case cartId = "cart_id"

            case paymentMode = "payment_mode"

            case shippingAddress = "shipping_address"

            case aggregator

            case orderingStore = "ordering_store"

            case cartItems = "cart_items"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.paymentIdentifier = paymentIdentifier

            self.billingAddress = billingAddress

            self.merchantCode = merchantCode

            self.orderType = orderType

            self.currencyCode = currencyCode

            self.cartId = cartId

            self.paymentMode = paymentMode

            self.shippingAddress = shippingAddress

            self.aggregator = aggregator

            self.orderingStore = orderingStore

            self.cartItems = cartItems
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            orderType = try container.decode(String.self, forKey: .orderType)

            currencyCode = try container.decode(String.self, forKey: .currencyCode)

            cartId = try container.decode(String.self, forKey: .cartId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                shippingAddress = try container.decode([String: Any].self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
        }
    }
}
