

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var nameOnCard: String?

        public var type: String

        public var user: String?

        public var cardExpMonth: String?

        public var cardObject: String

        public var isDomesticCard: Bool

        public var id: String

        public var bank: String

        public var cardBrand: String

        public var status: Bool

        public var cardSubType: String

        public var cardToken: String?

        public var cardExpYear: String?

        public var country: String

        public var bankCode: String

        public var extendedCardType: String

        public enum CodingKeys: String, CodingKey {
            case nameOnCard = "name_on_card"

            case type

            case user

            case cardExpMonth = "card_exp_month"

            case cardObject = "card_object"

            case isDomesticCard = "is_domestic_card"

            case id

            case bank

            case cardBrand = "card_brand"

            case status

            case cardSubType = "card_sub_type"

            case cardToken = "card_token"

            case cardExpYear = "card_exp_year"

            case country

            case bankCode = "bank_code"

            case extendedCardType = "extended_card_type"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.nameOnCard = nameOnCard

            self.type = type

            self.user = user

            self.cardExpMonth = cardExpMonth

            self.cardObject = cardObject

            self.isDomesticCard = isDomesticCard

            self.id = id

            self.bank = bank

            self.cardBrand = cardBrand

            self.status = status

            self.cardSubType = cardSubType

            self.cardToken = cardToken

            self.cardExpYear = cardExpYear

            self.country = country

            self.bankCode = bankCode

            self.extendedCardType = extendedCardType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)

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

            cardObject = try container.decode(String.self, forKey: .cardObject)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            id = try container.decode(String.self, forKey: .id)

            bank = try container.decode(String.self, forKey: .bank)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            status = try container.decode(Bool.self, forKey: .status)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

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

            country = try container.decode(String.self, forKey: .country)

            bankCode = try container.decode(String.self, forKey: .bankCode)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)
        }
    }
}
