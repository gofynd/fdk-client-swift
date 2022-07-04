

import Foundation
public extension PlatformClient {
    /*
         Model: TaxSlab
         Used By: Catalog
     */

    class TaxSlab: Codable {
        public var threshold: Double

        public var cess: Double?

        public var effectiveDate: String

        public var rate: Double

        public enum CodingKeys: String, CodingKey {
            case threshold

            case cess

            case effectiveDate = "effective_date"

            case rate
        }

        public init(cess: Double? = nil, effectiveDate: String, rate: Double, threshold: Double) {
            self.threshold = threshold

            self.cess = cess

            self.effectiveDate = effectiveDate

            self.rate = rate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            threshold = try container.decode(Double.self, forKey: .threshold)

            do {
                cess = try container.decode(Double.self, forKey: .cess)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            effectiveDate = try container.decode(String.self, forKey: .effectiveDate)

            rate = try container.decode(Double.self, forKey: .rate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(threshold, forKey: .threshold)

            try? container.encodeIfPresent(cess, forKey: .cess)

            try? container.encodeIfPresent(effectiveDate, forKey: .effectiveDate)

            try? container.encodeIfPresent(rate, forKey: .rate)
        }
    }
}