

import Foundation
public extension PlatformClient {
    /*
         Model: CartItem
         Used By: Cart
     */

    class CartItem: Codable {
        public var productId: String

        public var quantity: Int?

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case productId = "product_id"

            case quantity

            case size
        }

        public init(productId: String, quantity: Int? = nil, size: String) {
            self.productId = productId

            self.quantity = quantity

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            productId = try container.decode(String.self, forKey: .productId)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
