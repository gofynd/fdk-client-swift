

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var cardObject: String

        public var country: String

        public var type: String

        public var bank: String

        public var nameOnCard: String?

        public var status: Bool

        public var isDomesticCard: Bool

        public var cardBrand: String

        public var id: String

        public var cardExpMonth: String?

        public var user: String?

        public var cardToken: String?

        public var cardExpYear: String?

        public var cardSubType: String

        public var bankCode: String

        public var extendedCardType: String

        public enum CodingKeys: String, CodingKey {
            case cardObject = "card_object"

            case country

            case type

            case bank

            case nameOnCard = "name_on_card"

            case status

            case isDomesticCard = "is_domestic_card"

            case cardBrand = "card_brand"

            case id

            case cardExpMonth = "card_exp_month"

            case user

            case cardToken = "card_token"

            case cardExpYear = "card_exp_year"

            case cardSubType = "card_sub_type"

            case bankCode = "bank_code"

            case extendedCardType = "extended_card_type"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.cardObject = cardObject

            self.country = country

            self.type = type

            self.bank = bank

            self.nameOnCard = nameOnCard

            self.status = status

            self.isDomesticCard = isDomesticCard

            self.cardBrand = cardBrand

            self.id = id

            self.cardExpMonth = cardExpMonth

            self.user = user

            self.cardToken = cardToken

            self.cardExpYear = cardExpYear

            self.cardSubType = cardSubType

            self.bankCode = bankCode

            self.extendedCardType = extendedCardType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cardObject = try container.decode(String.self, forKey: .cardObject)

            country = try container.decode(String.self, forKey: .country)

            type = try container.decode(String.self, forKey: .type)

            bank = try container.decode(String.self, forKey: .bank)

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Bool.self, forKey: .status)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            id = try container.decode(String.self, forKey: .id)

            do {
                cardExpMonth = try container.decode(String.self, forKey: .cardExpMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(String.self, forKey: .user)

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

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            bankCode = try container.decode(String.self, forKey: .bankCode)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)
        }
    }
}
