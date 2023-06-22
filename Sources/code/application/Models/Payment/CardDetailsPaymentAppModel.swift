

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var isDomesticCard: Bool

        public var cardExpYear: String?

        public var cardObject: String

        public var cardBrand: String

        public var cardSubType: String

        public var extendedCardType: String

        public var nameOnCard: String?

        public var status: Bool

        public var type: String

        public var user: String?

        public var bankCode: String

        public var id: String

        public var cardToken: String?

        public var cardExpMonth: String?

        public var bank: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case isDomesticCard = "is_domestic_card"

            case cardExpYear = "card_exp_year"

            case cardObject = "card_object"

            case cardBrand = "card_brand"

            case cardSubType = "card_sub_type"

            case extendedCardType = "extended_card_type"

            case nameOnCard = "name_on_card"

            case status

            case type

            case user

            case bankCode = "bank_code"

            case id

            case cardToken = "card_token"

            case cardExpMonth = "card_exp_month"

            case bank

            case country
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.isDomesticCard = isDomesticCard

            self.cardExpYear = cardExpYear

            self.cardObject = cardObject

            self.cardBrand = cardBrand

            self.cardSubType = cardSubType

            self.extendedCardType = extendedCardType

            self.nameOnCard = nameOnCard

            self.status = status

            self.type = type

            self.user = user

            self.bankCode = bankCode

            self.id = id

            self.cardToken = cardToken

            self.cardExpMonth = cardExpMonth

            self.bank = bank

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardObject = try container.decode(String.self, forKey: .cardObject)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Bool.self, forKey: .status)

            type = try container.decode(String.self, forKey: .type)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankCode = try container.decode(String.self, forKey: .bankCode)

            id = try container.decode(String.self, forKey: .id)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

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

            bank = try container.decode(String.self, forKey: .bank)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
