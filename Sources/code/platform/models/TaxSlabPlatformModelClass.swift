

import Foundation
public extension PlatformClient {
    /*
         Model: TaxSlab
         Used By: Catalog
     */

    class TaxSlab: Codable {
        public var cess: Double?

        public var rate: Double

        public var effectiveDate: String

        public var threshold: Double

        public enum CodingKeys: String, CodingKey {
            case cess

            case rate

            case effectiveDate = "effective_date"

            case threshold
        }

        public init(cess: Double? = nil, effectiveDate: String, rate: Double, threshold: Double) {
            self.cess = cess

            self.rate = rate

            self.effectiveDate = effectiveDate

            self.threshold = threshold
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

            effectiveDate = try container.decode(String.self, forKey: .effectiveDate)

            threshold = try container.decode(Double.self, forKey: .threshold)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cess, forKey: .cess)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(effectiveDate, forKey: .effectiveDate)

            try? container.encodeIfPresent(threshold, forKey: .threshold)
        }
    }
}
