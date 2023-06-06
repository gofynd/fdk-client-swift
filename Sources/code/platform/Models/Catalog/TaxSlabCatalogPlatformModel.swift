

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: TaxSlab
         Used By: Catalog
     */

    class TaxSlab: Codable {
        public var rate: Double

        public var threshold: Double

        public var effectiveDate: String

        public var cess: Double?

        public enum CodingKeys: String, CodingKey {
            case rate

            case threshold

            case effectiveDate = "effective_date"

            case cess
        }

        public init(cess: Double? = nil, effectiveDate: String, rate: Double, threshold: Double) {
            self.rate = rate

            self.threshold = threshold

            self.effectiveDate = effectiveDate

            self.cess = cess
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            rate = try container.decode(Double.self, forKey: .rate)

            threshold = try container.decode(Double.self, forKey: .threshold)

            effectiveDate = try container.decode(String.self, forKey: .effectiveDate)

            do {
                cess = try container.decode(Double.self, forKey: .cess)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(threshold, forKey: .threshold)

            try? container.encodeIfPresent(effectiveDate, forKey: .effectiveDate)

            try? container.encodeIfPresent(cess, forKey: .cess)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: TaxSlab
         Used By: Catalog
     */

    class TaxSlab: Codable {
        public var rate: Double

        public var threshold: Double

        public var effectiveDate: String

        public var cess: Double?

        public enum CodingKeys: String, CodingKey {
            case rate

            case threshold

            case effectiveDate = "effective_date"

            case cess
        }

        public init(cess: Double? = nil, effectiveDate: String, rate: Double, threshold: Double) {
            self.rate = rate

            self.threshold = threshold

            self.effectiveDate = effectiveDate

            self.cess = cess
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            rate = try container.decode(Double.self, forKey: .rate)

            threshold = try container.decode(Double.self, forKey: .threshold)

            effectiveDate = try container.decode(String.self, forKey: .effectiveDate)

            do {
                cess = try container.decode(Double.self, forKey: .cess)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(threshold, forKey: .threshold)

            try? container.encodeIfPresent(effectiveDate, forKey: .effectiveDate)

            try? container.encodeIfPresent(cess, forKey: .cess)
        }
    }
}
