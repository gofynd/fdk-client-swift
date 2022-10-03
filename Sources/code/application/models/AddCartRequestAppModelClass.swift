

import Foundation
public extension ApplicationClient {
    /*
         Model: AddCartRequest
         Used By: Cart
     */
    class AddCartRequest: Codable {
        public var newCart: String?

        public var items: [AddProductCart]?

        public enum CodingKeys: String, CodingKey {
            case newCart = "new_cart"

            case items
        }

        public init(items: [AddProductCart]? = nil, newCart: String? = nil) {
            self.newCart = newCart

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                newCart = try container.decode(String.self, forKey: .newCart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([AddProductCart].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(newCart, forKey: .newCart)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
