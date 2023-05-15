

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: OpenApiCartServiceabilityRequest
         Used By: Cart
     */

    class OpenApiCartServiceabilityRequest: Codable {
        public var shippingAddress: ShippingAddressSchema

        public var cartItems: [CartItemSchema]

        public enum CodingKeys: String, CodingKey {
            case shippingAddress = "shipping_address"

            case cartItems = "cart_items"
        }

        public init(cartItems: [CartItemSchema], shippingAddress: ShippingAddressSchema) {
            self.shippingAddress = shippingAddress

            self.cartItems = cartItems
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shippingAddress = try container.decode(ShippingAddressSchema.self, forKey: .shippingAddress)

            cartItems = try container.decode([CartItemSchema].self, forKey: .cartItems)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
        }
    }
}
