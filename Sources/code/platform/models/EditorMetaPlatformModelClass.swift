

import Foundation
public extension PlatformClient {
    /*
         Model: EditorMeta
         Used By: Content
     */

    class EditorMeta: Codable {
        public var foregroundColor: String?

        public var backgroundColor: String?

        public var contentType: String?

        public var content: String?

        public enum CodingKeys: String, CodingKey {
            case foregroundColor = "foreground_color"

            case backgroundColor = "background_color"

            case contentType = "content_type"

            case content
        }

        public init(backgroundColor: String? = nil, content: String? = nil, contentType: String? = nil, foregroundColor: String? = nil) {
            self.foregroundColor = foregroundColor

            self.backgroundColor = backgroundColor

            self.contentType = contentType

            self.content = content
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                foregroundColor = try container.decode(String.self, forKey: .foregroundColor)

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

            do {
                contentType = try container.decode(String.self, forKey: .contentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                content = try container.decode(String.self, forKey: .content)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(foregroundColor, forKey: .foregroundColor)

            try? container.encodeIfPresent(backgroundColor, forKey: .backgroundColor)

            try? container.encodeIfPresent(contentType, forKey: .contentType)

            try? container.encodeIfPresent(content, forKey: .content)
        }
    }
}
