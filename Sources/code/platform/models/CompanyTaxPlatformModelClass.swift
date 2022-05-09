

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyTax
         Used By: CompanyProfile
     */

    class CompanyTax: Codable {
        public var rate: Double

        public var effectiveDate: String

        public var enable: Bool

        public enum CodingKeys: String, CodingKey {
            case rate

            case effectiveDate = "effective_date"

            case enable
        }

        public init(effectiveDate: String, enable: Bool, rate: Double) {
            self.rate = rate

            self.effectiveDate = effectiveDate

            self.enable = enable
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            rate = try container.decode(Double.self, forKey: .rate)

            effectiveDate = try container.decode(String.self, forKey: .effectiveDate)

            enable = try container.decode(Bool.self, forKey: .enable)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(effectiveDate, forKey: .effectiveDate)

            try? container.encodeIfPresent(enable, forKey: .enable)
        }
    }
}
