

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformSelectCartAddressRequest
         Used By: Cart
     */

    class PlatformSelectCartAddressRequest: Codable {
        public var cartId: String?

        public var id: String?

        public var checkoutMode: String?

        public var billingAddressId: String?

        public enum CodingKeys: String, CodingKey {
            case cartId = "cart_id"

            case id

            case checkoutMode = "checkout_mode"

            case billingAddressId = "billing_address_id"
        }

        public init(billingAddressId: String? = nil, cartId: String? = nil, checkoutMode: String? = nil, id: String? = nil) {
            self.cartId = cartId

            self.id = id

            self.checkoutMode = checkoutMode

            self.billingAddressId = billingAddressId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
        }
    }
}