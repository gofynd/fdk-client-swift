

import Foundation
public extension ApplicationClient {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var cardExpYear: String?

        public var bankCode: String

        public var id: String

        public var cardObject: String

        public var isDomesticCard: Bool

        public var user: String?

        public var nameOnCard: String?

        public var cardExpMonth: String?

        public var extendedCardType: String

        public var type: String

        public var cardToken: String?

        public var status: Bool

        public var cardSubType: String

        public var country: String

        public var bank: String

        public var cardBrand: String

        public enum CodingKeys: String, CodingKey {
            case cardExpYear = "card_exp_year"

            case bankCode = "bank_code"

            case id

            case cardObject = "card_object"

            case isDomesticCard = "is_domestic_card"

            case user

            case nameOnCard = "name_on_card"

            case cardExpMonth = "card_exp_month"

            case extendedCardType = "extended_card_type"

            case type

            case cardToken = "card_token"

            case status

            case cardSubType = "card_sub_type"

            case country

            case bank

            case cardBrand = "card_brand"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.cardExpYear = cardExpYear

            self.bankCode = bankCode

            self.id = id

            self.cardObject = cardObject

            self.isDomesticCard = isDomesticCard

            self.user = user

            self.nameOnCard = nameOnCard

            self.cardExpMonth = cardExpMonth

            self.extendedCardType = extendedCardType

            self.type = type

            self.cardToken = cardToken

            self.status = status

            self.cardSubType = cardSubType

            self.country = country

            self.bank = bank

            self.cardBrand = cardBrand
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankCode = try container.decode(String.self, forKey: .bankCode)

            id = try container.decode(String.self, forKey: .id)

            cardObject = try container.decode(String.self, forKey: .cardObject)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            do {
                user = try container.decode(String.self, forKey: .user)

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

            do {
                cardExpMonth = try container.decode(String.self, forKey: .cardExpMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            type = try container.decode(String.self, forKey: .type)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Bool.self, forKey: .status)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            country = try container.decode(String.self, forKey: .country)

            bank = try container.decode(String.self, forKey: .bank)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
        }
    }
}
