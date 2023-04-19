

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreatePaymentLinkMeta
         Used By: Payment
     */
    class CreatePaymentLinkMeta: Codable {
        public var amount: String

        public var assignCardId: String?

        public var cartId: String

        public var checkoutMode: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case assignCardId = "assign_card_id"

            case cartId = "cart_id"

            case checkoutMode = "checkout_mode"

            case pincode
        }

        public init(amount: String, assignCardId: String? = nil, cartId: String, checkoutMode: String, pincode: String) {
            self.amount = amount

            self.assignCardId = assignCardId

            self.cartId = cartId

            self.checkoutMode = checkoutMode

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(String.self, forKey: .amount)

            do {
                assignCardId = try container.decode(String.self, forKey: .assignCardId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cartId = try container.decode(String.self, forKey: .cartId)

            checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encode(assignCardId, forKey: .assignCardId)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
