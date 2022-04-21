

import Foundation
public extension PlatformClient {
    /*
         Model: SubscriptionLimitExtensions
         Used By: Billing
     */

    class SubscriptionLimitExtensions: Codable {
        public var enabled: Bool?

        public var limit: Int?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case limit
        }

        public init(enabled: Bool? = nil, limit: Int? = nil) {
            self.enabled = enabled

            self.limit = limit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

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

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(limit, forKey: .limit)
        }
    }
}
