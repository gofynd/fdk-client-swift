

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var createdAt: String

        public var updatedAt: String

        public var name: String

        public var id: String

        public var secret: String

        public var description: String?

        public var owner: String

        public var token: String

        public var meta: [AffiliateAppConfigMeta]?

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case name

            case id

            case secret

            case description

            case owner

            case token

            case meta
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.name = name

            self.id = id

            self.secret = secret

            self.description = description

            self.owner = owner

            self.token = token

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            name = try container.decode(String.self, forKey: .name)

            id = try container.decode(String.self, forKey: .id)

            secret = try container.decode(String.self, forKey: .secret)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            owner = try container.decode(String.self, forKey: .owner)

            token = try container.decode(String.self, forKey: .token)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(owner, forKey: .owner)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
