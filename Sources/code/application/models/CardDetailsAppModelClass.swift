

import Foundation
public extension ApplicationClient {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var bank: String

        public var brand: String

        public var country: String

        public var type: String

        public var isDomesticCard: Bool

        public enum CodingKeys: String, CodingKey {
            case bank

            case brand

            case country

            case type

            case isDomesticCard = "is_domestic_card"
        }

        public init(bank: String, brand: String, country: String, isDomesticCard: Bool, type: String) {
            self.bank = bank

            self.brand = brand

            self.country = country

            self.type = type

            self.isDomesticCard = isDomesticCard
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bank = try container.decode(String.self, forKey: .bank)

            brand = try container.decode(String.self, forKey: .brand)

            country = try container.decode(String.self, forKey: .country)

            type = try container.decode(String.self, forKey: .type)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)
        }
    }
}
