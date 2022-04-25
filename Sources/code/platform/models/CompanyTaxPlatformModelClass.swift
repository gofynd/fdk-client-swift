

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyTax
         Used By: CompanyProfile
     */

    class CompanyTax: Codable {
        public var enable: Bool

        public var effectiveDate: String

        public var rate: Double

        public var cess: Double?

        public enum CodingKeys: String, CodingKey {
            case enable

            case effectiveDate = "effective_date"

            case rate

            case cess
        }

        public init(cess: Double? = nil, effectiveDate: String, enable: Bool, rate: Double) {
            self.enable = enable

            self.effectiveDate = effectiveDate

            self.rate = rate

            self.cess = cess
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            enable = try container.decode(Bool.self, forKey: .enable)

            effectiveDate = try container.decode(String.self, forKey: .effectiveDate)

            rate = try container.decode(Double.self, forKey: .rate)

            do {
                cess = try container.decode(Double.self, forKey: .cess)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enable, forKey: .enable)

            try? container.encodeIfPresent(effectiveDate, forKey: .effectiveDate)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(cess, forKey: .cess)
        }
    }
}
