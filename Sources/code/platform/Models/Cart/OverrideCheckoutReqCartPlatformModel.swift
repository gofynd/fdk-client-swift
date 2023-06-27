

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var aggregator: String

        public var shippingAddress: [String: Any]?

        public var orderType: String

        public var cartItems: [OverrideCartItem]

        public var merchantCode: String

        public var cartId: String

        public var orderingStore: Int?

        public var billingAddress: [String: Any]?

        public var paymentIdentifier: String

        public var paymentMode: String

        public var currencyCode: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case shippingAddress = "shipping_address"

            case orderType = "order_type"

            case cartItems = "cart_items"

            case merchantCode = "merchant_code"

            case cartId = "cart_id"

            case orderingStore = "ordering_store"

            case billingAddress = "billing_address"

            case paymentIdentifier = "payment_identifier"

            case paymentMode = "payment_mode"

            case currencyCode = "currency_code"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.aggregator = aggregator

            self.shippingAddress = shippingAddress

            self.orderType = orderType

            self.cartItems = cartItems

            self.merchantCode = merchantCode

            self.cartId = cartId

            self.orderingStore = orderingStore

            self.billingAddress = billingAddress

            self.paymentIdentifier = paymentIdentifier

            self.paymentMode = paymentMode

            self.currencyCode = currencyCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                shippingAddress = try container.decode([String: Any].self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            cartId = try container.decode(String.self, forKey: .cartId)

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

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

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            currencyCode = try container.decode(String.self, forKey: .currencyCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }
}
