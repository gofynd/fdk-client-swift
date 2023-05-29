

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var shippingAddress: [String: Any]?

        public var cartItems: [OverrideCartItem]

        public var aggregator: String

        public var orderingStore: Int?

        public var currencyCode: String

        public var orderType: String

        public var paymentIdentifier: String

        public var billingAddress: [String: Any]?

        public var merchantCode: String

        public var paymentMode: String

        public var cartId: String

        public enum CodingKeys: String, CodingKey {
            case shippingAddress = "shipping_address"

            case cartItems = "cart_items"

            case aggregator

            case orderingStore = "ordering_store"

            case currencyCode = "currency_code"

            case orderType = "order_type"

            case paymentIdentifier = "payment_identifier"

            case billingAddress = "billing_address"

            case merchantCode = "merchant_code"

            case paymentMode = "payment_mode"

            case cartId = "cart_id"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.shippingAddress = shippingAddress

            self.cartItems = cartItems

            self.aggregator = aggregator

            self.orderingStore = orderingStore

            self.currencyCode = currencyCode

            self.orderType = orderType

            self.paymentIdentifier = paymentIdentifier

            self.billingAddress = billingAddress

            self.merchantCode = merchantCode

            self.paymentMode = paymentMode

            self.cartId = cartId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shippingAddress = try container.decode([String: Any].self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currencyCode = try container.decode(String.self, forKey: .currencyCode)

            orderType = try container.decode(String.self, forKey: .orderType)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            cartId = try container.decode(String.self, forKey: .cartId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(cartId, forKey: .cartId)
        }
    }
}
