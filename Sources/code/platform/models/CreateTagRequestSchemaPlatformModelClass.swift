

import Foundation
public extension PlatformClient {
    /*
         Model: CreateTagRequestSchema
         Used By: Content
     */

    class CreateTagRequestSchema: Codable {
        public var tags: [CreateTagSchema]?

        public enum CodingKeys: String, CodingKey {
            case tags
        }

        public init(tags: [CreateTagSchema]? = nil) {
            self.tags = tags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tags = try container.decode([CreateTagSchema].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }
}
