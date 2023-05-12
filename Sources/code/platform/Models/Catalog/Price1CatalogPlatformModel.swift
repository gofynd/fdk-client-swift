

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: Price1
         Used By: Catalog
     */

    class Price1: Codable {
        public var currencySymbol: String?

        public var min: Double?

        public var max: Double?

        public var currencyCode: String?

        public enum CodingKeys: String, CodingKey {
            case currencySymbol = "currency_symbol"

            case min

            case max

            case currencyCode = "currency_code"
        }

        public init(currencyCode: String? = nil, currencySymbol: String? = nil, max: Double? = nil, min: Double? = nil) {
            self.currencySymbol = currencySymbol

            self.min = min

            self.max = max

            self.currencyCode = currencyCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                min = try container.decode(Double.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                max = try container.decode(Double.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: Price1
         Used By: Catalog
     */

    class Price1: Codable {
        public var currencySymbol: String?

        public var min: Double?

        public var max: Double?

        public var currencyCode: String?

        public enum CodingKeys: String, CodingKey {
            case currencySymbol = "currency_symbol"

            case min

            case max

            case currencyCode = "currency_code"
        }

        public init(currencyCode: String? = nil, currencySymbol: String? = nil, max: Double? = nil, min: Double? = nil) {
            self.currencySymbol = currencySymbol

            self.min = min

            self.max = max

            self.currencyCode = currencyCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                min = try container.decode(Double.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                max = try container.decode(Double.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        }
    }
}
