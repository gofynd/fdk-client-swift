

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var orderType: String

        public var cartId: String

        public var paymentIdentifier: String

        public var aggregator: String

        public var cartItems: [OverrideCartItem]

        public var merchantCode: String

        public var billingAddress: [String: Any]?

        public var shippingAddress: [String: Any]?

        public var paymentMode: String

        public var orderingStore: Int?

        public var currencyCode: String

        public enum CodingKeys: String, CodingKey {
            case orderType = "order_type"

            case cartId = "cart_id"

            case paymentIdentifier = "payment_identifier"

            case aggregator

            case cartItems = "cart_items"

            case merchantCode = "merchant_code"

            case billingAddress = "billing_address"

            case shippingAddress = "shipping_address"

            case paymentMode = "payment_mode"

            case orderingStore = "ordering_store"

            case currencyCode = "currency_code"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.orderType = orderType

            self.cartId = cartId

            self.paymentIdentifier = paymentIdentifier

            self.aggregator = aggregator

            self.cartItems = cartItems

            self.merchantCode = merchantCode

            self.billingAddress = billingAddress

            self.shippingAddress = shippingAddress

            self.paymentMode = paymentMode

            self.orderingStore = orderingStore

            self.currencyCode = currencyCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderType = try container.decode(String.self, forKey: .orderType)

            cartId = try container.decode(String.self, forKey: .cartId)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shippingAddress = try container.decode([String: Any].self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currencyCode = try container.decode(String.self, forKey: .currencyCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }
}
