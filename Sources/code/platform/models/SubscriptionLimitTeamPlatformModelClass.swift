

import Foundation
public extension PlatformClient {
    /*
         Model: SubscriptionLimitTeam
         Used By: Billing
     */

    class SubscriptionLimitTeam: Codable {
        public var limit: Int?

        public enum CodingKeys: String, CodingKey {
            case limit
        }

        public init(limit: Int? = nil) {
            self.limit = limit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                limit = try container.decode(Int.self, forKey: .limit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(limit, forKey: .limit)
        }
    }
}
