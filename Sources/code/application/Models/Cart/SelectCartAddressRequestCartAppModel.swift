

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: SelectCartAddressRequest
         Used By: Cart
     */
    class SelectCartAddressRequest: Codable {
        public var id: String?

        public var cartId: String?

        public var billingAddressId: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case cartId = "cart_id"

            case billingAddressId = "billing_address_id"
        }

        public init(billingAddressId: String? = nil, cartId: String? = nil, id: String? = nil) {
            self.id = id

            self.cartId = cartId

            self.billingAddressId = billingAddressId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingAddressId = try container.decode(String.self, forKey: .billingAddressId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
        }
    }
}
