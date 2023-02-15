

import Foundation
public extension PlatformClient {
    /*
         Model: ActionInfo
         Used By: Order
     */

    class ActionInfo: Codable {
        public var description: String

        public var slug: String

        public var id: Int

        public var displayText: String

        public enum CodingKeys: String, CodingKey {
            case description

            case slug

            case id

            case displayText = "display_text"
        }

        public init(description: String, displayText: String, id: Int, slug: String) {
            self.description = description

            self.slug = slug

            self.id = id

            self.displayText = displayText
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            description = try container.decode(String.self, forKey: .description)

            slug = try container.decode(String.self, forKey: .slug)

            id = try container.decode(Int.self, forKey: .id)

            displayText = try container.decode(String.self, forKey: .displayText)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(displayText, forKey: .displayText)
        }
    }
}
