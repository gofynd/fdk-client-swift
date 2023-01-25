

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyTaxesSerializer1
         Used By: CompanyProfile
     */

    class CompanyTaxesSerializer1: Codable {
        public var rate: Double?

        public var enable: Bool?

        public var effectiveDate: String?

        public enum CodingKeys: String, CodingKey {
            case rate

            case enable

            case effectiveDate = "effective_date"
        }

        public init(effectiveDate: String? = nil, enable: Bool? = nil, rate: Double? = nil) {
            self.rate = rate

            self.enable = enable

            self.effectiveDate = effectiveDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                rate = try container.decode(Double.self, forKey: .rate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enable = try container.decode(Bool.self, forKey: .enable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                effectiveDate = try container.decode(String.self, forKey: .effectiveDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(enable, forKey: .enable)

            try? container.encodeIfPresent(effectiveDate, forKey: .effectiveDate)
        }
    }
}
