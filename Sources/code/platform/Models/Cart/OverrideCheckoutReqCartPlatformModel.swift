

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var merchantCode: String

        public var paymentMode: String

        public var currencyCode: String

        public var orderType: String

        public var orderingStore: Int?

        public var cartItems: [OverrideCartItem]

        public var billingAddress: [String: Any]?

        public var aggregator: String

        public var cartId: String

        public var shippingAddress: [String: Any]?

        public var paymentIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case merchantCode = "merchant_code"

            case paymentMode = "payment_mode"

            case currencyCode = "currency_code"

            case orderType = "order_type"

            case orderingStore = "ordering_store"

            case cartItems = "cart_items"

            case billingAddress = "billing_address"

            case aggregator

            case cartId = "cart_id"

            case shippingAddress = "shipping_address"

            case paymentIdentifier = "payment_identifier"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.merchantCode = merchantCode

            self.paymentMode = paymentMode

            self.currencyCode = currencyCode

            self.orderType = orderType

            self.orderingStore = orderingStore

            self.cartItems = cartItems

            self.billingAddress = billingAddress

            self.aggregator = aggregator

            self.cartId = cartId

            self.shippingAddress = shippingAddress

            self.paymentIdentifier = paymentIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            currencyCode = try container.decode(String.self, forKey: .currencyCode)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            cartId = try container.decode(String.self, forKey: .cartId)

            do {
                shippingAddress = try container.decode([String: Any].self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)
        }
    }
}
