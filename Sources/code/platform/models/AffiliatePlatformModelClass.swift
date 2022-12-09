

import Foundation
public extension PlatformClient {
    /*
         Model: Affiliate
         Used By: OrderManage
     */

    class Affiliate: Codable {
        public var config: AffiliateConfig?

        public var id: String

        public var token: String

        public enum CodingKeys: String, CodingKey {
            case config

            case id

            case token
        }

        public init(config: AffiliateConfig? = nil, id: String, token: String) {
            self.config = config

            self.id = id

            self.token = token
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                config = try container.decode(AffiliateConfig.self, forKey: .config)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            token = try container.decode(String.self, forKey: .token)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(config, forKey: .config)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(token, forKey: .token)
        }
    }
}
