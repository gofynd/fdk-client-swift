

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyTax
         Used By: CompanyProfile
     */

    class CompanyTax: Codable {
        public var effectiveDate: String

        public var enable: Bool

        public var rate: Double

        public enum CodingKeys: String, CodingKey {
            case effectiveDate = "effective_date"

            case enable

            case rate
        }

        public init(effectiveDate: String, enable: Bool, rate: Double) {
            self.effectiveDate = effectiveDate

            self.enable = enable

            self.rate = rate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            effectiveDate = try container.decode(String.self, forKey: .effectiveDate)

            enable = try container.decode(Bool.self, forKey: .enable)

            rate = try container.decode(Double.self, forKey: .rate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(effectiveDate, forKey: .effectiveDate)

            try? container.encodeIfPresent(enable, forKey: .enable)

            try? container.encodeIfPresent(rate, forKey: .rate)
        }
    }
}
