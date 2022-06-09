

import Foundation
public extension ApplicationClient {
    /*
         Model: CreatePaymentLinkMeta
         Used By: Payment
     */
    class CreatePaymentLinkMeta: Codable {
        public var cartId: String

        public var checkoutMode: String

        public var pincode: String

        public var amount: String

        public var assignCardId: String

        public enum CodingKeys: String, CodingKey {
            case cartId = "cart_id"

            case checkoutMode = "checkout_mode"

            case pincode

            case amount

            case assignCardId = "assign_card_id"
        }

        public init(amount: String, assignCardId: String, cartId: String, checkoutMode: String, pincode: String) {
            self.cartId = cartId

            self.checkoutMode = checkoutMode

            self.pincode = pincode

            self.amount = amount

            self.assignCardId = assignCardId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cartId = try container.decode(String.self, forKey: .cartId)

            checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            pincode = try container.decode(String.self, forKey: .pincode)

            amount = try container.decode(String.self, forKey: .amount)

            assignCardId = try container.decode(String.self, forKey: .assignCardId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(assignCardId, forKey: .assignCardId)
        }
    }
}
