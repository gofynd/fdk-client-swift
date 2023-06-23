

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var paymentMode: String

        public var billingAddress: [String: Any]?

        public var paymentIdentifier: String

        public var cartItems: [OverrideCartItem]

        public var merchantCode: String

        public var orderingStore: Int?

        public var currencyCode: String

        public var aggregator: String

        public var cartId: String

        public var orderType: String

        public var shippingAddress: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case billingAddress = "billing_address"

            case paymentIdentifier = "payment_identifier"

            case cartItems = "cart_items"

            case merchantCode = "merchant_code"

            case orderingStore = "ordering_store"

            case currencyCode = "currency_code"

            case aggregator

            case cartId = "cart_id"

            case orderType = "order_type"

            case shippingAddress = "shipping_address"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.paymentMode = paymentMode

            self.billingAddress = billingAddress

            self.paymentIdentifier = paymentIdentifier

            self.cartItems = cartItems

            self.merchantCode = merchantCode

            self.orderingStore = orderingStore

            self.currencyCode = currencyCode

            self.aggregator = aggregator

            self.cartId = cartId

            self.orderType = orderType

            self.shippingAddress = shippingAddress
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currencyCode = try container.decode(String.self, forKey: .currencyCode)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            cartId = try container.decode(String.self, forKey: .cartId)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                shippingAddress = try container.decode([String: Any].self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
        }
    }
}
