

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var cardExpMonth: String?

        public var nameOnCard: String?

        public var bankCode: String

        public var bank: String

        public var user: String?

        public var cardSubType: String

        public var isDomesticCard: Bool

        public var cardBrand: String

        public var cardObject: String

        public var type: String

        public var status: Bool

        public var cardToken: String?

        public var extendedCardType: String

        public var cardExpYear: String?

        public var id: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case cardExpMonth = "card_exp_month"

            case nameOnCard = "name_on_card"

            case bankCode = "bank_code"

            case bank

            case user

            case cardSubType = "card_sub_type"

            case isDomesticCard = "is_domestic_card"

            case cardBrand = "card_brand"

            case cardObject = "card_object"

            case type

            case status

            case cardToken = "card_token"

            case extendedCardType = "extended_card_type"

            case cardExpYear = "card_exp_year"

            case id

            case country
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.cardExpMonth = cardExpMonth

            self.nameOnCard = nameOnCard

            self.bankCode = bankCode

            self.bank = bank

            self.user = user

            self.cardSubType = cardSubType

            self.isDomesticCard = isDomesticCard

            self.cardBrand = cardBrand

            self.cardObject = cardObject

            self.type = type

            self.status = status

            self.cardToken = cardToken

            self.extendedCardType = extendedCardType

            self.cardExpYear = cardExpYear

            self.id = id

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            bankCode = try container.decode(String.self, forKey: .bankCode)

            bank = try container.decode(String.self, forKey: .bank)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            cardObject = try container.decode(String.self, forKey: .cardObject)

            type = try container.decode(String.self, forKey: .type)

            status = try container.decode(Bool.self, forKey: .status)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
