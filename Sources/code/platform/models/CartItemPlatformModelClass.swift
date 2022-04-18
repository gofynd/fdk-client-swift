import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CartItem
         Used By: Cart
     */

    class CartItem: Codable {
        public var quantity: Int?

        public var size: String

        public var productId: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case size

            case productId = "product_id"
        }

        public init(productId: String, quantity: Int? = nil, size: String) {
            self.quantity = quantity

            self.size = size

            self.productId = productId
        }

        public func duplicate() -> CartItem {
            let dict = self.dictionary!
            let copy = CartItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            productId = try container.decode(String.self, forKey: .productId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(productId, forKey: .productId)
        }
    }
}
