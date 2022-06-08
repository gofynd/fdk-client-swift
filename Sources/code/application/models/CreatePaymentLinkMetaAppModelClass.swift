

import Foundation
public extension ApplicationClient {
    /*
         Model: CreatePaymentLinkMeta
         Used By: Payment
     */
    class CreatePaymentLinkMeta: Codable {
        public var pincode: String

        public var assignCardId: String

        public var amount: String

        public var checkoutMode: String

        public var cartId: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case assignCardId = "assign_card_id"

            case amount

            case checkoutMode = "checkout_mode"

            case cartId = "cart_id"
        }

        public init(amount: String, assignCardId: String, cartId: String, checkoutMode: String, pincode: String) {
            self.pincode = pincode

            self.assignCardId = assignCardId

            self.amount = amount

            self.checkoutMode = checkoutMode

            self.cartId = cartId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            assignCardId = try container.decode(String.self, forKey: .assignCardId)

            amount = try container.decode(String.self, forKey: .amount)

            checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            cartId = try container.decode(String.self, forKey: .cartId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(assignCardId, forKey: .assignCardId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(cartId, forKey: .cartId)
        }
    }
}
