

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var name: String

        public var secret: String

        public var id: String

        public var updatedAt: String

        public var owner: String

        public var token: String

        public var description: String?

        public var meta: [AffiliateAppConfigMeta]?

        public var createdAt: String

        public enum CodingKeys: String, CodingKey {
            case name

            case secret

            case id

            case updatedAt = "updated_at"

            case owner

            case token

            case description

            case meta

            case createdAt = "created_at"
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.name = name

            self.secret = secret

            self.id = id

            self.updatedAt = updatedAt

            self.owner = owner

            self.token = token

            self.description = description

            self.meta = meta

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            secret = try container.decode(String.self, forKey: .secret)

            id = try container.decode(String.self, forKey: .id)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            owner = try container.decode(String.self, forKey: .owner)

            token = try container.decode(String.self, forKey: .token)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(meta, forKey: .meta)

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
        public var name: String

        public var secret: String

        public var id: String

        public var updatedAt: String

        public var owner: String

        public var token: String

        public var description: String?

        public var meta: [AffiliateAppConfigMeta]?

        public var createdAt: String

        public enum CodingKeys: String, CodingKey {
            case name

            case secret

            case id

            case updatedAt = "updated_at"

            case owner

            case token

            case description

            case meta

            case createdAt = "created_at"
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.name = name

            self.secret = secret

            self.id = id

            self.updatedAt = updatedAt

            self.owner = owner

            self.token = token

            self.description = description

            self.meta = meta

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            secret = try container.decode(String.self, forKey: .secret)

            id = try container.decode(String.self, forKey: .id)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            owner = try container.decode(String.self, forKey: .owner)

            token = try container.decode(String.self, forKey: .token)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
