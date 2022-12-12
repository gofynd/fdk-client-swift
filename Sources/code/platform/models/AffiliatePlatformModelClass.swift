

import Foundation
public extension PlatformClient {
    /*
         Model: Affiliate
         Used By: OrderManage
     */

    class Affiliate: Codable {
        public var token: String

        public var id: String

        public var config: AffiliateConfig?

        public enum CodingKeys: String, CodingKey {
            case token

            case id

            case config
        }

        public init(config: AffiliateConfig? = nil, id: String, token: String) {
            self.token = token

            self.id = id

            self.config = config
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            token = try container.decode(String.self, forKey: .token)

            id = try container.decode(String.self, forKey: .id)

            do {
                config = try container.decode(AffiliateConfig.self, forKey: .config)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(config, forKey: .config)
        }
    }
}
