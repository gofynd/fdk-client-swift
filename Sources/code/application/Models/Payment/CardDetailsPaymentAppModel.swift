

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var cardBrand: String

        public var user: String?

        public var nameOnCard: String?

        public var cardExpYear: String?

        public var bankCode: String

        public var cardExpMonth: String?

        public var cardSubType: String

        public var type: String

        public var isDomesticCard: Bool

        public var country: String

        public var id: String

        public var status: Bool

        public var cardToken: String?

        public var bank: String

        public var cardObject: String

        public var extendedCardType: String

        public enum CodingKeys: String, CodingKey {
            case cardBrand = "card_brand"

            case user

            case nameOnCard = "name_on_card"

            case cardExpYear = "card_exp_year"

            case bankCode = "bank_code"

            case cardExpMonth = "card_exp_month"

            case cardSubType = "card_sub_type"

            case type

            case isDomesticCard = "is_domestic_card"

            case country

            case id

            case status

            case cardToken = "card_token"

            case bank

            case cardObject = "card_object"

            case extendedCardType = "extended_card_type"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.cardBrand = cardBrand

            self.user = user

            self.nameOnCard = nameOnCard

            self.cardExpYear = cardExpYear

            self.bankCode = bankCode

            self.cardExpMonth = cardExpMonth

            self.cardSubType = cardSubType

            self.type = type

            self.isDomesticCard = isDomesticCard

            self.country = country

            self.id = id

            self.status = status

            self.cardToken = cardToken

            self.bank = bank

            self.cardObject = cardObject

            self.extendedCardType = extendedCardType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

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
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankCode = try container.decode(String.self, forKey: .bankCode)

            do {
                cardExpMonth = try container.decode(String.self, forKey: .cardExpMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            type = try container.decode(String.self, forKey: .type)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            country = try container.decode(String.self, forKey: .country)

            id = try container.decode(String.self, forKey: .id)

            status = try container.decode(Bool.self, forKey: .status)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bank = try container.decode(String.self, forKey: .bank)

            cardObject = try container.decode(String.self, forKey: .cardObject)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)
        }
    }
}
