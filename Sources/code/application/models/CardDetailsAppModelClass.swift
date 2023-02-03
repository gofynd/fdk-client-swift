

import Foundation
public extension ApplicationClient {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var isDomesticCard: Bool

        public var type: String

        public var bank: String

        public var brand: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case isDomesticCard = "is_domestic_card"

            case type

            case bank

            case brand

            case country
        }

        public init(bank: String, brand: String, country: String, isDomesticCard: Bool, type: String) {
            self.isDomesticCard = isDomesticCard

            self.type = type

            self.bank = bank

            self.brand = brand

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            type = try container.decode(String.self, forKey: .type)

            bank = try container.decode(String.self, forKey: .bank)

            brand = try container.decode(String.self, forKey: .brand)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
