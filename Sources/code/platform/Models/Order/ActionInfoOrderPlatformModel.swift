

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ActionInfo
         Used By: Order
     */

    class ActionInfo: Codable {
        public var id: Int

        public var slug: String

        public var displayText: String

        public var description: String

        public enum CodingKeys: String, CodingKey {
            case id

            case slug

            case displayText = "display_text"

            case description
        }

        public init(description: String, displayText: String, id: Int, slug: String) {
            self.id = id

            self.slug = slug

            self.displayText = displayText

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            slug = try container.decode(String.self, forKey: .slug)

            displayText = try container.decode(String.self, forKey: .displayText)

            description = try container.decode(String.self, forKey: .description)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(displayText, forKey: .displayText)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ActionInfo
         Used By: Order
     */

    class ActionInfo: Codable {
        public var id: Int

        public var slug: String

        public var displayText: String

        public var description: String

        public enum CodingKeys: String, CodingKey {
            case id

            case slug

            case displayText = "display_text"

            case description
        }

        public init(description: String, displayText: String, id: Int, slug: String) {
            self.id = id

            self.slug = slug

            self.displayText = displayText

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            slug = try container.decode(String.self, forKey: .slug)

            displayText = try container.decode(String.self, forKey: .displayText)

            description = try container.decode(String.self, forKey: .description)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(displayText, forKey: .displayText)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}
