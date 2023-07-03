

import Foundation

public extension PlatformClient.Communication {
    /*
         Model: SystemSmsTemplates
         Used By: Communication
     */

    class SystemSmsTemplates: Codable {
        public var urlShorten: EnabledObj?

        public var id: String?

        public var isSystem: Bool?

        public var isInternal: Bool?

        public var name: String?

        public var description: String?

        public var message: SmsTemplateMessage?

        public var priority: String?

        public var tags: [String]?

        public var templateVariables: [String: Any]?

        public var templateId: String?

        public var published: Bool?

        public var category: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var slug: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case urlShorten = "url_shorten"

            case id = "_id"

            case isSystem = "is_system"

            case isInternal = "is_internal"

            case name

            case description

            case message

            case priority

            case tags

            case templateVariables = "template_variables"

            case templateId = "template_id"

            case published

            case category

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case slug

            case v = "__v"
        }

        public init(category: String? = nil, createdAt: String? = nil, description: String? = nil, isInternal: Bool? = nil, isSystem: Bool? = nil, message: SmsTemplateMessage? = nil, name: String? = nil, priority: String? = nil, published: Bool? = nil, slug: String? = nil, tags: [String]? = nil, templateId: String? = nil, templateVariables: [String: Any]? = nil, updatedAt: String? = nil, urlShorten: EnabledObj? = nil, id: String? = nil, v: Int? = nil) {
            self.urlShorten = urlShorten

            self.id = id

            self.isSystem = isSystem

            self.isInternal = isInternal

            self.name = name

            self.description = description

            self.message = message

            self.priority = priority

            self.tags = tags

            self.templateVariables = templateVariables

            self.templateId = templateId

            self.published = published

            self.category = category

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.slug = slug

            self.v = v
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                urlShorten = try container.decode(EnabledObj.self, forKey: .urlShorten)

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
                name = try container.decode(String.self, forKey: .name)

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
                message = try container.decode(SmsTemplateMessage.self, forKey: .message)

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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateVariables = try container.decode([String: Any].self, forKey: .templateVariables)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateId = try container.decode(String.self, forKey: .templateId)

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
                category = try container.decode(String.self, forKey: .category)

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

            try? container.encodeIfPresent(urlShorten, forKey: .urlShorten)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isSystem, forKey: .isSystem)

            try? container.encodeIfPresent(isInternal, forKey: .isInternal)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(templateVariables, forKey: .templateVariables)

            try? container.encodeIfPresent(templateId, forKey: .templateId)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }
}

public extension PlatformClient.ApplicationClient.Communication {
    /*
         Model: SystemSmsTemplates
         Used By: Communication
     */

    class SystemSmsTemplates: Codable {
        public var urlShorten: EnabledObj?

        public var id: String?

        public var isSystem: Bool?

        public var isInternal: Bool?

        public var name: String?

        public var description: String?

        public var message: SmsTemplateMessage?

        public var priority: String?

        public var tags: [String]?

        public var templateVariables: [String: Any]?

        public var templateId: String?

        public var published: Bool?

        public var category: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var slug: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case urlShorten = "url_shorten"

            case id = "_id"

            case isSystem = "is_system"

            case isInternal = "is_internal"

            case name

            case description

            case message

            case priority

            case tags

            case templateVariables = "template_variables"

            case templateId = "template_id"

            case published

            case category

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case slug

            case v = "__v"
        }

        public init(category: String? = nil, createdAt: String? = nil, description: String? = nil, isInternal: Bool? = nil, isSystem: Bool? = nil, message: SmsTemplateMessage? = nil, name: String? = nil, priority: String? = nil, published: Bool? = nil, slug: String? = nil, tags: [String]? = nil, templateId: String? = nil, templateVariables: [String: Any]? = nil, updatedAt: String? = nil, urlShorten: EnabledObj? = nil, id: String? = nil, v: Int? = nil) {
            self.urlShorten = urlShorten

            self.id = id

            self.isSystem = isSystem

            self.isInternal = isInternal

            self.name = name

            self.description = description

            self.message = message

            self.priority = priority

            self.tags = tags

            self.templateVariables = templateVariables

            self.templateId = templateId

            self.published = published

            self.category = category

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.slug = slug

            self.v = v
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                urlShorten = try container.decode(EnabledObj.self, forKey: .urlShorten)

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
                name = try container.decode(String.self, forKey: .name)

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
                message = try container.decode(SmsTemplateMessage.self, forKey: .message)

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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateVariables = try container.decode([String: Any].self, forKey: .templateVariables)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateId = try container.decode(String.self, forKey: .templateId)

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
                category = try container.decode(String.self, forKey: .category)

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

            try? container.encodeIfPresent(urlShorten, forKey: .urlShorten)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isSystem, forKey: .isSystem)

            try? container.encodeIfPresent(isInternal, forKey: .isInternal)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(templateVariables, forKey: .templateVariables)

            try? container.encodeIfPresent(templateId, forKey: .templateId)

            try? container.encodeIfPresent(published, forKey: .published)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }
}
