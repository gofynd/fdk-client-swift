

import Foundation
public extension PlatformClient {
    /*
         Model: EmailProvider
         Used By: Communication
     */

    class EmailProvider: Codable {
        public var type: String?

        public var provider: String?

        public var fromAddress: [EmailProviderReqFrom]?

        public var id: String?

        public var name: String?

        public var description: String?

        public var apiKey: String?

        public var application: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var slug: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case type

            case provider

            case fromAddress = "from_address"

            case id = "_id"

            case name

            case description

            case apiKey = "api_key"

            case application

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case slug

            case v = "__v"
        }

        public init(apiKey: String? = nil, application: String? = nil, createdAt: String? = nil, description: String? = nil, fromAddress: [EmailProviderReqFrom]? = nil, name: String? = nil, provider: String? = nil, slug: String? = nil, type: String? = nil, updatedAt: String? = nil, id: String? = nil, v: Int? = nil) {
            self.type = type

            self.provider = provider

            self.fromAddress = fromAddress

            self.id = id

            self.name = name

            self.description = description

            self.apiKey = apiKey

            self.application = application

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.slug = slug

            self.v = v
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                provider = try container.decode(String.self, forKey: .provider)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fromAddress = try container.decode([EmailProviderReqFrom].self, forKey: .fromAddress)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                apiKey = try container.decode(String.self, forKey: .apiKey)

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

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(provider, forKey: .provider)

            try? container.encodeIfPresent(fromAddress, forKey: .fromAddress)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(apiKey, forKey: .apiKey)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }
}
