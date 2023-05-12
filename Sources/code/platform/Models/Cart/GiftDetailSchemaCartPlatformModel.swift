

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: GiftDetailSchema
         Used By: Cart
     */

    class GiftDetailSchema: Codable {
        public var giftMessage: String?

        public var isGiftApplied: Bool?

        public enum CodingKeys: String, CodingKey {
            case giftMessage = "gift_message"

            case isGiftApplied = "is_gift_applied"
        }

        public init(giftMessage: String? = nil, isGiftApplied: Bool? = nil) {
            self.giftMessage = giftMessage

            self.isGiftApplied = isGiftApplied
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                giftMessage = try container.decode(String.self, forKey: .giftMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isGiftApplied = try container.decode(Bool.self, forKey: .isGiftApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(giftMessage, forKey: .giftMessage)

            try? container.encodeIfPresent(isGiftApplied, forKey: .isGiftApplied)
        }
    }
}
