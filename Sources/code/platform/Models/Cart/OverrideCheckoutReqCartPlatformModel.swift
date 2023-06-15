

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var billingAddress: [String: Any]?

        public var cartId: String

        public var aggregator: String

        public var cartItems: [OverrideCartItem]

        public var orderingStore: Int?

        public var shippingAddress: [String: Any]?

        public var orderType: String

        public var merchantCode: String

        public var paymentMode: String

        public var paymentIdentifier: String

        public var currencyCode: String

        public enum CodingKeys: String, CodingKey {
            case billingAddress = "billing_address"

            case cartId = "cart_id"

            case aggregator

            case cartItems = "cart_items"

            case orderingStore = "ordering_store"

            case shippingAddress = "shipping_address"

            case orderType = "order_type"

            case merchantCode = "merchant_code"

            case paymentMode = "payment_mode"

            case paymentIdentifier = "payment_identifier"

            case currencyCode = "currency_code"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.billingAddress = billingAddress

            self.cartId = cartId

            self.aggregator = aggregator

            self.cartItems = cartItems

            self.orderingStore = orderingStore

            self.shippingAddress = shippingAddress

            self.orderType = orderType

            self.merchantCode = merchantCode

            self.paymentMode = paymentMode

            self.paymentIdentifier = paymentIdentifier

            self.currencyCode = currencyCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartId = try container.decode(String.self, forKey: .cartId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

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

            orderType = try container.decode(String.self, forKey: .orderType)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            currencyCode = try container.decode(String.self, forKey: .currencyCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }
}
