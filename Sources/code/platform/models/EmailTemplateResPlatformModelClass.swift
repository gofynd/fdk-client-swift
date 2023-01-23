

import Foundation
public extension PlatformClient {
    /*
         Model: EmailTemplateRes
         Used By: Communication
     */

    class EmailTemplateRes: Codable {
        public var isSystem: Bool?

        public var isInternal: Bool?

        public var description: String?

        public var staticTo: [String]?

        public var staticCc: [String]?

        public var staticBcc: [String]?

        public var tags: [[String: Any]]?

        public var priority: String?

        public var published: Bool?

        public var id: String?

        public var name: String?

        public var keys: EmailTemplateKeys?

        public var replyTo: String?

        public var headers: [EmailTemplateHeaders]?

        public var subject: TemplateAndType?

        public var html: TemplateAndType?

        public var text: TemplateAndType?

        public var attachments: [[String: Any]]?

        public var createdAt: String?

        public var updatedAt: String?

        public var slug: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case isSystem = "is_system"

            case isInternal = "is_internal"

            case description

            case staticTo = "static_to"

            case staticCc = "static_cc"

            case staticBcc = "static_bcc"

            case tags

            case priority

            case published

            case id = "_id"

            case name

            case keys

            case replyTo = "reply_to"

            case headers

            case subject

            case html

            case text

            case attachments

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case slug

            case v = "__v"
        }

        public init(attachments: [[String: Any]]? = nil, createdAt: String? = nil, description: String? = nil, headers: [EmailTemplateHeaders]? = nil, html: TemplateAndType? = nil, isInternal: Bool? = nil, isSystem: Bool? = nil, keys: EmailTemplateKeys? = nil, name: String? = nil, priority: String? = nil, published: Bool? = nil, replyTo: String? = nil, slug: String? = nil, staticBcc: [String]? = nil, staticCc: [String]? = nil, staticTo: [String]? = nil, subject: TemplateAndType? = nil, tags: [[String: Any]]? = nil, text: TemplateAndType? = nil, updatedAt: String? = nil, id: String? = nil, v: Int? = nil) {
            self.isSystem = isSystem

            self.isInternal = isInternal

            self.description = description

            self.staticTo = staticTo

            self.staticCc = staticCc

            self.staticBcc = staticBcc

            self.tags = tags

            self.priority = priority

            self.published = published

            self.id = id

            self.name = name

            self.keys = keys

            self.replyTo = replyTo

            self.headers = headers

            self.subject = subject

            self.html = html

            self.text = text

            self.attachments = attachments

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.slug = slug

            self.v = v
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isSystem = try container.decode(Bool.self, forKey: .isSystem)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isInternal = try container.decode(Bool.self, forKey: .isInternal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                staticTo = try container.decode([String].self, forKey: .staticTo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                staticCc = try container.decode([String].self, forKey: .staticCc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                staticBcc = try container.decode([String].self, forKey: .staticBcc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([[String: Any]].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(String.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                published = try container.decode(Bool.self, forKey: .published)

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
                keys = try container.decode(EmailTemplateKeys.self, forKey: .keys)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                replyTo = try container.decode(String.self, forKey: .replyTo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headers = try container.decode([EmailTemplateHeaders].self, forKey: .headers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subject = try container.decode(TemplateAndType.self, forKey: .subject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                html = try container.decode(TemplateAndType.self, forKey: .html)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text = try container.decode(TemplateAndType.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attachments = try container.decode([[String: Any]].self, forKey: .attachments)

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

            try? container.encodeIfPresent(isSystem, forKey: .isSystem)

            try? container.encodeIfPresent(isInternal, forKey: .isInternal)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(staticTo, forKey: .staticTo)

            try? container.encodeIfPresent(staticCc, forKey: .staticCc)

            try? container.encodeIfPresent(staticBcc, forKey: .staticBcc)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(keys, forKey: .keys)

            try? container.encodeIfPresent(replyTo, forKey: .replyTo)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(subject, forKey: .subject)

            try? container.encodeIfPresent(html, forKey: .html)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(attachments, forKey: .attachments)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }
}
