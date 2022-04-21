

import Foundation
public extension ApplicationClient {
    /*
         Model: SaveAttributeRequest
         Used By: Feedback
     */
    class SaveAttributeRequest: Codable {
        public var description: String?

        public var name: String

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case description

            case name

            case slug
        }

        public init(description: String? = nil, name: String, slug: String) {
            self.description = description

            self.name = name

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
