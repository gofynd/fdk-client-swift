

import Foundation
public extension ApplicationClient {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var bankCode: String

        public var cardBrand: String

        public var id: String

        public var country: String

        public var bank: String

        public var extendedCardType: String

        public var status: Bool

        public var user: String?

        public var isDomesticCard: Bool

        public var cardToken: String?

        public var cardObject: String

        public var cardExpYear: String?

        public var cardSubType: String

        public var type: String

        public var cardExpMonth: String?

        public var nameOnCard: String?

        public enum CodingKeys: String, CodingKey {
            case bankCode = "bank_code"

            case cardBrand = "card_brand"

            case id

            case country

            case bank

            case extendedCardType = "extended_card_type"

            case status

            case user

            case isDomesticCard = "is_domestic_card"

            case cardToken = "card_token"

            case cardObject = "card_object"

            case cardExpYear = "card_exp_year"

            case cardSubType = "card_sub_type"

            case type

            case cardExpMonth = "card_exp_month"

            case nameOnCard = "name_on_card"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.bankCode = bankCode

            self.cardBrand = cardBrand

            self.id = id

            self.country = country

            self.bank = bank

            self.extendedCardType = extendedCardType

            self.status = status

            self.user = user

            self.isDomesticCard = isDomesticCard

            self.cardToken = cardToken

            self.cardObject = cardObject

            self.cardExpYear = cardExpYear

            self.cardSubType = cardSubType

            self.type = type

            self.cardExpMonth = cardExpMonth

            self.nameOnCard = nameOnCard
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankCode = try container.decode(String.self, forKey: .bankCode)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            id = try container.decode(String.self, forKey: .id)

            country = try container.decode(String.self, forKey: .country)

            bank = try container.decode(String.self, forKey: .bank)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            status = try container.decode(Bool.self, forKey: .status)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardObject = try container.decode(String.self, forKey: .cardObject)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            type = try container.decode(String.self, forKey: .type)

            do {
                cardExpMonth = try container.decode(String.self, forKey: .cardExpMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)
        }
    }
}
