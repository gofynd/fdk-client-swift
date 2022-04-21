

import Foundation
public extension PlatformClient {
    /*
         Model: Audience
         Used By: Communication
     */

    class Audience: Codable {
        public var description: String?

        public var tags: [String]?

        public var headers: [String]?

        public var isActive: Bool?

        public var id: String?

        public var name: String?

        public var fileUrl: String?

        public var type: String?

        public var recordsCount: Int?

        public var application: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var slug: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case description

            case tags

            case headers

            case isActive = "is_active"

            case id = "_id"

            case name

            case fileUrl = "file_url"

            case type

            case recordsCount = "records_count"

            case application

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case slug

            case v = "__v"
        }

        public init(application: String? = nil, createdAt: String? = nil, description: String? = nil, fileUrl: String? = nil, headers: [String]? = nil, isActive: Bool? = nil, name: String? = nil, recordsCount: Int? = nil, slug: String? = nil, tags: [String]? = nil, type: String? = nil, updatedAt: String? = nil, id: String? = nil, v: Int? = nil) {
            self.description = description

            self.tags = tags

            self.headers = headers

            self.isActive = isActive

            self.id = id

            self.name = name

            self.fileUrl = fileUrl

            self.type = type

            self.recordsCount = recordsCount

            self.application = application

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.slug = slug

            self.v = v
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headers = try container.decode([String].self, forKey: .headers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fileUrl = try container.decode(String.self, forKey: .fileUrl)

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
                recordsCount = try container.decode(Int.self, forKey: .recordsCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(recordsCount, forKey: .recordsCount)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }
}
