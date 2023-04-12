

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var meta: [AffiliateAppConfigMeta]?

        public var id: String

        public var updatedAt: String

        public var secret: String

        public var name: String

        public var description: String?

        public var owner: String

        public var createdAt: String

        public var token: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case id

            case updatedAt = "updated_at"

            case secret

            case name

            case description

            case owner

            case createdAt = "created_at"

            case token
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.meta = meta

            self.id = id

            self.updatedAt = updatedAt

            self.secret = secret

            self.name = name

            self.description = description

            self.owner = owner

            self.createdAt = createdAt

            self.token = token
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            secret = try container.decode(String.self, forKey: .secret)

            name = try container.decode(String.self, forKey: .name)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            owner = try container.decode(String.self, forKey: .owner)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            token = try container.decode(String.self, forKey: .token)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(token, forKey: .token)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var meta: [AffiliateAppConfigMeta]?

        public var id: String

        public var updatedAt: String

        public var secret: String

        public var name: String

        public var description: String?

        public var owner: String

        public var createdAt: String

        public var token: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case id

            case updatedAt = "updated_at"

            case secret

            case name

            case description

            case owner

            case createdAt = "created_at"

            case token
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.meta = meta

            self.id = id

            self.updatedAt = updatedAt

            self.secret = secret

            self.name = name

            self.description = description

            self.owner = owner

            self.createdAt = createdAt

            self.token = token
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            secret = try container.decode(String.self, forKey: .secret)

            name = try container.decode(String.self, forKey: .name)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            owner = try container.decode(String.self, forKey: .owner)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            token = try container.decode(String.self, forKey: .token)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(token, forKey: .token)
        }
    }
}
