

import Foundation
public extension PlatformClient {
    /*
         Model: RewardPointsConfig
         Used By: Configuration
     */

    class RewardPointsConfig: Codable {
        public var credit: Credit?

        public var debit: Debit?

        public enum CodingKeys: String, CodingKey {
            case credit

            case debit
        }

        public init(credit: Credit? = nil, debit: Debit? = nil) {
            self.credit = credit

            self.debit = debit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                credit = try container.decode(Credit.self, forKey: .credit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                debit = try container.decode(Debit.self, forKey: .debit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(credit, forKey: .credit)

            try? container.encodeIfPresent(debit, forKey: .debit)
        }
    }
}
