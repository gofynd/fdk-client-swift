

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var cardSubType: String

        public var user: String?

        public var cardExpMonth: String?

        public var bankCode: String

        public var cardExpYear: String?

        public var cardToken: String?

        public var cardObject: String

        public var id: String

        public var status: Bool

        public var nameOnCard: String?

        public var cardBrand: String

        public var extendedCardType: String

        public var isDomesticCard: Bool

        public var type: String

        public var bank: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case cardSubType = "card_sub_type"

            case user

            case cardExpMonth = "card_exp_month"

            case bankCode = "bank_code"

            case cardExpYear = "card_exp_year"

            case cardToken = "card_token"

            case cardObject = "card_object"

            case id

            case status

            case nameOnCard = "name_on_card"

            case cardBrand = "card_brand"

            case extendedCardType = "extended_card_type"

            case isDomesticCard = "is_domestic_card"

            case type

            case bank

            case country
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.cardSubType = cardSubType

            self.user = user

            self.cardExpMonth = cardExpMonth

            self.bankCode = bankCode

            self.cardExpYear = cardExpYear

            self.cardToken = cardToken

            self.cardObject = cardObject

            self.id = id

            self.status = status

            self.nameOnCard = nameOnCard

            self.cardBrand = cardBrand

            self.extendedCardType = extendedCardType

            self.isDomesticCard = isDomesticCard

            self.type = type

            self.bank = bank

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            do {
                user = try container.decode(String.self, forKey: .user)

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

            bankCode = try container.decode(String.self, forKey: .bankCode)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardObject = try container.decode(String.self, forKey: .cardObject)

            id = try container.decode(String.self, forKey: .id)

            status = try container.decode(Bool.self, forKey: .status)

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            type = try container.decode(String.self, forKey: .type)

            bank = try container.decode(String.self, forKey: .bank)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
