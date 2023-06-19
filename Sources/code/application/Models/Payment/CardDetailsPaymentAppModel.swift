

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var cardSubType: String

        public var country: String

        public var status: Bool

        public var user: String?

        public var cardExpMonth: String?

        public var cardObject: String

        public var nameOnCard: String?

        public var bank: String

        public var cardExpYear: String?

        public var bankCode: String

        public var cardToken: String?

        public var cardBrand: String

        public var isDomesticCard: Bool

        public var extendedCardType: String

        public var type: String

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case cardSubType = "card_sub_type"

            case country

            case status

            case user

            case cardExpMonth = "card_exp_month"

            case cardObject = "card_object"

            case nameOnCard = "name_on_card"

            case bank

            case cardExpYear = "card_exp_year"

            case bankCode = "bank_code"

            case cardToken = "card_token"

            case cardBrand = "card_brand"

            case isDomesticCard = "is_domestic_card"

            case extendedCardType = "extended_card_type"

            case type

            case id
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.cardSubType = cardSubType

            self.country = country

            self.status = status

            self.user = user

            self.cardExpMonth = cardExpMonth

            self.cardObject = cardObject

            self.nameOnCard = nameOnCard

            self.bank = bank

            self.cardExpYear = cardExpYear

            self.bankCode = bankCode

            self.cardToken = cardToken

            self.cardBrand = cardBrand

            self.isDomesticCard = isDomesticCard

            self.extendedCardType = extendedCardType

            self.type = type

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            country = try container.decode(String.self, forKey: .country)

            status = try container.decode(Bool.self, forKey: .status)

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

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bank = try container.decode(String.self, forKey: .bank)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankCode = try container.decode(String.self, forKey: .bankCode)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            type = try container.decode(String.self, forKey: .type)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
