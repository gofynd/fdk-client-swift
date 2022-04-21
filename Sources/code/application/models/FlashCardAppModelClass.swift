

import Foundation
public extension ApplicationClient {
    /*
         Model: FlashCard
         Used By: User
     */
    class FlashCard: Codable {
        public var text: String?

        public var textColor: String?

        public var backgroundColor: String?

        public enum CodingKeys: String, CodingKey {
            case text

            case textColor = "text_color"

            case backgroundColor = "background_color"
        }

        public init(backgroundColor: String? = nil, text: String? = nil, textColor: String? = nil) {
            self.text = text

            self.textColor = textColor

            self.backgroundColor = backgroundColor
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                text = try container.decode(String.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                textColor = try container.decode(String.self, forKey: .textColor)

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

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(textColor, forKey: .textColor)

            try? container.encodeIfPresent(backgroundColor, forKey: .backgroundColor)
        }
    }
}
