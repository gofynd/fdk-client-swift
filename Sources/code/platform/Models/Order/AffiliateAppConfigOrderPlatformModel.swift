

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var meta: [AffiliateAppConfigMeta]?

        public var description: String?

        public var owner: String

        public var name: String

        public var token: String

        public var createdAt: String

        public var id: String

        public var updatedAt: String

        public var secret: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case description

            case owner

            case name

            case token

            case createdAt = "created_at"

            case id

            case updatedAt = "updated_at"

            case secret
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.meta = meta

            self.description = description

            self.owner = owner

            self.name = name

            self.token = token

            self.createdAt = createdAt

            self.id = id

            self.updatedAt = updatedAt

            self.secret = secret
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            owner = try container.decode(String.self, forKey: .owner)

            name = try container.decode(String.self, forKey: .name)

            token = try container.decode(String.self, forKey: .token)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            id = try container.decode(String.self, forKey: .id)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            secret = try container.decode(String.self, forKey: .secret)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(secret, forKey: .secret)
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

        public var description: String?

        public var owner: String

        public var name: String

        public var token: String

        public var createdAt: String

        public var id: String

        public var updatedAt: String

        public var secret: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case description

            case owner

            case name

            case token

            case createdAt = "created_at"

            case id

            case updatedAt = "updated_at"

            case secret
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.meta = meta

            self.description = description

            self.owner = owner

            self.name = name

            self.token = token

            self.createdAt = createdAt

            self.id = id

            self.updatedAt = updatedAt

            self.secret = secret
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            owner = try container.decode(String.self, forKey: .owner)

            name = try container.decode(String.self, forKey: .name)

            token = try container.decode(String.self, forKey: .token)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            id = try container.decode(String.self, forKey: .id)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            secret = try container.decode(String.self, forKey: .secret)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(secret, forKey: .secret)
        }
    }
}
