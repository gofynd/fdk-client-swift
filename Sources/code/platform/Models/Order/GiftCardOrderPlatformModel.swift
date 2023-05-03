

import Foundation

public extension PlatformClient.Order {
    /*
         Model: GiftCard
         Used By: Order
     */

    class GiftCard: Codable {
        public var isGiftApplied: Bool?

        public var displayText: String?

        public var giftMessage: String?

        public var giftPrice: Int?

        public enum CodingKeys: String, CodingKey {
            case isGiftApplied = "is_gift_applied"

            case displayText = "display_text"

            case giftMessage = "gift_message"

            case giftPrice = "gift_price"
        }

        public init(displayText: String? = nil, giftMessage: String? = nil, giftPrice: Int? = nil, isGiftApplied: Bool? = nil) {
            self.isGiftApplied = isGiftApplied

            self.displayText = displayText

            self.giftMessage = giftMessage

            self.giftPrice = giftPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isGiftApplied = try container.decode(Bool.self, forKey: .isGiftApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayText = try container.decode(String.self, forKey: .displayText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                giftMessage = try container.decode(String.self, forKey: .giftMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                giftPrice = try container.decode(Int.self, forKey: .giftPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isGiftApplied, forKey: .isGiftApplied)

            try? container.encodeIfPresent(displayText, forKey: .displayText)

            try? container.encodeIfPresent(giftMessage, forKey: .giftMessage)

            try? container.encodeIfPresent(giftPrice, forKey: .giftPrice)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: GiftCard
         Used By: Order
     */

    class GiftCard: Codable {
        public var isGiftApplied: Bool?

        public var displayText: String?

        public var giftMessage: String?

        public var giftPrice: Int?

        public enum CodingKeys: String, CodingKey {
            case isGiftApplied = "is_gift_applied"

            case displayText = "display_text"

            case giftMessage = "gift_message"

            case giftPrice = "gift_price"
        }

        public init(displayText: String? = nil, giftMessage: String? = nil, giftPrice: Int? = nil, isGiftApplied: Bool? = nil) {
            self.isGiftApplied = isGiftApplied

            self.displayText = displayText

            self.giftMessage = giftMessage

            self.giftPrice = giftPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isGiftApplied = try container.decode(Bool.self, forKey: .isGiftApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayText = try container.decode(String.self, forKey: .displayText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                giftMessage = try container.decode(String.self, forKey: .giftMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                giftPrice = try container.decode(Int.self, forKey: .giftPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isGiftApplied, forKey: .isGiftApplied)

            try? container.encodeIfPresent(displayText, forKey: .displayText)

            try? container.encodeIfPresent(giftMessage, forKey: .giftMessage)

            try? container.encodeIfPresent(giftPrice, forKey: .giftPrice)
        }
    }
}
