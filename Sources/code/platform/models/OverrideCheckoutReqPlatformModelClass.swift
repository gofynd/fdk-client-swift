

import Foundation
public extension PlatformClient {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var orderingStore: Int?

        public var cartItems: [OverrideCartItem]

        public var cartId: String

        public var aggregator: String

        public var merchantCode: String

        public var billingAddress: [String: Any]?

        public var paymentMode: String

        public var orderType: String

        public var paymentIdentifier: String

        public var shippingAddress: [String: Any]?

        public var currencyCode: String

        public enum CodingKeys: String, CodingKey {
            case orderingStore = "ordering_store"

            case cartItems = "cart_items"

            case cartId = "cart_id"

            case aggregator

            case merchantCode = "merchant_code"

            case billingAddress = "billing_address"

            case paymentMode = "payment_mode"

            case orderType = "order_type"

            case paymentIdentifier = "payment_identifier"

            case shippingAddress = "shipping_address"

            case currencyCode = "currency_code"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.orderingStore = orderingStore

            self.cartItems = cartItems

            self.cartId = cartId

            self.aggregator = aggregator

            self.merchantCode = merchantCode

            self.billingAddress = billingAddress

            self.paymentMode = paymentMode

            self.orderType = orderType

            self.paymentIdentifier = paymentIdentifier

            self.shippingAddress = shippingAddress

            self.currencyCode = currencyCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

            cartId = try container.decode(String.self, forKey: .cartId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            do {
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            orderType = try container.decode(String.self, forKey: .orderType)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            do {
                shippingAddress = try container.decode([String: Any].self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currencyCode = try container.decode(String.self, forKey: .currencyCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }
}
