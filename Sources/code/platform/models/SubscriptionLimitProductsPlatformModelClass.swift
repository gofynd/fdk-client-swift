

import Foundation
public extension PlatformClient {
    /*
         Model: SubscriptionLimitProducts
         Used By: Billing
     */

    class SubscriptionLimitProducts: Codable {
        public var bulk: Bool?

        public var limit: Int?

        public enum CodingKeys: String, CodingKey {
            case bulk

            case limit
        }

        public init(bulk: Bool? = nil, limit: Int? = nil) {
            self.bulk = bulk

            self.limit = limit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bulk = try container.decode(Bool.self, forKey: .bulk)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                limit = try container.decode(Int.self, forKey: .limit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bulk, forKey: .bulk)

            try? container.encodeIfPresent(limit, forKey: .limit)
        }
    }
}
