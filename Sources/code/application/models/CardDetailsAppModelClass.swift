

import Foundation
public extension ApplicationClient {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var bank: String

        public var type: String

        public var brand: String

        public var isDomesticCard: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case bank

            case type

            case brand

            case isDomesticCard = "is_domestic_card"

            case country
        }

        public init(bank: String, brand: String, country: String, isDomesticCard: String, type: String) {
            self.bank = bank

            self.type = type

            self.brand = brand

            self.isDomesticCard = isDomesticCard

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bank = try container.decode(String.self, forKey: .bank)

            type = try container.decode(String.self, forKey: .type)

            brand = try container.decode(String.self, forKey: .brand)

            isDomesticCard = try container.decode(String.self, forKey: .isDomesticCard)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
