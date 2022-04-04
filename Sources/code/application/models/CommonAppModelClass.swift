import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: ApplicationResponse
         Used By: Common
     */
    class ApplicationResponse: Codable {
        public var application: Application?

        public enum CodingKeys: String, CodingKey {
            case application
        }

        public init(application: Application? = nil) {
            self.application = application
        }

        public func duplicate() -> ApplicationResponse {
            let dict = self.dictionary!
            let copy = ApplicationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                application = try container.decode(Application.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(application, forKey: .application)
        }
    }

    /*
         Model: Currency
         Used By: Common
     */
    class Currency: Codable {
        public var id: String?

        public var isActive: Bool?

        public var name: String?

        public var code: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var decimalDigits: Int?

        public var symbol: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case isActive = "is_active"

            case name

            case code

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case decimalDigits = "decimal_digits"

            case symbol
        }

        public init(code: String? = nil, createdAt: String? = nil, decimalDigits: Int? = nil, isActive: Bool? = nil, name: String? = nil, symbol: String? = nil, updatedAt: String? = nil, id: String? = nil) {
            self.id = id

            self.isActive = isActive

            self.name = name

            self.code = code

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.decimalDigits = decimalDigits

            self.symbol = symbol
        }

        public func duplicate() -> Currency {
            let dict = self.dictionary!
            let copy = Currency(dictionary: dict)!
            return copy
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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                code = try container.decode(String.self, forKey: .code)

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
                decimalDigits = try container.decode(Int.self, forKey: .decimalDigits)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                symbol = try container.decode(String.self, forKey: .symbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(decimalDigits, forKey: .decimalDigits)

            try? container.encodeIfPresent(symbol, forKey: .symbol)
        }
    }

    /*
         Model: Domain
         Used By: Common
     */
    class Domain: Codable {
        public var verified: Bool?

        public var isPrimary: Bool?

        public var isShortlink: Bool?

        public var id: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case verified

            case isPrimary = "is_primary"

            case isShortlink = "is_shortlink"

            case id = "_id"

            case name
        }

        public init(isPrimary: Bool? = nil, isShortlink: Bool? = nil, name: String? = nil, verified: Bool? = nil, id: String? = nil) {
            self.verified = verified

            self.isPrimary = isPrimary

            self.isShortlink = isShortlink

            self.id = id

            self.name = name
        }

        public func duplicate() -> Domain {
            let dict = self.dictionary!
            let copy = Domain(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPrimary = try container.decode(Bool.self, forKey: .isPrimary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isShortlink = try container.decode(Bool.self, forKey: .isShortlink)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(isPrimary, forKey: .isPrimary)

            try? container.encodeIfPresent(isShortlink, forKey: .isShortlink)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: ApplicationWebsite
         Used By: Common
     */
    class ApplicationWebsite: Codable {
        public var enabled: Bool?

        public var basepath: String?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case basepath
        }

        public init(basepath: String? = nil, enabled: Bool? = nil) {
            self.enabled = enabled

            self.basepath = basepath
        }

        public func duplicate() -> ApplicationWebsite {
            let dict = self.dictionary!
            let copy = ApplicationWebsite(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                basepath = try container.decode(String.self, forKey: .basepath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(basepath, forKey: .basepath)
        }
    }

    /*
         Model: ApplicationCors
         Used By: Common
     */
    class ApplicationCors: Codable {
        public var domains: [String]?

        public enum CodingKeys: String, CodingKey {
            case domains
        }

        public init(domains: [String]? = nil) {
            self.domains = domains
        }

        public func duplicate() -> ApplicationCors {
            let dict = self.dictionary!
            let copy = ApplicationCors(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                domains = try container.decode([String].self, forKey: .domains)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(domains, forKey: .domains)
        }
    }

    /*
         Model: ApplicationAuth
         Used By: Common
     */
    class ApplicationAuth: Codable {
        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case enabled
        }

        public init(enabled: Bool? = nil) {
            self.enabled = enabled
        }

        public func duplicate() -> ApplicationAuth {
            let dict = self.dictionary!
            let copy = ApplicationAuth(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }

    /*
         Model: ApplicationRedirections
         Used By: Common
     */
    class ApplicationRedirections: Codable {
        public var redirectFrom: String?

        public var redirectTo: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case redirectFrom = "redirect_from"

            case redirectTo = "redirect_to"

            case type
        }

        public init(redirectFrom: String? = nil, redirectTo: String? = nil, type: String? = nil) {
            self.redirectFrom = redirectFrom

            self.redirectTo = redirectTo

            self.type = type
        }

        public func duplicate() -> ApplicationRedirections {
            let dict = self.dictionary!
            let copy = ApplicationRedirections(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                redirectFrom = try container.decode(String.self, forKey: .redirectFrom)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                redirectTo = try container.decode(String.self, forKey: .redirectTo)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(redirectFrom, forKey: .redirectFrom)

            try? container.encodeIfPresent(redirectTo, forKey: .redirectTo)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: ApplicationMeta
         Used By: Common
     */
    class ApplicationMeta: Codable {
        public var name: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case value
        }

        public init(name: String? = nil, value: String? = nil) {
            self.name = name

            self.value = value
        }

        public func duplicate() -> ApplicationMeta {
            let dict = self.dictionary!
            let copy = ApplicationMeta(dictionary: dict)!
            return copy
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
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: SecureUrl
         Used By: Common
     */
    class SecureUrl: Codable {
        public var secureUrl: String?

        public enum CodingKeys: String, CodingKey {
            case secureUrl = "secure_url"
        }

        public init(secureUrl: String? = nil) {
            self.secureUrl = secureUrl
        }

        public func duplicate() -> SecureUrl {
            let dict = self.dictionary!
            let copy = SecureUrl(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                secureUrl = try container.decode(String.self, forKey: .secureUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
        }
    }

    /*
         Model: Application
         Used By: Common
     */
    class Application: Codable {
        public var website: ApplicationWebsite?

        public var cors: ApplicationCors?

        public var auth: ApplicationAuth?

        public var description: String?

        public var channelType: String?

        public var cacheTtl: Int?

        public var isInternal: Bool?

        public var isActive: Bool?

        public var id: String?

        public var name: String?

        public var owner: String?

        public var companyId: Int?

        public var token: String?

        public var redirections: [ApplicationRedirections]?

        public var meta: [ApplicationMeta]?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Int?

        public var banner: SecureUrl?

        public var logo: SecureUrl?

        public var favicon: SecureUrl?

        public var domains: [Domain]?

        public var appType: String?

        public var mobileLogo: SecureUrl?

        public var domain: Domain?

        public enum CodingKeys: String, CodingKey {
            case website

            case cors

            case auth

            case description

            case channelType = "channel_type"

            case cacheTtl = "cache_ttl"

            case isInternal = "is_internal"

            case isActive = "is_active"

            case id = "_id"

            case name

            case owner

            case companyId = "company_id"

            case token

            case redirections

            case meta

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"

            case banner

            case logo

            case favicon

            case domains

            case appType = "app_type"

            case mobileLogo = "mobile_logo"

            case domain
        }

        public init(appType: String? = nil, auth: ApplicationAuth? = nil, banner: SecureUrl? = nil, cacheTtl: Int? = nil, channelType: String? = nil, companyId: Int? = nil, cors: ApplicationCors? = nil, createdAt: String? = nil, description: String? = nil, domain: Domain? = nil, domains: [Domain]? = nil, favicon: SecureUrl? = nil, isActive: Bool? = nil, isInternal: Bool? = nil, logo: SecureUrl? = nil, meta: [ApplicationMeta]? = nil, mobileLogo: SecureUrl? = nil, name: String? = nil, owner: String? = nil, redirections: [ApplicationRedirections]? = nil, token: String? = nil, updatedAt: String? = nil, website: ApplicationWebsite? = nil, id: String? = nil, v: Int? = nil) {
            self.website = website

            self.cors = cors

            self.auth = auth

            self.description = description

            self.channelType = channelType

            self.cacheTtl = cacheTtl

            self.isInternal = isInternal

            self.isActive = isActive

            self.id = id

            self.name = name

            self.owner = owner

            self.companyId = companyId

            self.token = token

            self.redirections = redirections

            self.meta = meta

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v

            self.banner = banner

            self.logo = logo

            self.favicon = favicon

            self.domains = domains

            self.appType = appType

            self.mobileLogo = mobileLogo

            self.domain = domain
        }

        public func duplicate() -> Application {
            let dict = self.dictionary!
            let copy = Application(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                auth = try container.decode(ApplicationAuth.self, forKey: .auth)

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
                channelType = try container.decode(String.self, forKey: .channelType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cacheTtl = try container.decode(Int.self, forKey: .cacheTtl)

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
                owner = try container.decode(String.self, forKey: .owner)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

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
                redirections = try container.decode([ApplicationRedirections].self, forKey: .redirections)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([ApplicationMeta].self, forKey: .meta)

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
                v = try container.decode(Int.self, forKey: .v)

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
                favicon = try container.decode(SecureUrl.self, forKey: .favicon)

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
                appType = try container.decode(String.self, forKey: .appType)

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
                domain = try container.decode(Domain.self, forKey: .domain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(website, forKey: .website)

            try? container.encodeIfPresent(cors, forKey: .cors)

            try? container.encodeIfPresent(auth, forKey: .auth)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(channelType, forKey: .channelType)

            try? container.encodeIfPresent(cacheTtl, forKey: .cacheTtl)

            try? container.encodeIfPresent(isInternal, forKey: .isInternal)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(redirections, forKey: .redirections)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)

            try? container.encodeIfPresent(banner, forKey: .banner)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(favicon, forKey: .favicon)

            try? container.encodeIfPresent(domains, forKey: .domains)

            try? container.encodeIfPresent(appType, forKey: .appType)

            try? container.encodeIfPresent(mobileLogo, forKey: .mobileLogo)

            try? container.encodeIfPresent(domain, forKey: .domain)
        }
    }

    /*
         Model: NotFound
         Used By: Common
     */
    class NotFound: Codable {
        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String? = nil) {
            self.message = message
        }

        public func duplicate() -> NotFound {
            let dict = self.dictionary!
            let copy = NotFound(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: BadRequest
         Used By: Common
     */
    class BadRequest: Codable {
        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String? = nil) {
            self.message = message
        }

        public func duplicate() -> BadRequest {
            let dict = self.dictionary!
            let copy = BadRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: LocationDefaultLanguage
         Used By: Common
     */
    class LocationDefaultLanguage: Codable {
        public var name: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case code
        }

        public init(code: String? = nil, name: String? = nil) {
            self.name = name

            self.code = code
        }

        public func duplicate() -> LocationDefaultLanguage {
            let dict = self.dictionary!
            let copy = LocationDefaultLanguage(dictionary: dict)!
            return copy
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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: LocationDefaultCurrency
         Used By: Common
     */
    class LocationDefaultCurrency: Codable {
        public var name: String?

        public var symbol: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case symbol

            case code
        }

        public init(code: String? = nil, name: String? = nil, symbol: String? = nil) {
            self.name = name

            self.symbol = symbol

            self.code = code
        }

        public func duplicate() -> LocationDefaultCurrency {
            let dict = self.dictionary!
            let copy = LocationDefaultCurrency(dictionary: dict)!
            return copy
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
                symbol = try container.decode(String.self, forKey: .symbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(symbol, forKey: .symbol)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: LocationCountry
         Used By: Common
     */
    class LocationCountry: Codable {
        public var capital: String?

        public var currency: String?

        public var iso2: String?

        public var iso3: String?

        public var name: String?

        public var parent: String?

        public var phoneCode: String?

        public var type: String?

        public var uid: Int?

        public var v: Int?

        public var id: String?

        public var defaultCurrency: LocationDefaultCurrency?

        public var defaultLanguage: LocationDefaultLanguage?

        public enum CodingKeys: String, CodingKey {
            case capital

            case currency

            case iso2

            case iso3

            case name

            case parent

            case phoneCode = "phone_code"

            case type

            case uid

            case v = "__v"

            case id = "_id"

            case defaultCurrency = "default_currency"

            case defaultLanguage = "default_language"
        }

        public init(capital: String? = nil, currency: String? = nil, defaultCurrency: LocationDefaultCurrency? = nil, defaultLanguage: LocationDefaultLanguage? = nil, iso2: String? = nil, iso3: String? = nil, name: String? = nil, parent: String? = nil, phoneCode: String? = nil, type: String? = nil, uid: Int? = nil, id: String? = nil, v: Int? = nil) {
            self.capital = capital

            self.currency = currency

            self.iso2 = iso2

            self.iso3 = iso3

            self.name = name

            self.parent = parent

            self.phoneCode = phoneCode

            self.type = type

            self.uid = uid

            self.v = v

            self.id = id

            self.defaultCurrency = defaultCurrency

            self.defaultLanguage = defaultLanguage
        }

        public func duplicate() -> LocationCountry {
            let dict = self.dictionary!
            let copy = LocationCountry(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                capital = try container.decode(String.self, forKey: .capital)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                iso2 = try container.decode(String.self, forKey: .iso2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                iso3 = try container.decode(String.self, forKey: .iso3)

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
                parent = try container.decode(String.self, forKey: .parent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phoneCode = try container.decode(String.self, forKey: .phoneCode)

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
                uid = try container.decode(Int.self, forKey: .uid)

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

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultCurrency = try container.decode(LocationDefaultCurrency.self, forKey: .defaultCurrency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultLanguage = try container.decode(LocationDefaultLanguage.self, forKey: .defaultLanguage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(capital, forKey: .capital)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(iso2, forKey: .iso2)

            try? container.encodeIfPresent(iso3, forKey: .iso3)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(parent, forKey: .parent)

            try? container.encodeIfPresent(phoneCode, forKey: .phoneCode)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(v, forKey: .v)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(defaultCurrency, forKey: .defaultCurrency)

            try? container.encodeIfPresent(defaultLanguage, forKey: .defaultLanguage)
        }
    }

    /*
         Model: Locations
         Used By: Common
     */
    class Locations: Codable {
        public var items: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [[String: Any]]? = nil) {
            self.items = items
        }

        public func duplicate() -> Locations {
            let dict = self.dictionary!
            let copy = Locations(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([[String: Any]].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
