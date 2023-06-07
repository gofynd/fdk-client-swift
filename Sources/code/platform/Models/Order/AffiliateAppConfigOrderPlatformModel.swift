

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var name: String

        public var meta: [AffiliateAppConfigMeta]?

        public var id: String

        public var owner: String

        public var token: String

        public var secret: String

        public var updatedAt: String

        public var createdAt: String

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case meta

            case id

            case owner

            case token

            case secret

            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case description
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.name = name

            self.meta = meta

            self.id = id

            self.owner = owner

            self.token = token

            self.secret = secret

            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            owner = try container.decode(String.self, forKey: .owner)

            token = try container.decode(String.self, forKey: .token)

            secret = try container.decode(String.self, forKey: .secret)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(description, forKey: .description)
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

        public var meta: [AffiliateAppConfigMeta]?

        public var id: String

        public var owner: String

        public var token: String

        public var secret: String

        public var updatedAt: String

        public var createdAt: String

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case meta

            case id

            case owner

            case token

            case secret

            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case description
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.name = name

            self.meta = meta

            self.id = id

            self.owner = owner

            self.token = token

            self.secret = secret

            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            owner = try container.decode(String.self, forKey: .owner)

            token = try container.decode(String.self, forKey: .token)

            secret = try container.decode(String.self, forKey: .secret)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}
