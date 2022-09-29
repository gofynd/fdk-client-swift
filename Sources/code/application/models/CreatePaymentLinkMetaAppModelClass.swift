

import Foundation
public extension ApplicationClient {
    /*
         Model: CreatePaymentLinkMeta
         Used By: Payment
     */
    class CreatePaymentLinkMeta: Codable {
        public var pincode: String

        public var assignCardId: String?

        public var checkoutMode: String

        public var cartId: String

        public var amount: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case assignCardId = "assign_card_id"

            case checkoutMode = "checkout_mode"

            case cartId = "cart_id"

            case amount
        }

        public init(amount: String, assignCardId: String? = nil, cartId: String, checkoutMode: String, pincode: String) {
            self.pincode = pincode

            self.assignCardId = assignCardId

            self.checkoutMode = checkoutMode

            self.cartId = cartId

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                assignCardId = try container.decode(String.self, forKey: .assignCardId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            cartId = try container.decode(String.self, forKey: .cartId)

            amount = try container.decode(String.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(assignCardId, forKey: .assignCardId)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(amount, forKey: .amount)
        }
    }
}
