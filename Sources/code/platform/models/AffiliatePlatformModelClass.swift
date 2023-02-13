

import Foundation
public extension PlatformClient {
    /*
         Model: Affiliate
         Used By: OrderManage
     */

    class Affiliate: Codable {
        public var config: AffiliateConfig?

        public var token: String

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case config

            case token

            case id
        }

        public init(config: AffiliateConfig? = nil, id: String, token: String) {
            self.config = config

            self.token = token

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                config = try container.decode(AffiliateConfig.self, forKey: .config)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            token = try container.decode(String.self, forKey: .token)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(config, forKey: .config)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
