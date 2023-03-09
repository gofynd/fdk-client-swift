

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: TaxSlab
         Used By: Catalog
     */

    class TaxSlab: Codable {
        public var rate: Double

        public var cess: Double?

        public var threshold: Double

        public var effectiveDate: String

        public enum CodingKeys: String, CodingKey {
            case rate

            case cess

            case threshold

            case effectiveDate = "effective_date"
        }

        public init(cess: Double? = nil, effectiveDate: String, rate: Double, threshold: Double) {
            self.rate = rate

            self.cess = cess

            self.threshold = threshold

            self.effectiveDate = effectiveDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            rate = try container.decode(Double.self, forKey: .rate)

            do {
                cess = try container.decode(Double.self, forKey: .cess)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            threshold = try container.decode(Double.self, forKey: .threshold)

            effectiveDate = try container.decode(String.self, forKey: .effectiveDate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(cess, forKey: .cess)

            try? container.encodeIfPresent(threshold, forKey: .threshold)

            try? container.encodeIfPresent(effectiveDate, forKey: .effectiveDate)
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

        public var cess: Double?

        public var threshold: Double

        public var effectiveDate: String

        public enum CodingKeys: String, CodingKey {
            case rate

            case cess

            case threshold

            case effectiveDate = "effective_date"
        }

        public init(cess: Double? = nil, effectiveDate: String, rate: Double, threshold: Double) {
            self.rate = rate

            self.cess = cess

            self.threshold = threshold

            self.effectiveDate = effectiveDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            rate = try container.decode(Double.self, forKey: .rate)

            do {
                cess = try container.decode(Double.self, forKey: .cess)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            threshold = try container.decode(Double.self, forKey: .threshold)

            effectiveDate = try container.decode(String.self, forKey: .effectiveDate)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rate, forKey: .rate)

            try? container.encodeIfPresent(cess, forKey: .cess)

            try? container.encodeIfPresent(threshold, forKey: .threshold)

            try? container.encodeIfPresent(effectiveDate, forKey: .effectiveDate)
        }
    }
}
