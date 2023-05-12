

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiCartServiceabilityRequest
         Used By: Cart
     */

    class OpenApiCartServiceabilityRequest: Codable {
        public var cartItems: [CartItemSchema]

        public var shippingAddress: ShippingAddressSchema

        public enum CodingKeys: String, CodingKey {
            case cartItems = "cart_items"

            case shippingAddress = "shipping_address"
        }

        public init(cartItems: [CartItemSchema], shippingAddress: ShippingAddressSchema) {
            self.cartItems = cartItems

            self.shippingAddress = shippingAddress
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cartItems = try container.decode([CartItemSchema].self, forKey: .cartItems)

            shippingAddress = try container.decode(ShippingAddressSchema.self, forKey: .shippingAddress)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
        }
    }
}
