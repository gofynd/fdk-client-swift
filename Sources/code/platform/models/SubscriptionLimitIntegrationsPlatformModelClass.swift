import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: SubscriptionLimitIntegrations
         Used By: Billing
     */

    class SubscriptionLimitIntegrations: Codable {
        public var enabled: Bool?

        public var limit: Int?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case limit
        }

        public init(enabled: Bool?, limit: Int?) {
            self.enabled = enabled

            self.limit = limit
        }

        public func duplicate() -> SubscriptionLimitIntegrations {
            let dict = self.dictionary!
            let copy = SubscriptionLimitIntegrations(dictionary: dict)!
            return copy
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
