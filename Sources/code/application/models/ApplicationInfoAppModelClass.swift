

import Foundation
public extension ApplicationClient {
    /*
         Model: ApplicationInfo
         Used By: Configuration
     */
    class ApplicationInfo: Codable {
        public var id: String?

        public var domain: Domain?

        public var website: ApplicationWebsite?

        public var cors: ApplicationCors?

        public var description: String?

        public var name: String?

        public var meta: ApplicationMeta?

        public var token: String?

        public var secret: String?

        public var createdAt: String?

        public var banner: SecureUrl?

        public var logo: SecureUrl?

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case domain

            case website

            case cors

            case description

            case name

            case meta

            case token

            case secret

            case createdAt = "created_at"

            case banner

            case logo

            case isActive = "is_active"
        }

        public init(banner: SecureUrl? = nil, cors: ApplicationCors? = nil, createdAt: String? = nil, description: String? = nil, domain: Domain? = nil, isActive: Bool? = nil, logo: SecureUrl? = nil, meta: ApplicationMeta? = nil, name: String? = nil, secret: String? = nil, token: String? = nil, website: ApplicationWebsite? = nil, id: String? = nil) {
            self.id = id

            self.domain = domain

            self.website = website

            self.cors = cors

            self.description = description

            self.name = name

            self.meta = meta

            self.token = token

            self.secret = secret

            self.createdAt = createdAt

            self.banner = banner

            self.logo = logo

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                domain = try container.decode(Domain.self, forKey: .domain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                website = try container.decode(ApplicationWebsite.self, forKey: .website)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cors = try container.decode(ApplicationCors.self, forKey: .cors)

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(ApplicationMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                secret = try container.decode(String.self, forKey: .secret)

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
                banner = try container.decode(SecureUrl.self, forKey: .banner)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(SecureUrl.self, forKey: .logo)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(domain, forKey: .domain)

            try? container.encodeIfPresent(website, forKey: .website)

            try? container.encodeIfPresent(cors, forKey: .cors)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(banner, forKey: .banner)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
