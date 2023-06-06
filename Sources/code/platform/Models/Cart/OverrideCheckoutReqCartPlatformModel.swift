

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var paymentIdentifier: String

        public var orderType: String

        public var cartId: String

        public var orderingStore: Int?

        public var shippingAddress: [String: Any]?

        public var billingAddress: [String: Any]?

        public var paymentMode: String

        public var currencyCode: String

        public var aggregator: String

        public var cartItems: [OverrideCartItem]

        public var merchantCode: String

        public enum CodingKeys: String, CodingKey {
            case paymentIdentifier = "payment_identifier"

            case orderType = "order_type"

            case cartId = "cart_id"

            case orderingStore = "ordering_store"

            case shippingAddress = "shipping_address"

            case billingAddress = "billing_address"

            case paymentMode = "payment_mode"

            case currencyCode = "currency_code"

            case aggregator

            case cartItems = "cart_items"

            case merchantCode = "merchant_code"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.paymentIdentifier = paymentIdentifier

            self.orderType = orderType

            self.cartId = cartId

            self.orderingStore = orderingStore

            self.shippingAddress = shippingAddress

            self.billingAddress = billingAddress

            self.paymentMode = paymentMode

            self.currencyCode = currencyCode

            self.aggregator = aggregator

            self.cartItems = cartItems

            self.merchantCode = merchantCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            orderType = try container.decode(String.self, forKey: .orderType)

            cartId = try container.decode(String.self, forKey: .cartId)

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

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

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            currencyCode = try container.decode(String.self, forKey: .currencyCode)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
        }
    }
}
