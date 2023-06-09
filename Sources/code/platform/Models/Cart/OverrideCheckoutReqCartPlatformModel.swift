

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var currencyCode: String

        public var merchantCode: String

        public var shippingAddress: [String: Any]?

        public var orderingStore: Int?

        public var paymentIdentifier: String

        public var cartId: String

        public var aggregator: String

        public var paymentMode: String

        public var orderType: String

        public var cartItems: [OverrideCartItem]

        public var billingAddress: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case currencyCode = "currency_code"

            case merchantCode = "merchant_code"

            case shippingAddress = "shipping_address"

            case orderingStore = "ordering_store"

            case paymentIdentifier = "payment_identifier"

            case cartId = "cart_id"

            case aggregator

            case paymentMode = "payment_mode"

            case orderType = "order_type"

            case cartItems = "cart_items"

            case billingAddress = "billing_address"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.currencyCode = currencyCode

            self.merchantCode = merchantCode

            self.shippingAddress = shippingAddress

            self.orderingStore = orderingStore

            self.paymentIdentifier = paymentIdentifier

            self.cartId = cartId

            self.aggregator = aggregator

            self.paymentMode = paymentMode

            self.orderType = orderType

            self.cartItems = cartItems

            self.billingAddress = billingAddress
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currencyCode = try container.decode(String.self, forKey: .currencyCode)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

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

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            cartId = try container.decode(String.self, forKey: .cartId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            orderType = try container.decode(String.self, forKey: .orderType)

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
        }
    }
}
