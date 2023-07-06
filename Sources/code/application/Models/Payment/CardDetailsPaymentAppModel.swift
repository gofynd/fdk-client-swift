

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var bank: String

        public var status: Bool

        public var type: String

        public var cardSubType: String

        public var extendedCardType: String

        public var cardExpMonth: String?

        public var country: String

        public var cardExpYear: String?

        public var cardToken: String?

        public var id: String

        public var bankCode: String

        public var nameOnCard: String?

        public var user: String?

        public var isDomesticCard: Bool

        public var cardObject: String

        public var cardBrand: String

        public enum CodingKeys: String, CodingKey {
            case bank

            case status

            case type

            case cardSubType = "card_sub_type"

            case extendedCardType = "extended_card_type"

            case cardExpMonth = "card_exp_month"

            case country

            case cardExpYear = "card_exp_year"

            case cardToken = "card_token"

            case id

            case bankCode = "bank_code"

            case nameOnCard = "name_on_card"

            case user

            case isDomesticCard = "is_domestic_card"

            case cardObject = "card_object"

            case cardBrand = "card_brand"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.bank = bank

            self.status = status

            self.type = type

            self.cardSubType = cardSubType

            self.extendedCardType = extendedCardType

            self.cardExpMonth = cardExpMonth

            self.country = country

            self.cardExpYear = cardExpYear

            self.cardToken = cardToken

            self.id = id

            self.bankCode = bankCode

            self.nameOnCard = nameOnCard

            self.user = user

            self.isDomesticCard = isDomesticCard

            self.cardObject = cardObject

            self.cardBrand = cardBrand
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bank = try container.decode(String.self, forKey: .bank)

            status = try container.decode(Bool.self, forKey: .status)

            type = try container.decode(String.self, forKey: .type)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            do {
                cardExpMonth = try container.decode(String.self, forKey: .cardExpMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

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

            id = try container.decode(String.self, forKey: .id)

            bankCode = try container.decode(String.self, forKey: .bankCode)

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

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

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            cardObject = try container.decode(String.self, forKey: .cardObject)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
        }
    }
}
