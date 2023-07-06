

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var cardToken: String?

        public var user: String?

        public var cardBrand: String

        public var cardObject: String

        public var status: Bool

        public var bank: String

        public var country: String

        public var cardExpMonth: String?

        public var nameOnCard: String?

        public var extendedCardType: String

        public var cardExpYear: String?

        public var id: String

        public var bankCode: String

        public var type: String

        public var isDomesticCard: Bool

        public var cardSubType: String

        public enum CodingKeys: String, CodingKey {
            case cardToken = "card_token"

            case user

            case cardBrand = "card_brand"

            case cardObject = "card_object"

            case status

            case bank

            case country

            case cardExpMonth = "card_exp_month"

            case nameOnCard = "name_on_card"

            case extendedCardType = "extended_card_type"

            case cardExpYear = "card_exp_year"

            case id

            case bankCode = "bank_code"

            case type

            case isDomesticCard = "is_domestic_card"

            case cardSubType = "card_sub_type"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.cardToken = cardToken

            self.user = user

            self.cardBrand = cardBrand

            self.cardObject = cardObject

            self.status = status

            self.bank = bank

            self.country = country

            self.cardExpMonth = cardExpMonth

            self.nameOnCard = nameOnCard

            self.extendedCardType = extendedCardType

            self.cardExpYear = cardExpYear

            self.id = id

            self.bankCode = bankCode

            self.type = type

            self.isDomesticCard = isDomesticCard

            self.cardSubType = cardSubType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

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

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            cardObject = try container.decode(String.self, forKey: .cardObject)

            status = try container.decode(Bool.self, forKey: .status)

            bank = try container.decode(String.self, forKey: .bank)

            country = try container.decode(String.self, forKey: .country)

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

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            bankCode = try container.decode(String.self, forKey: .bankCode)

            type = try container.decode(String.self, forKey: .type)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encode(cardSubType, forKey: .cardSubType)
        }
    }
}
