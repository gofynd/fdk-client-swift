

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var cardBrand: String

        public var bank: String

        public var id: String

        public var cardExpMonth: String?

        public var cardExpYear: String?

        public var extendedCardType: String

        public var user: String?

        public var isDomesticCard: Bool

        public var bankCode: String

        public var cardSubType: String

        public var cardToken: String?

        public var status: Bool

        public var type: String

        public var nameOnCard: String?

        public var cardObject: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case cardBrand = "card_brand"

            case bank

            case id

            case cardExpMonth = "card_exp_month"

            case cardExpYear = "card_exp_year"

            case extendedCardType = "extended_card_type"

            case user

            case isDomesticCard = "is_domestic_card"

            case bankCode = "bank_code"

            case cardSubType = "card_sub_type"

            case cardToken = "card_token"

            case status

            case type

            case nameOnCard = "name_on_card"

            case cardObject = "card_object"

            case country
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.cardBrand = cardBrand

            self.bank = bank

            self.id = id

            self.cardExpMonth = cardExpMonth

            self.cardExpYear = cardExpYear

            self.extendedCardType = extendedCardType

            self.user = user

            self.isDomesticCard = isDomesticCard

            self.bankCode = bankCode

            self.cardSubType = cardSubType

            self.cardToken = cardToken

            self.status = status

            self.type = type

            self.nameOnCard = nameOnCard

            self.cardObject = cardObject

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            bank = try container.decode(String.self, forKey: .bank)

            id = try container.decode(String.self, forKey: .id)

            do {
                cardExpMonth = try container.decode(String.self, forKey: .cardExpMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            bankCode = try container.decode(String.self, forKey: .bankCode)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Bool.self, forKey: .status)

            type = try container.decode(String.self, forKey: .type)

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardObject = try container.decode(String.self, forKey: .cardObject)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
