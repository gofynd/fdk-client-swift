

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var paymentMode: String

        public var orderingStore: Int?

        public var cartId: String

        public var merchantCode: String

        public var aggregator: String

        public var paymentIdentifier: String

        public var orderType: String

        public var billingAddress: [String: Any]?

        public var currencyCode: String

        public var cartItems: [OverrideCartItem]

        public var shippingAddress: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case orderingStore = "ordering_store"

            case cartId = "cart_id"

            case merchantCode = "merchant_code"

            case aggregator

            case paymentIdentifier = "payment_identifier"

            case orderType = "order_type"

            case billingAddress = "billing_address"

            case currencyCode = "currency_code"

            case cartItems = "cart_items"

            case shippingAddress = "shipping_address"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.paymentMode = paymentMode

            self.orderingStore = orderingStore

            self.cartId = cartId

            self.merchantCode = merchantCode

            self.aggregator = aggregator

            self.paymentIdentifier = paymentIdentifier

            self.orderType = orderType

            self.billingAddress = billingAddress

            self.currencyCode = currencyCode

            self.cartItems = cartItems

            self.shippingAddress = shippingAddress
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartId = try container.decode(String.self, forKey: .cartId)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currencyCode = try container.decode(String.self, forKey: .currencyCode)

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

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

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
        }
    }
}
