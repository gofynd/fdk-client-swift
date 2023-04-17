

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var aggregator: String

        public var merchantCode: String

        public var currencyCode: String

        public var orderingStore: Int?

        public var paymentIdentifier: String

        public var cartId: String

        public var cartItems: [OverrideCartItem]

        public var shippingAddress: [String: Any]?

        public var paymentMode: String

        public var billingAddress: [String: Any]?

        public var orderType: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case merchantCode = "merchant_code"

            case currencyCode = "currency_code"

            case orderingStore = "ordering_store"

            case paymentIdentifier = "payment_identifier"

            case cartId = "cart_id"

            case cartItems = "cart_items"

            case shippingAddress = "shipping_address"

            case paymentMode = "payment_mode"

            case billingAddress = "billing_address"

            case orderType = "order_type"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.aggregator = aggregator

            self.merchantCode = merchantCode

            self.currencyCode = currencyCode

            self.orderingStore = orderingStore

            self.paymentIdentifier = paymentIdentifier

            self.cartId = cartId

            self.cartItems = cartItems

            self.shippingAddress = shippingAddress

            self.paymentMode = paymentMode

            self.billingAddress = billingAddress

            self.orderType = orderType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            currencyCode = try container.decode(String.self, forKey: .currencyCode)

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            cartId = try container.decode(String.self, forKey: .cartId)

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

            do {
                shippingAddress = try container.decode([String: Any].self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(orderType, forKey: .orderType)
        }
    }
}
