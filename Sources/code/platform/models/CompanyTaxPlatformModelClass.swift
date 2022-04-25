

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyTax
         Used By: CompanyProfile
     */

    class CompanyTax: Codable {
        public var cess: Double?

        public var rate: Double

        public var enable: Bool

        public var effectiveDate: String

        public enum CodingKeys: String, CodingKey {
            case cess

            case rate

            case enable

            case effectiveDate = "effective_date"
        }

        public init(cess: Double? = nil, effectiveDate: String, enable: Bool, rate: Double) {
            self.cess = cess

            self.rate = rate

            self.enable = enable

            self.effectiveDate = effectiveDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cess = try container.decode(Double.self, forKey: .cess)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            rate = try container.decode(Double.self, forKey: .rate)

            enable = try container.decode(Bool.self, forKey: .enable)

            effectiveDate = try container.decode(String.self, forKey: .effectiveDate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cess, forKey: .cess)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(enable, forKey: .enable)

            try? container.encodeIfPresent(effectiveDate, forKey: .effectiveDate)
        }
    }
}
