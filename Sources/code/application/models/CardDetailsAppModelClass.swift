

import Foundation
public extension ApplicationClient {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var brand: String

        public var bank: String

        public var type: String

        public var isDomesticCard: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case brand

            case bank

            case type

            case isDomesticCard = "is_domestic_card"

            case country
        }

        public init(bank: String, brand: String, country: String, isDomesticCard: String, type: String) {
            self.brand = brand

            self.bank = bank

            self.type = type

            self.isDomesticCard = isDomesticCard

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brand = try container.decode(String.self, forKey: .brand)

            bank = try container.decode(String.self, forKey: .bank)

            type = try container.decode(String.self, forKey: .type)

            isDomesticCard = try container.decode(String.self, forKey: .isDomesticCard)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
