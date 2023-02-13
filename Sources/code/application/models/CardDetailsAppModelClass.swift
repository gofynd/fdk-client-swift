

import Foundation
public extension ApplicationClient {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var type: String

        public var country: String

        public var bank: String

        public var isDomesticCard: Bool

        public var brand: String

        public enum CodingKeys: String, CodingKey {
            case type

            case country

            case bank

            case isDomesticCard = "is_domestic_card"

            case brand
        }

        public init(bank: String, brand: String, country: String, isDomesticCard: Bool, type: String) {
            self.type = type

            self.country = country

            self.bank = bank

            self.isDomesticCard = isDomesticCard

            self.brand = brand
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            country = try container.decode(String.self, forKey: .country)

            bank = try container.decode(String.self, forKey: .bank)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            brand = try container.decode(String.self, forKey: .brand)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(brand, forKey: .brand)
        }
    }
}
