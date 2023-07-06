

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var cardExpMonth: String?

        public var cardToken: String?

        public var country: String

        public var cardBrand: String

        public var nameOnCard: String?

        public var cardExpYear: String?

        public var cardSubType: String

        public var isDomesticCard: Bool

        public var extendedCardType: String

        public var type: String

        public var id: String

        public var bank: String

        public var status: Bool

        public var bankCode: String

        public var cardObject: String

        public var user: String?

        public enum CodingKeys: String, CodingKey {
            case cardExpMonth = "card_exp_month"

            case cardToken = "card_token"

            case country

            case cardBrand = "card_brand"

            case nameOnCard = "name_on_card"

            case cardExpYear = "card_exp_year"

            case cardSubType = "card_sub_type"

            case isDomesticCard = "is_domestic_card"

            case extendedCardType = "extended_card_type"

            case type

            case id

            case bank

            case status

            case bankCode = "bank_code"

            case cardObject = "card_object"

            case user
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.cardExpMonth = cardExpMonth

            self.cardToken = cardToken

            self.country = country

            self.cardBrand = cardBrand

            self.nameOnCard = nameOnCard

            self.cardExpYear = cardExpYear

            self.cardSubType = cardSubType

            self.isDomesticCard = isDomesticCard

            self.extendedCardType = extendedCardType

            self.type = type

            self.id = id

            self.bank = bank

            self.status = status

            self.bankCode = bankCode

            self.cardObject = cardObject

            self.user = user
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
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

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

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            type = try container.decode(String.self, forKey: .type)

            id = try container.decode(String.self, forKey: .id)

            bank = try container.decode(String.self, forKey: .bank)

            status = try container.decode(Bool.self, forKey: .status)

            bankCode = try container.decode(String.self, forKey: .bankCode)

            cardObject = try container.decode(String.self, forKey: .cardObject)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}
