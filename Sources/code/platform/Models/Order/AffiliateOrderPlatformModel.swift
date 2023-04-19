

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Affiliate
         Used By: Order
     */

    class Affiliate: Codable {
        public var id: String

        public var token: String

        public var config: AffiliateConfig?

        public enum CodingKeys: String, CodingKey {
            case id

            case token

            case config
        }

        public init(config: AffiliateConfig? = nil, id: String, token: String) {
            self.id = id

            self.token = token

            self.config = config
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            token = try container.decode(String.self, forKey: .token)

            do {
                config = try container.decode(AffiliateConfig.self, forKey: .config)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(config, forKey: .config)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Affiliate
         Used By: Order
     */

    class Affiliate: Codable {
        public var id: String

        public var token: String

        public var config: AffiliateConfig?

        public enum CodingKeys: String, CodingKey {
            case id

            case token

            case config
        }

        public init(config: AffiliateConfig? = nil, id: String, token: String) {
            self.id = id

            self.token = token

            self.config = config
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            token = try container.decode(String.self, forKey: .token)

            do {
                config = try container.decode(AffiliateConfig.self, forKey: .config)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(config, forKey: .config)
        }
    }
}
