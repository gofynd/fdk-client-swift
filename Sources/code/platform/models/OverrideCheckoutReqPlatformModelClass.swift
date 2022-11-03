

import Foundation
public extension PlatformClient {
    /*
         Model: OverrideCheckoutReq
         Used By: Cart
     */

    class OverrideCheckoutReq: Codable {
        public var billingAddress: [String: Any]?

        public var orderingStore: Int?

        public var cartId: String

        public var paymentMode: String

        public var paymentIdentifier: String

        public var orderType: String

        public var shippingAddress: [String: Any]?

        public var aggregator: String

        public var merchantCode: String

        public var cartItems: [OverrideCartItem]

        public var currencyCode: String

        public enum CodingKeys: String, CodingKey {
            case billingAddress = "billing_address"

            case orderingStore = "ordering_store"

            case cartId = "cart_id"

            case paymentMode = "payment_mode"

            case paymentIdentifier = "payment_identifier"

            case orderType = "order_type"

            case shippingAddress = "shipping_address"

            case aggregator

            case merchantCode = "merchant_code"

            case cartItems = "cart_items"

            case currencyCode = "currency_code"
        }

        public init(aggregator: String, billingAddress: [String: Any]? = nil, cartId: String, cartItems: [OverrideCartItem], currencyCode: String, merchantCode: String, orderingStore: Int? = nil, orderType: String, paymentIdentifier: String, paymentMode: String, shippingAddress: [String: Any]? = nil) {
            self.billingAddress = billingAddress

            self.orderingStore = orderingStore

            self.cartId = cartId

            self.paymentMode = paymentMode

            self.paymentIdentifier = paymentIdentifier

            self.orderType = orderType

            self.shippingAddress = shippingAddress

            self.aggregator = aggregator

            self.merchantCode = merchantCode

            self.cartItems = cartItems

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

            do {
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartId = try container.decode(String.self, forKey: .cartId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                shippingAddress = try container.decode([String: Any].self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantCode = try container.decode(String.self, forKey: .merchantCode)

            cartItems = try container.decode([OverrideCartItem].self, forKey: .cartItems)

            currencyCode = try container.decode(String.self, forKey: .currencyCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encode(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }
}
