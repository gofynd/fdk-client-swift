import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: OpenapiCartDetailsRequest
         Used By: Cart
     */

    class OpenapiCartDetailsRequest: Codable {
        public var cartItems: CartItem?

        public enum CodingKeys: String, CodingKey {
            case cartItems = "cart_items"
        }

        public init(cartItems: CartItem? = nil) {
            self.cartItems = cartItems
        }

        public func duplicate() -> OpenapiCartDetailsRequest {
            let dict = self.dictionary!
            let copy = OpenapiCartDetailsRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cartItems = try container.decode(CartItem.self, forKey: .cartItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
        }
    }
}
