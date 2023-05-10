

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartItemSchema
         Used By: Cart
     */

    class CartItemSchema: Codable {
        public var productId: String

        public var size: String

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case productId = "product_id"

            case size

            case quantity
        }

        public init(productId: String, quantity: Int? = nil, size: String) {
            self.productId = productId

            self.size = size

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            productId = try container.decode(String.self, forKey: .productId)

            size = try container.decode(String.self, forKey: .size)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
