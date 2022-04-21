

import Foundation
public extension PlatformClient {
    /*
         Model: DomainSuggestion
         Used By: Configuration
     */

    class DomainSuggestion: Codable {
        public var name: String

        public var unsupported: Bool?

        public var isAvailable: Bool

        public var price: Double?

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case unsupported

            case isAvailable = "is_available"

            case price

            case currency
        }

        public init(currency: String? = nil, isAvailable: Bool, name: String, price: Double? = nil, unsupported: Bool? = nil) {
            self.name = name

            self.unsupported = unsupported

            self.isAvailable = isAvailable

            self.price = price

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                unsupported = try container.decode(Bool.self, forKey: .unsupported)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isAvailable = try container.decode(Bool.self, forKey: .isAvailable)

            do {
                price = try container.decode(Double.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(unsupported, forKey: .unsupported)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
