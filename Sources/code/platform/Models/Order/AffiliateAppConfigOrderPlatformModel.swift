

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var id: String

        public var name: String

        public var secret: String

        public var token: String

        public var owner: String

        public var createdAt: String

        public var meta: [AffiliateAppConfigMeta]?

        public var description: String?

        public var updatedAt: String

        public enum CodingKeys: String, CodingKey {
            case id

            case name

            case secret

            case token

            case owner

            case createdAt = "created_at"

            case meta

            case description

            case updatedAt = "updated_at"
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.id = id

            self.name = name

            self.secret = secret

            self.token = token

            self.owner = owner

            self.createdAt = createdAt

            self.meta = meta

            self.description = description

            self.updatedAt = updatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            name = try container.decode(String.self, forKey: .name)

            secret = try container.decode(String.self, forKey: .secret)

            token = try container.decode(String.self, forKey: .token)

            owner = try container.decode(String.self, forKey: .owner)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

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

            updatedAt = try container.decode(String.self, forKey: .updatedAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var id: String

        public var name: String

        public var secret: String

        public var token: String

        public var owner: String

        public var createdAt: String

        public var meta: [AffiliateAppConfigMeta]?

        public var description: String?

        public var updatedAt: String

        public enum CodingKeys: String, CodingKey {
            case id

            case name

            case secret

            case token

            case owner

            case createdAt = "created_at"

            case meta

            case description

            case updatedAt = "updated_at"
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.id = id

            self.name = name

            self.secret = secret

            self.token = token

            self.owner = owner

            self.createdAt = createdAt

            self.meta = meta

            self.description = description

            self.updatedAt = updatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            name = try container.decode(String.self, forKey: .name)

            secret = try container.decode(String.self, forKey: .secret)

            token = try container.decode(String.self, forKey: .token)

            owner = try container.decode(String.self, forKey: .owner)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

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

            updatedAt = try container.decode(String.self, forKey: .updatedAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }
}
