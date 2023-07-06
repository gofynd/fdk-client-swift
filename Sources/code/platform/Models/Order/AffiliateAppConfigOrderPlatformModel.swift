

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var token: String

        public var secret: String

        public var createdAt: String

        public var name: String

        public var id: String

        public var description: String?

        public var updatedAt: String

        public var owner: String

        public var meta: [AffiliateAppConfigMeta]?

        public enum CodingKeys: String, CodingKey {
            case token

            case secret

            case createdAt = "created_at"

            case name

            case id

            case description

            case updatedAt = "updated_at"

            case owner

            case meta
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.token = token

            self.secret = secret

            self.createdAt = createdAt

            self.name = name

            self.id = id

            self.description = description

            self.updatedAt = updatedAt

            self.owner = owner

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            token = try container.decode(String.self, forKey: .token)

            secret = try container.decode(String.self, forKey: .secret)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            name = try container.decode(String.self, forKey: .name)

            id = try container.decode(String.self, forKey: .id)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            owner = try container.decode(String.self, forKey: .owner)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var token: String

        public var secret: String

        public var createdAt: String

        public var name: String

        public var id: String

        public var description: String?

        public var updatedAt: String

        public var owner: String

        public var meta: [AffiliateAppConfigMeta]?

        public enum CodingKeys: String, CodingKey {
            case token

            case secret

            case createdAt = "created_at"

            case name

            case id

            case description

            case updatedAt = "updated_at"

            case owner

            case meta
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.token = token

            self.secret = secret

            self.createdAt = createdAt

            self.name = name

            self.id = id

            self.description = description

            self.updatedAt = updatedAt

            self.owner = owner

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            token = try container.decode(String.self, forKey: .token)

            secret = try container.decode(String.self, forKey: .secret)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            name = try container.decode(String.self, forKey: .name)

            id = try container.decode(String.self, forKey: .id)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            owner = try container.decode(String.self, forKey: .owner)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
