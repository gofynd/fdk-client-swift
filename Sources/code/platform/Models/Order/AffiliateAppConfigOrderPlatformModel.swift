

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var id: String

        public var secret: String

        public var createdAt: String

        public var meta: [AffiliateAppConfigMeta]?

        public var updatedAt: String

        public var token: String

        public var owner: String

        public var description: String?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case id

            case secret

            case createdAt = "created_at"

            case meta

            case updatedAt = "updated_at"

            case token

            case owner

            case description

            case name
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.id = id

            self.secret = secret

            self.createdAt = createdAt

            self.meta = meta

            self.updatedAt = updatedAt

            self.token = token

            self.owner = owner

            self.description = description

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            secret = try container.decode(String.self, forKey: .secret)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            token = try container.decode(String.self, forKey: .token)

            owner = try container.decode(String.self, forKey: .owner)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)
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

        public var secret: String

        public var createdAt: String

        public var meta: [AffiliateAppConfigMeta]?

        public var updatedAt: String

        public var token: String

        public var owner: String

        public var description: String?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case id

            case secret

            case createdAt = "created_at"

            case meta

            case updatedAt = "updated_at"

            case token

            case owner

            case description

            case name
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.id = id

            self.secret = secret

            self.createdAt = createdAt

            self.meta = meta

            self.updatedAt = updatedAt

            self.token = token

            self.owner = owner

            self.description = description

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            secret = try container.decode(String.self, forKey: .secret)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            token = try container.decode(String.self, forKey: .token)

            owner = try container.decode(String.self, forKey: .owner)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
