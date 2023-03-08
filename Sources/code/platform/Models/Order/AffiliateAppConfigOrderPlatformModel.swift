

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var description: String?

        public var meta: [AffiliateAppConfigMeta]?

        public var createdAt: String

        public var owner: String

        public var id: String

        public var name: String

        public var updatedAt: String

        public var secret: String

        public var token: String

        public enum CodingKeys: String, CodingKey {
            case description

            case meta

            case createdAt = "created_at"

            case owner

            case id

            case name

            case updatedAt = "updated_at"

            case secret

            case token
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.description = description

            self.meta = meta

            self.createdAt = createdAt

            self.owner = owner

            self.id = id

            self.name = name

            self.updatedAt = updatedAt

            self.secret = secret

            self.token = token
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            owner = try container.decode(String.self, forKey: .owner)

            id = try container.decode(String.self, forKey: .id)

            name = try container.decode(String.self, forKey: .name)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            secret = try container.decode(String.self, forKey: .secret)

            token = try container.decode(String.self, forKey: .token)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(secret, forKey: .secret)

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
        public var description: String?

        public var meta: [AffiliateAppConfigMeta]?

        public var createdAt: String

        public var owner: String

        public var id: String

        public var name: String

        public var updatedAt: String

        public var secret: String

        public var token: String

        public enum CodingKeys: String, CodingKey {
            case description

            case meta

            case createdAt = "created_at"

            case owner

            case id

            case name

            case updatedAt = "updated_at"

            case secret

            case token
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.description = description

            self.meta = meta

            self.createdAt = createdAt

            self.owner = owner

            self.id = id

            self.name = name

            self.updatedAt = updatedAt

            self.secret = secret

            self.token = token
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            owner = try container.decode(String.self, forKey: .owner)

            id = try container.decode(String.self, forKey: .id)

            name = try container.decode(String.self, forKey: .name)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            secret = try container.decode(String.self, forKey: .secret)

            token = try container.decode(String.self, forKey: .token)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(token, forKey: .token)
        }
    }
}
