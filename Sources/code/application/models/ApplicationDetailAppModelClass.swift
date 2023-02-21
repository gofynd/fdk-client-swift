

import Foundation
public extension ApplicationClient {
    /*
         Model: ApplicationDetail
         Used By: Configuration
     */
    class ApplicationDetail: Codable {
        public var name: String?

        public var description: String?

        public var logo: SecureUrl?

        public var mobileLogo: SecureUrl?

        public var favicon: SecureUrl?

        public var banner: SecureUrl?

        public var domain: Domain?

        public var domains: [Domain]?

        public var id: String?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case description

            case logo

            case mobileLogo = "mobile_logo"

            case favicon

            case banner

            case domain

            case domains

            case id = "_id"

            case slug
        }

        public init(banner: SecureUrl? = nil, description: String? = nil, domain: Domain? = nil, domains: [Domain]? = nil, favicon: SecureUrl? = nil, logo: SecureUrl? = nil, mobileLogo: SecureUrl? = nil, name: String? = nil, slug: String? = nil, id: String? = nil) {
            self.name = name

            self.description = description

            self.logo = logo

            self.mobileLogo = mobileLogo

            self.favicon = favicon

            self.banner = banner

            self.domain = domain

            self.domains = domains

            self.id = id

            self.slug = slug
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
                description = try container.decode(String.self, forKey: .description)

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
                mobileLogo = try container.decode(SecureUrl.self, forKey: .mobileLogo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                favicon = try container.decode(SecureUrl.self, forKey: .favicon)

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
                domain = try container.decode(Domain.self, forKey: .domain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                domains = try container.decode([Domain].self, forKey: .domains)

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
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(mobileLogo, forKey: .mobileLogo)

            try? container.encodeIfPresent(favicon, forKey: .favicon)

            try? container.encodeIfPresent(banner, forKey: .banner)

            try? container.encodeIfPresent(domain, forKey: .domain)

            try? container.encodeIfPresent(domains, forKey: .domains)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
