

import Foundation
public extension ApplicationClient {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var country: String

        public var type: String

        public var isDomesticCard: Bool

        public var bank: String

        public var brand: String

        public enum CodingKeys: String, CodingKey {
            case country

            case type

            case isDomesticCard = "is_domestic_card"

            case bank

            case brand
        }

        public init(bank: String, brand: String, country: String, isDomesticCard: Bool, type: String) {
            self.country = country

            self.type = type

            self.isDomesticCard = isDomesticCard

            self.bank = bank

            self.brand = brand
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            type = try container.decode(String.self, forKey: .type)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            bank = try container.decode(String.self, forKey: .bank)

            brand = try container.decode(String.self, forKey: .brand)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(brand, forKey: .brand)
        }
    }
}
