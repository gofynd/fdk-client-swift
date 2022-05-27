

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyTax
         Used By: CompanyProfile
     */

    class CompanyTax: Codable {
        public var enable: Bool

        public var rate: Double

        public var effectiveDate: String

        public enum CodingKeys: String, CodingKey {
            case enable

            case rate

            case effectiveDate = "effective_date"
        }

        public init(effectiveDate: String, enable: Bool, rate: Double) {
            self.enable = enable

            self.rate = rate

            self.effectiveDate = effectiveDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            enable = try container.decode(Bool.self, forKey: .enable)

            rate = try container.decode(Double.self, forKey: .rate)

            effectiveDate = try container.decode(String.self, forKey: .effectiveDate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enable, forKey: .enable)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(effectiveDate, forKey: .effectiveDate)
        }
    }
}
