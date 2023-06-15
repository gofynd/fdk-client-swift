

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var merchantCode: String

        public var aggregator: String

        public var cartId: String

        public var paymentIdentifier: String

        public var orderType: String

        public var orderingStore: Int?

        public var paymentMode: String

        public var currencyCode: String

        public var cartItems: [OverrideCartItem]

        public var shippingAddress: [String: Any]?

        public var billingAddress: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case merchantCode = "merchant_code"

            case aggregator

            case cartId = "cart_id"

            case paymentIdentifier = "payment_identifier"

            case orderType = "order_type"

            case orderingStore = "ordering_store"

            case paymentMode = "payment_mode"

            case currencyCode = "currency_code"

            case cartItems = "cart_items"

            case shippingAddress = "shipping_address"

            case billingAddress = "billing_address"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.merchantCode = merchantCode

            self.aggregator = aggregator

            self.cartId = cartId

            self.paymentIdentifier = paymentIdentifier

            self.orderType = orderType

            self.orderingStore = orderingStore

            self.paymentMode = paymentMode

            self.currencyCode = currencyCode

            self.cartItems = cartItems

            self.shippingAddress = shippingAddress

            self.billingAddress = billingAddress
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            cartId = try container.decode(String.self, forKey: .cartId)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            currencyCode = try container.decode(String.self, forKey: .currencyCode)

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

            do {
                shippingAddress = try container.decode([String: Any].self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
        }
    }
}
