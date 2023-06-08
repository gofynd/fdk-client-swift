

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var shippingAddress: [String: Any]?

        public var orderingStore: Int?

        public var merchantCode: String

        public var orderType: String

        public var cartId: String

        public var aggregator: String

        public var paymentIdentifier: String

        public var currencyCode: String

        public var billingAddress: [String: Any]?

        public var paymentMode: String

        public var cartItems: [OverrideCartItem]

        public enum CodingKeys: String, CodingKey {
            case shippingAddress = "shipping_address"

            case orderingStore = "ordering_store"

            case merchantCode = "merchant_code"

            case orderType = "order_type"

            case cartId = "cart_id"

            case aggregator

            case paymentIdentifier = "payment_identifier"

            case currencyCode = "currency_code"

            case billingAddress = "billing_address"

            case paymentMode = "payment_mode"

            case cartItems = "cart_items"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.shippingAddress = shippingAddress

            self.orderingStore = orderingStore

            self.merchantCode = merchantCode

            self.orderType = orderType

            self.cartId = cartId

            self.aggregator = aggregator

            self.paymentIdentifier = paymentIdentifier

            self.currencyCode = currencyCode

            self.billingAddress = billingAddress

            self.paymentMode = paymentMode

            self.cartItems = cartItems
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            orderType = try container.decode(String.self, forKey: .orderType)

            cartId = try container.decode(String.self, forKey: .cartId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            currencyCode = try container.decode(String.self, forKey: .currencyCode)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
        }
    }
}
