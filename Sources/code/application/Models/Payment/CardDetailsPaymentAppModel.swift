

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var cardBrand: String

        public var country: String

        public var user: String?

        public var cardExpYear: String?

        public var isDomesticCard: Bool

        public var bank: String

        public var bankCode: String

        public var nameOnCard: String?

        public var status: Bool

        public var cardToken: String?

        public var cardObject: String

        public var type: String

        public var extendedCardType: String

        public var cardExpMonth: String?

        public var cardSubType: String

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case cardBrand = "card_brand"

            case country

            case user

            case cardExpYear = "card_exp_year"

            case isDomesticCard = "is_domestic_card"

            case bank

            case bankCode = "bank_code"

            case nameOnCard = "name_on_card"

            case status

            case cardToken = "card_token"

            case cardObject = "card_object"

            case type

            case extendedCardType = "extended_card_type"

            case cardExpMonth = "card_exp_month"

            case cardSubType = "card_sub_type"

            case id
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.cardBrand = cardBrand

            self.country = country

            self.user = user

            self.cardExpYear = cardExpYear

            self.isDomesticCard = isDomesticCard

            self.bank = bank

            self.bankCode = bankCode

            self.nameOnCard = nameOnCard

            self.status = status

            self.cardToken = cardToken

            self.cardObject = cardObject

            self.type = type

            self.extendedCardType = extendedCardType

            self.cardExpMonth = cardExpMonth

            self.cardSubType = cardSubType

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            country = try container.decode(String.self, forKey: .country)

            do {
                user = try container.decode(String.self, forKey: .user)

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

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            bank = try container.decode(String.self, forKey: .bank)

            bankCode = try container.decode(String.self, forKey: .bankCode)

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Bool.self, forKey: .status)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardObject = try container.decode(String.self, forKey: .cardObject)

            type = try container.decode(String.self, forKey: .type)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            do {
                cardExpMonth = try container.decode(String.self, forKey: .cardExpMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
