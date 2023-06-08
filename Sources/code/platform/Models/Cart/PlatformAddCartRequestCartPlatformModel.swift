

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PlatformAddCartRequest
         Used By: Cart
     */

    class PlatformAddCartRequest: Codable {
        public var userId: String?

        public var items: [AddProductCart]?

        public var newCart: Bool?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case items

            case newCart = "new_cart"
        }

        public init(items: [AddProductCart]? = nil, newCart: Bool? = nil, userId: String? = nil) {
            self.userId = userId

            self.items = items

            self.newCart = newCart
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                userId = try container.decode(String.self, forKey: .userId)

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

            do {
                newCart = try container.decode(Bool.self, forKey: .newCart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(newCart, forKey: .newCart)
        }
    }
}
