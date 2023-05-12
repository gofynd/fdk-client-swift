

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var id: String

        public var type: String

        public var country: String

        public var cardObject: String

        public var bankCode: String

        public var cardToken: String?

        public var cardExpMonth: String?

        public var extendedCardType: String

        public var isDomesticCard: Bool

        public var status: Bool

        public var bank: String

        public var nameOnCard: String?

        public var cardExpYear: String?

        public var cardBrand: String

        public var cardSubType: String

        public var user: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case type

            case country

            case cardObject = "card_object"

            case bankCode = "bank_code"

            case cardToken = "card_token"

            case cardExpMonth = "card_exp_month"

            case extendedCardType = "extended_card_type"

            case isDomesticCard = "is_domestic_card"

            case status

            case bank

            case nameOnCard = "name_on_card"

            case cardExpYear = "card_exp_year"

            case cardBrand = "card_brand"

            case cardSubType = "card_sub_type"

            case user
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.id = id

            self.type = type

            self.country = country

            self.cardObject = cardObject

            self.bankCode = bankCode

            self.cardToken = cardToken

            self.cardExpMonth = cardExpMonth

            self.extendedCardType = extendedCardType

            self.isDomesticCard = isDomesticCard

            self.status = status

            self.bank = bank

            self.nameOnCard = nameOnCard

            self.cardExpYear = cardExpYear

            self.cardBrand = cardBrand

            self.cardSubType = cardSubType

            self.user = user
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            type = try container.decode(String.self, forKey: .type)

            country = try container.decode(String.self, forKey: .country)

            cardObject = try container.decode(String.self, forKey: .cardObject)

            bankCode = try container.decode(String.self, forKey: .bankCode)

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

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            status = try container.decode(Bool.self, forKey: .status)

            bank = try container.decode(String.self, forKey: .bank)

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

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}
