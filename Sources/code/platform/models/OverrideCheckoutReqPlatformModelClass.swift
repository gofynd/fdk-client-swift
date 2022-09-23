

import Foundation
public extension PlatformClient {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var cartItems: [OverrideCartItem]

        public var paymentMode: String

        public var orderingStore: Int?

        public var billingAddress: [String: Any]?

        public var merchantCode: String

        public var shippingAddress: [String: Any]?

        public var paymentIdentifier: String

        public var currencyCode: String

        public var cartId: String

        public var aggregator: String

        public var orderType: String

        public enum CodingKeys: String, CodingKey {
            case cartItems = "cart_items"

            case paymentMode = "payment_mode"

            case orderingStore = "ordering_store"

            case billingAddress = "billing_address"

            case merchantCode = "merchant_code"

            case shippingAddress = "shipping_address"

            case paymentIdentifier = "payment_identifier"

            case currencyCode = "currency_code"

            case cartId = "cart_id"

            case aggregator

            case orderType = "order_type"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.cartItems = cartItems

            self.paymentMode = paymentMode

            self.orderingStore = orderingStore

            self.billingAddress = billingAddress

            self.merchantCode = merchantCode

            self.shippingAddress = shippingAddress

            self.paymentIdentifier = paymentIdentifier

            self.currencyCode = currencyCode

            self.cartId = cartId

            self.aggregator = aggregator

            self.orderType = orderType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

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

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            do {
                shippingAddress = try container.decode([String: Any].self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            currencyCode = try container.decode(String.self, forKey: .currencyCode)

            cartId = try container.decode(String.self, forKey: .cartId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            orderType = try container.decode(String.self, forKey: .orderType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(orderType, forKey: .orderType)
        }
    }
}
