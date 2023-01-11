

import Foundation
public extension PlatformClient {
    /*
         Model: ActionInfo
         Used By: Order
     */

    class ActionInfo: Codable {
        public var id: Int

        public var displayText: String

        public var slug: String

        public var description: String

        public enum CodingKeys: String, CodingKey {
            case id

            case displayText = "display_text"

            case slug

            case description
        }

        public init(description: String, displayText: String, id: Int, slug: String) {
            self.id = id

            self.displayText = displayText

            self.slug = slug

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            displayText = try container.decode(String.self, forKey: .displayText)

            slug = try container.decode(String.self, forKey: .slug)

            description = try container.decode(String.self, forKey: .description)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(displayText, forKey: .displayText)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}
