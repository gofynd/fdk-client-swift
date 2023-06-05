

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ActionInfo
         Used By: Order
     */

    class ActionInfo: Codable {
        public var displayText: String

        public var description: String

        public var id: Int

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case displayText = "display_text"

            case description

            case id

            case slug
        }

        public init(description: String, displayText: String, id: Int, slug: String) {
            self.displayText = displayText

            self.description = description

            self.id = id

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayText = try container.decode(String.self, forKey: .displayText)

            description = try container.decode(String.self, forKey: .description)

            id = try container.decode(Int.self, forKey: .id)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayText, forKey: .displayText)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ActionInfo
         Used By: Order
     */

    class ActionInfo: Codable {
        public var displayText: String

        public var description: String

        public var id: Int

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case displayText = "display_text"

            case description

            case id

            case slug
        }

        public init(description: String, displayText: String, id: Int, slug: String) {
            self.displayText = displayText

            self.description = description

            self.id = id

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayText = try container.decode(String.self, forKey: .displayText)

            description = try container.decode(String.self, forKey: .description)

            id = try container.decode(Int.self, forKey: .id)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayText, forKey: .displayText)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
