

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyTax
         Used By: CompanyProfile
     */

    class CompanyTax: Codable {
        public var effectiveDate: String

        public var rate: Double

        public var enable: Bool

        public enum CodingKeys: String, CodingKey {
            case effectiveDate = "effective_date"

            case rate

            case enable
        }

        public init(effectiveDate: String, enable: Bool, rate: Double) {
            self.effectiveDate = effectiveDate

            self.rate = rate

            self.enable = enable
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            effectiveDate = try container.decode(String.self, forKey: .effectiveDate)

            rate = try container.decode(Double.self, forKey: .rate)

            enable = try container.decode(Bool.self, forKey: .enable)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(effectiveDate, forKey: .effectiveDate)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(enable, forKey: .enable)
        }
    }
}
