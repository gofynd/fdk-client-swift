

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyTaxesSerializer
         Used By: CompanyProfile
     */

    class CompanyTaxesSerializer: Codable {
        public var effectiveDate: String?

        public var rate: Double?

        public var enable: Bool?

        public enum CodingKeys: String, CodingKey {
            case effectiveDate = "effective_date"

            case rate

            case enable
        }

        public init(effectiveDate: String? = nil, enable: Bool? = nil, rate: Double? = nil) {
            self.effectiveDate = effectiveDate

            self.rate = rate

            self.enable = enable
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                effectiveDate = try container.decode(String.self, forKey: .effectiveDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(effectiveDate, forKey: .effectiveDate)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(enable, forKey: .enable)
        }
    }
}
