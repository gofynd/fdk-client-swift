

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var name: String

        public var createdAt: String

        public var id: String

        public var secret: String

        public var owner: String

        public var token: String

        public var updatedAt: String

        public var description: String?

        public var meta: [AffiliateAppConfigMeta]?

        public enum CodingKeys: String, CodingKey {
            case name

            case createdAt = "created_at"

            case id

            case secret

            case owner

            case token

            case updatedAt = "updated_at"

            case description

            case meta
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.name = name

            self.createdAt = createdAt

            self.id = id

            self.secret = secret

            self.owner = owner

            self.token = token

            self.updatedAt = updatedAt

            self.description = description

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            id = try container.decode(String.self, forKey: .id)

            secret = try container.decode(String.self, forKey: .secret)

            owner = try container.decode(String.self, forKey: .owner)

            token = try container.decode(String.self, forKey: .token)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(description, forKey: .description)

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
        public var name: String

        public var createdAt: String

        public var id: String

        public var secret: String

        public var owner: String

        public var token: String

        public var updatedAt: String

        public var description: String?

        public var meta: [AffiliateAppConfigMeta]?

        public enum CodingKeys: String, CodingKey {
            case name

            case createdAt = "created_at"

            case id

            case secret

            case owner

            case token

            case updatedAt = "updated_at"

            case description

            case meta
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.name = name

            self.createdAt = createdAt

            self.id = id

            self.secret = secret

            self.owner = owner

            self.token = token

            self.updatedAt = updatedAt

            self.description = description

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            id = try container.decode(String.self, forKey: .id)

            secret = try container.decode(String.self, forKey: .secret)

            owner = try container.decode(String.self, forKey: .owner)

            token = try container.decode(String.self, forKey: .token)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
