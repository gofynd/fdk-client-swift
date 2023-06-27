

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var merchantCode: String

        public var aggregator: String

        public var shippingAddress: [String: Any]?

        public var cartItems: [OverrideCartItem]

        public var orderType: String

        public var paymentMode: String

        public var currencyCode: String

        public var orderingStore: Int?

        public var paymentIdentifier: String

        public var billingAddress: [String: Any]?

        public var cartId: String

        public enum CodingKeys: String, CodingKey {
            case merchantCode = "merchant_code"

            case aggregator

            case shippingAddress = "shipping_address"

            case cartItems = "cart_items"

            case orderType = "order_type"

            case paymentMode = "payment_mode"

            case currencyCode = "currency_code"

            case orderingStore = "ordering_store"

            case paymentIdentifier = "payment_identifier"

            case billingAddress = "billing_address"

            case cartId = "cart_id"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.merchantCode = merchantCode

            self.aggregator = aggregator

            self.shippingAddress = shippingAddress

            self.cartItems = cartItems

            self.orderType = orderType

            self.paymentMode = paymentMode

            self.currencyCode = currencyCode

            self.orderingStore = orderingStore

            self.paymentIdentifier = paymentIdentifier

            self.billingAddress = billingAddress

            self.cartId = cartId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                shippingAddress = try container.decode([String: Any].self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

            orderType = try container.decode(String.self, forKey: .orderType)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            currencyCode = try container.decode(String.self, forKey: .currencyCode)

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartId = try container.decode(String.self, forKey: .cartId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(cartId, forKey: .cartId)
        }
    }
}
