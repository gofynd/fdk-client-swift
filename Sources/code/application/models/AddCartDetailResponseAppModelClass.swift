

import Foundation
public extension ApplicationClient {
    /*
         Model: AddCartDetailResponse
         Used By: Cart
     */
    class AddCartDetailResponse: Codable {
        public var partial: Bool?

        public var success: Bool?

        public var cart: CartDetailResponse?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case partial

            case success

            case cart

            case message
        }

        public init(cart: CartDetailResponse? = nil, message: String? = nil, partial: Bool? = nil, success: Bool? = nil) {
            self.partial = partial

            self.success = success

            self.cart = cart

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                partial = try container.decode(Bool.self, forKey: .partial)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cart = try container.decode(CartDetailResponse.self, forKey: .cart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(partial, forKey: .partial)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(cart, forKey: .cart)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
