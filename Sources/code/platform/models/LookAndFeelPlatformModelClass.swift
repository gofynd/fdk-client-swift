

import Foundation
public extension PlatformClient {
    /*
         Model: LookAndFeel
         Used By: User
     */

    class LookAndFeel: Codable {
        public var cardPosition: String?

        public var backgroundColor: String?

        public enum CodingKeys: String, CodingKey {
            case cardPosition = "card_position"

            case backgroundColor = "background_color"
        }

        public init(backgroundColor: String? = nil, cardPosition: String? = nil) {
            self.cardPosition = cardPosition

            self.backgroundColor = backgroundColor
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cardPosition = try container.decode(String.self, forKey: .cardPosition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                backgroundColor = try container.decode(String.self, forKey: .backgroundColor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cardPosition, forKey: .cardPosition)

            try? container.encodeIfPresent(backgroundColor, forKey: .backgroundColor)
        }
    }
}
