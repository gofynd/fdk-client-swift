

import Foundation
public extension ApplicationClient {
    /*
         Model: SharedCartResponse
         Used By: Cart
     */
    class SharedCartResponse: Codable {
        public var error: String?

        public var cart: SharedCart?

        public enum CodingKeys: String, CodingKey {
            case error

            case cart
        }

        public init(cart: SharedCart? = nil, error: String? = nil) {
            self.error = error

            self.cart = cart
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                error = try container.decode(String.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cart = try container.decode(SharedCart.self, forKey: .cart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(cart, forKey: .cart)
        }
    }
}
