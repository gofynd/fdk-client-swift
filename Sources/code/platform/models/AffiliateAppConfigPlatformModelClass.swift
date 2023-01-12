

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateAppConfig
         Used By: Order
     */

    class AffiliateAppConfig: Codable {
        public var description: String?

        public var name: String

        public var secret: String

        public var token: String

        public var id: String

        public var createdAt: String

        public var updatedAt: String

        public var meta: [AffiliateAppConfigMeta]?

        public var owner: String

        public enum CodingKeys: String, CodingKey {
            case description

            case name

            case secret

            case token

            case id

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case meta

            case owner
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            self.description = description

            self.name = name

            self.secret = secret

            self.token = token

            self.id = id

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.meta = meta

            self.owner = owner
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            secret = try container.decode(String.self, forKey: .secret)

            token = try container.decode(String.self, forKey: .token)

            id = try container.decode(String.self, forKey: .id)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            owner = try container.decode(String.self, forKey: .owner)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(owner, forKey: .owner)
        }
    }
}
