

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var bank: String

        public var status: Bool

        public var cardToken: String?

        public var user: String?

        public var cardObject: String

        public var id: String

        public var type: String

        public var bankCode: String

        public var isDomesticCard: Bool

        public var cardExpMonth: String?

        public var extendedCardType: String

        public var cardSubType: String

        public var country: String

        public var nameOnCard: String?

        public var cardExpYear: String?

        public var cardBrand: String

        public enum CodingKeys: String, CodingKey {
            case bank

            case status

            case cardToken = "card_token"

            case user

            case cardObject = "card_object"

            case id

            case type

            case bankCode = "bank_code"

            case isDomesticCard = "is_domestic_card"

            case cardExpMonth = "card_exp_month"

            case extendedCardType = "extended_card_type"

            case cardSubType = "card_sub_type"

            case country

            case nameOnCard = "name_on_card"

            case cardExpYear = "card_exp_year"

            case cardBrand = "card_brand"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.bank = bank

            self.status = status

            self.cardToken = cardToken

            self.user = user

            self.cardObject = cardObject

            self.id = id

            self.type = type

            self.bankCode = bankCode

            self.isDomesticCard = isDomesticCard

            self.cardExpMonth = cardExpMonth

            self.extendedCardType = extendedCardType

            self.cardSubType = cardSubType

            self.country = country

            self.nameOnCard = nameOnCard

            self.cardExpYear = cardExpYear

            self.cardBrand = cardBrand
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bank = try container.decode(String.self, forKey: .bank)

            status = try container.decode(Bool.self, forKey: .status)

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

            cardObject = try container.decode(String.self, forKey: .cardObject)

            id = try container.decode(String.self, forKey: .id)

            type = try container.decode(String.self, forKey: .type)

            bankCode = try container.decode(String.self, forKey: .bankCode)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            do {
                cardExpMonth = try container.decode(String.self, forKey: .cardExpMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            country = try container.decode(String.self, forKey: .country)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
        }
    }
}
