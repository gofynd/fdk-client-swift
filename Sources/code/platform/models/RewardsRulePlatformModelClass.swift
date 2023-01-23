

import Foundation
public extension PlatformClient {
    /*
         Model: RewardsRule
         Used By: Rewards
     */

    class RewardsRule: Codable {
        public var amount: Double?

        public enum CodingKeys: String, CodingKey {
            case amount
        }

        public init(amount: Double? = nil) {
            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)
        }
    }
}
