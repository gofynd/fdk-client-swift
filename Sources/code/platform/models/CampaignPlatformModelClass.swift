

import Foundation
public extension PlatformClient {
    /*
         Model: Campaign
         Used By: Communication
     */

    class Campaign: Codable {
        public var recipientHeaders: RecipientHeaders?

        public var email: CampaignEmail?

        public var description: String?

        public var tags: [[String: Any]]?

        public var isActive: Bool?

        public var id: String?

        public var datasource: String?

        public var type: String?

        public var name: String?

        public var application: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var slug: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case recipientHeaders = "recipient_headers"

            case email

            case description

            case tags

            case isActive = "is_active"

            case id = "_id"

            case datasource

            case type

            case name

            case application

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case slug

            case v = "__v"
        }

        public init(application: String? = nil, createdAt: String? = nil, datasource: String? = nil, description: String? = nil, email: CampaignEmail? = nil, isActive: Bool? = nil, name: String? = nil, recipientHeaders: RecipientHeaders? = nil, slug: String? = nil, tags: [[String: Any]]? = nil, type: String? = nil, updatedAt: String? = nil, id: String? = nil, v: Int? = nil) {
            self.recipientHeaders = recipientHeaders

            self.email = email

            self.description = description

            self.tags = tags

            self.isActive = isActive

            self.id = id

            self.datasource = datasource

            self.type = type

            self.name = name

            self.application = application

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.slug = slug

            self.v = v
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                recipientHeaders = try container.decode(RecipientHeaders.self, forKey: .recipientHeaders)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(CampaignEmail.self, forKey: .email)

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
                tags = try container.decode([[String: Any]].self, forKey: .tags)

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
                datasource = try container.decode(String.self, forKey: .datasource)

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
                name = try container.decode(String.self, forKey: .name)

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

            try? container.encodeIfPresent(recipientHeaders, forKey: .recipientHeaders)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(datasource, forKey: .datasource)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }
}
