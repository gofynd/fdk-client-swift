

import Foundation
public extension ApplicationClient {
    /*
         Model: CreateTagSchema
         Used By: Content
     */
    class CreateTagSchema: Codable {
        public var name: String?

        public var subType: String?

        public var id: String?

        public var type: String?

        public var url: String?

        public var position: String?

        public var attributes: [String: Any]?

        public var content: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case subType = "sub_type"

            case id = "_id"

            case type

            case url

            case position

            case attributes

            case content
        }

        public init(attributes: [String: Any]? = nil, content: String? = nil, name: String? = nil, position: String? = nil, subType: String? = nil, type: String? = nil, url: String? = nil, id: String? = nil) {
            self.name = name

            self.subType = subType

            self.id = id

            self.type = type

            self.url = url

            self.position = position

            self.attributes = attributes

            self.content = content
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subType = try container.decode(String.self, forKey: .subType)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                position = try container.decode(String.self, forKey: .position)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

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

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(position, forKey: .position)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(content, forKey: .content)
        }
    }
}
