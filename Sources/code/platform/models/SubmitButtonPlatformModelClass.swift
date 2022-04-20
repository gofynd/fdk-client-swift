

import Foundation
public extension PlatformClient {
    /*
         Model: SubmitButton
         Used By: Lead
     */

    class SubmitButton: Codable {
        public var title: String

        public var titleColor: String

        public var backgroundColor: String

        public enum CodingKeys: String, CodingKey {
            case title

            case titleColor = "title_color"

            case backgroundColor = "background_color"
        }

        public init(backgroundColor: String, title: String, titleColor: String) {
            self.title = title

            self.titleColor = titleColor

            self.backgroundColor = backgroundColor
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            title = try container.decode(String.self, forKey: .title)

            titleColor = try container.decode(String.self, forKey: .titleColor)

            backgroundColor = try container.decode(String.self, forKey: .backgroundColor)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(titleColor, forKey: .titleColor)

            try? container.encodeIfPresent(backgroundColor, forKey: .backgroundColor)
        }
    }
}
