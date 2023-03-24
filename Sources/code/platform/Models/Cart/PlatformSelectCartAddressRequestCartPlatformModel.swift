

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PlatformSelectCartAddressRequest
         Used By: Cart
     */

    class PlatformSelectCartAddressRequest: Codable {
        public var checkoutMode: String?

        public var billingAddressId: String?

        public var id: String?

        public var cartId: String?

        public enum CodingKeys: String, CodingKey {
            case checkoutMode = "checkout_mode"

            case billingAddressId = "billing_address_id"

            case id

            case cartId = "cart_id"
        }

        public init(billingAddressId: String? = nil, cartId: String? = nil, checkoutMode: String? = nil, id: String? = nil) {
            self.checkoutMode = checkoutMode

            self.billingAddressId = billingAddressId

            self.id = id

            self.cartId = cartId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cartId, forKey: .cartId)
        }
    }
}
