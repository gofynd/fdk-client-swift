

import Foundation
public extension ApplicationClient {
    /*
         Model: FontsSchemaItemsFiles
         Used By: Theme
     */
    class FontsSchemaItemsFiles: Codable {
        public var regular: String?

        public var italic: String?

        public var bold: String?

        public enum CodingKeys: String, CodingKey {
            case regular

            case italic

            case bold
        }

        public init(bold: String? = nil, italic: String? = nil, regular: String? = nil) {
            self.regular = regular

            self.italic = italic

            self.bold = bold
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                regular = try container.decode(String.self, forKey: .regular)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                italic = try container.decode(String.self, forKey: .italic)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bold = try container.decode(String.self, forKey: .bold)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(regular, forKey: .regular)

            try? container.encodeIfPresent(italic, forKey: .italic)

            try? container.encodeIfPresent(bold, forKey: .bold)
        }
    }
}
