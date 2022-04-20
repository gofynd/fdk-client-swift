

import Foundation
public extension ApplicationClient {
    /*
         Model: TagsSchema
         Used By: Content
     */
    class TagsSchema: Codable {
        public var application: String?

        public var id: String?

        public var tags: [TagSchema]?

        public enum CodingKeys: String, CodingKey {
            case application

            case id = "_id"

            case tags
        }

        public init(application: String? = nil, tags: [TagSchema]? = nil, id: String? = nil) {
            self.application = application

            self.id = id

            self.tags = tags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([TagSchema].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }
}
