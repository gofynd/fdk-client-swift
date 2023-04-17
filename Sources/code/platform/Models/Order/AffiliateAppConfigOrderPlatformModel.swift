

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var owner: String

        public var name: String

        public var secret: String

        public var meta: [AffiliateAppConfigMeta]?

        public var id: String

        public var updatedAt: String

        public var token: String

        public var description: String?

        public var createdAt: String

        public enum CodingKeys: String, CodingKey {
            case owner

            case name

            case secret

            case meta

            case id

            case updatedAt = "updated_at"

            case token

            case description

            case createdAt = "created_at"
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.owner = owner

            self.name = name

            self.secret = secret

            self.meta = meta

            self.id = id

            self.updatedAt = updatedAt

            self.token = token

            self.description = description

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            owner = try container.decode(String.self, forKey: .owner)

            name = try container.decode(String.self, forKey: .name)

            secret = try container.decode(String.self, forKey: .secret)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            token = try container.decode(String.self, forKey: .token)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var owner: String

        public var name: String

        public var secret: String

        public var meta: [AffiliateAppConfigMeta]?

        public var id: String

        public var updatedAt: String

        public var token: String

        public var description: String?

        public var createdAt: String

        public enum CodingKeys: String, CodingKey {
            case owner

            case name

            case secret

            case meta

            case id

            case updatedAt = "updated_at"

            case token

            case description

            case createdAt = "created_at"
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.owner = owner

            self.name = name

            self.secret = secret

            self.meta = meta

            self.id = id

            self.updatedAt = updatedAt

            self.token = token

            self.description = description

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            owner = try container.decode(String.self, forKey: .owner)

            name = try container.decode(String.self, forKey: .name)

            secret = try container.decode(String.self, forKey: .secret)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            token = try container.decode(String.self, forKey: .token)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
