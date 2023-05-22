

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var name: String

        public var secret: String

        public var createdAt: String

        public var description: String?

        public var meta: [AffiliateAppConfigMeta]?

        public var id: String

        public var owner: String

        public var updatedAt: String

        public var token: String

        public enum CodingKeys: String, CodingKey {
            case name

            case secret

            case createdAt = "created_at"

            case description

            case meta

            case id

            case owner

            case updatedAt = "updated_at"

            case token
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.name = name

            self.secret = secret

            self.createdAt = createdAt

            self.description = description

            self.meta = meta

            self.id = id

            self.owner = owner

            self.updatedAt = updatedAt

            self.token = token
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            secret = try container.decode(String.self, forKey: .secret)

            createdAt = try container.decode(String.self, forKey: .createdAt)

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

            id = try container.decode(String.self, forKey: .id)

            owner = try container.decode(String.self, forKey: .owner)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            token = try container.decode(String.self, forKey: .token)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

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
        public var name: String

        public var secret: String

        public var createdAt: String

        public var description: String?

        public var meta: [AffiliateAppConfigMeta]?

        public var id: String

        public var owner: String

        public var updatedAt: String

        public var token: String

        public enum CodingKeys: String, CodingKey {
            case name

            case secret

            case createdAt = "created_at"

            case description

            case meta

            case id

            case owner

            case updatedAt = "updated_at"

            case token
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.name = name

            self.secret = secret

            self.createdAt = createdAt

            self.description = description

            self.meta = meta

            self.id = id

            self.owner = owner

            self.updatedAt = updatedAt

            self.token = token
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            secret = try container.decode(String.self, forKey: .secret)

            createdAt = try container.decode(String.self, forKey: .createdAt)

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

            id = try container.decode(String.self, forKey: .id)

            owner = try container.decode(String.self, forKey: .owner)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            token = try container.decode(String.self, forKey: .token)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(token, forKey: .token)
        }
    }
}
