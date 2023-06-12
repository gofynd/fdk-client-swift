

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: CreatePaymentLinkMeta
         Used By: Payment
     */

    class CreatePaymentLinkMeta: Codable {
        public var checkoutMode: String

        public var cartId: String

        public var pincode: String

        public var amount: String

        public var assignCardId: String?

        public enum CodingKeys: String, CodingKey {
            case checkoutMode = "checkout_mode"

            case cartId = "cart_id"

            case pincode

            case amount

            case assignCardId = "assign_card_id"
        }

        public init(amount: String, assignCardId: String? = nil, cartId: String, checkoutMode: String, pincode: String) {
            self.checkoutMode = checkoutMode

            self.cartId = cartId

            self.pincode = pincode

            self.amount = amount

            self.assignCardId = assignCardId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            cartId = try container.decode(String.self, forKey: .cartId)

            pincode = try container.decode(String.self, forKey: .pincode)

            amount = try container.decode(String.self, forKey: .amount)

            do {
                assignCardId = try container.decode(String.self, forKey: .assignCardId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encode(assignCardId, forKey: .assignCardId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: CreatePaymentLinkMeta
         Used By: Payment
     */

    class CreatePaymentLinkMeta: Codable {
        public var checkoutMode: String

        public var cartId: String

        public var pincode: String

        public var amount: String

        public var assignCardId: String?

        public enum CodingKeys: String, CodingKey {
            case checkoutMode = "checkout_mode"

            case cartId = "cart_id"

            case pincode

            case amount

            case assignCardId = "assign_card_id"
        }

        public init(amount: String, assignCardId: String? = nil, cartId: String, checkoutMode: String, pincode: String) {
            self.checkoutMode = checkoutMode

            self.cartId = cartId

            self.pincode = pincode

            self.amount = amount

            self.assignCardId = assignCardId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            cartId = try container.decode(String.self, forKey: .cartId)

            pincode = try container.decode(String.self, forKey: .pincode)

            amount = try container.decode(String.self, forKey: .amount)

            do {
                assignCardId = try container.decode(String.self, forKey: .assignCardId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encode(assignCardId, forKey: .assignCardId)
        }
    }
}
