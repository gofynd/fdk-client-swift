

import Foundation

public extension PlatformClient.Communication {
    /*
         Model: VoiceProvider
         Used By: Communication
     */

    class VoiceProvider: Codable {
        public var id: String?

        public var application: String?

        public var type: String?

        public var name: String?

        public var description: String?

        public var slug: String?

        public var provider: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Double?

        public var discriminator: String?

        public var username: String?

        public var password: String?

        public var callerId: String?

        public var appletUrl: String?

        public var whitelistedIp: [String]?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case application

            case type

            case name

            case description

            case slug

            case provider

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"

            case discriminator

            case username

            case password

            case callerId = "caller_id"

            case appletUrl = "applet_url"

            case whitelistedIp = "whitelisted_ip"
        }

        public init(appletUrl: String? = nil, application: String? = nil, callerId: String? = nil, createdAt: String? = nil, description: String? = nil, discriminator: String? = nil, name: String? = nil, password: String? = nil, provider: String? = nil, slug: String? = nil, type: String? = nil, updatedAt: String? = nil, username: String? = nil, whitelistedIp: [String]? = nil, id: String? = nil, v: Double? = nil) {
            self.id = id

            self.application = application

            self.type = type

            self.name = name

            self.description = description

            self.slug = slug

            self.provider = provider

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v

            self.discriminator = discriminator

            self.username = username

            self.password = password

            self.callerId = callerId

            self.appletUrl = appletUrl

            self.whitelistedIp = whitelistedIp
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
                application = try container.decode(String.self, forKey: .application)

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
                description = try container.decode(String.self, forKey: .description)

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
                provider = try container.decode(String.self, forKey: .provider)

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
                v = try container.decode(Double.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discriminator = try container.decode(String.self, forKey: .discriminator)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                password = try container.decode(String.self, forKey: .password)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                callerId = try container.decode(String.self, forKey: .callerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appletUrl = try container.decode(String.self, forKey: .appletUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                whitelistedIp = try container.decode([String].self, forKey: .whitelistedIp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(provider, forKey: .provider)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)

            try? container.encodeIfPresent(discriminator, forKey: .discriminator)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(password, forKey: .password)

            try? container.encodeIfPresent(callerId, forKey: .callerId)

            try? container.encodeIfPresent(appletUrl, forKey: .appletUrl)

            try? container.encodeIfPresent(whitelistedIp, forKey: .whitelistedIp)
        }
    }
}

public extension PlatformClient.ApplicationClient.Communication {
    /*
         Model: VoiceProvider
         Used By: Communication
     */

    class VoiceProvider: Codable {
        public var id: String?

        public var application: String?

        public var type: String?

        public var name: String?

        public var description: String?

        public var slug: String?

        public var provider: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Double?

        public var discriminator: String?

        public var username: String?

        public var password: String?

        public var callerId: String?

        public var appletUrl: String?

        public var whitelistedIp: [String]?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case application

            case type

            case name

            case description

            case slug

            case provider

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"

            case discriminator

            case username

            case password

            case callerId = "caller_id"

            case appletUrl = "applet_url"

            case whitelistedIp = "whitelisted_ip"
        }

        public init(appletUrl: String? = nil, application: String? = nil, callerId: String? = nil, createdAt: String? = nil, description: String? = nil, discriminator: String? = nil, name: String? = nil, password: String? = nil, provider: String? = nil, slug: String? = nil, type: String? = nil, updatedAt: String? = nil, username: String? = nil, whitelistedIp: [String]? = nil, id: String? = nil, v: Double? = nil) {
            self.id = id

            self.application = application

            self.type = type

            self.name = name

            self.description = description

            self.slug = slug

            self.provider = provider

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v

            self.discriminator = discriminator

            self.username = username

            self.password = password

            self.callerId = callerId

            self.appletUrl = appletUrl

            self.whitelistedIp = whitelistedIp
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
                application = try container.decode(String.self, forKey: .application)

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
                description = try container.decode(String.self, forKey: .description)

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
                provider = try container.decode(String.self, forKey: .provider)

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
                v = try container.decode(Double.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discriminator = try container.decode(String.self, forKey: .discriminator)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                password = try container.decode(String.self, forKey: .password)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                callerId = try container.decode(String.self, forKey: .callerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appletUrl = try container.decode(String.self, forKey: .appletUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                whitelistedIp = try container.decode([String].self, forKey: .whitelistedIp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(provider, forKey: .provider)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)

            try? container.encodeIfPresent(discriminator, forKey: .discriminator)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(password, forKey: .password)

            try? container.encodeIfPresent(callerId, forKey: .callerId)

            try? container.encodeIfPresent(appletUrl, forKey: .appletUrl)

            try? container.encodeIfPresent(whitelistedIp, forKey: .whitelistedIp)
        }
    }
}
