

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var country: String

        public var status: Bool

        public var cardBrand: String

        public var id: String

        public var cardExpYear: String?

        public var cardObject: String

        public var bank: String

        public var user: String?

        public var nameOnCard: String?

        public var bankCode: String

        public var type: String

        public var isDomesticCard: Bool

        public var extendedCardType: String

        public var cardToken: String?

        public var cardExpMonth: String?

        public var cardSubType: String

        public enum CodingKeys: String, CodingKey {
            case country

            case status

            case cardBrand = "card_brand"

            case id

            case cardExpYear = "card_exp_year"

            case cardObject = "card_object"

            case bank

            case user

            case nameOnCard = "name_on_card"

            case bankCode = "bank_code"

            case type

            case isDomesticCard = "is_domestic_card"

            case extendedCardType = "extended_card_type"

            case cardToken = "card_token"

            case cardExpMonth = "card_exp_month"

            case cardSubType = "card_sub_type"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.country = country

            self.status = status

            self.cardBrand = cardBrand

            self.id = id

            self.cardExpYear = cardExpYear

            self.cardObject = cardObject

            self.bank = bank

            self.user = user

            self.nameOnCard = nameOnCard

            self.bankCode = bankCode

            self.type = type

            self.isDomesticCard = isDomesticCard

            self.extendedCardType = extendedCardType

            self.cardToken = cardToken

            self.cardExpMonth = cardExpMonth

            self.cardSubType = cardSubType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            status = try container.decode(Bool.self, forKey: .status)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            id = try container.decode(String.self, forKey: .id)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardObject = try container.decode(String.self, forKey: .cardObject)

            bank = try container.decode(String.self, forKey: .bank)

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

            bankCode = try container.decode(String.self, forKey: .bankCode)

            type = try container.decode(String.self, forKey: .type)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

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

            cardSubType = try container.decode(String.self, forKey: .cardSubType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encode(cardSubType, forKey: .cardSubType)
        }
    }
}
