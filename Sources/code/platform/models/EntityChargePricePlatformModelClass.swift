

import Foundation
public extension PlatformClient {
    /*
         Model: EntityChargePrice
         Used By: Billing
     */

    class EntityChargePrice: Codable {
        public var amount: Double

        public var currencyCode: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case currencyCode = "currency_code"
        }

        public init(amount: Double, currencyCode: String) {
            self.amount = amount

            self.currencyCode = currencyCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Double.self, forKey: .amount)

            currencyCode = try container.decode(String.self, forKey: .currencyCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }
}
