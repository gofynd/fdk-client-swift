

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var bank: String

        public var isDomesticCard: Bool

        public var cardToken: String?

        public var cardExpYear: String?

        public var country: String

        public var cardSubType: String

        public var nameOnCard: String?

        public var cardObject: String

        public var bankCode: String

        public var type: String

        public var id: String

        public var status: Bool

        public var extendedCardType: String

        public var cardExpMonth: String?

        public var user: String?

        public var cardBrand: String

        public enum CodingKeys: String, CodingKey {
            case bank

            case isDomesticCard = "is_domestic_card"

            case cardToken = "card_token"

            case cardExpYear = "card_exp_year"

            case country

            case cardSubType = "card_sub_type"

            case nameOnCard = "name_on_card"

            case cardObject = "card_object"

            case bankCode = "bank_code"

            case type

            case id

            case status

            case extendedCardType = "extended_card_type"

            case cardExpMonth = "card_exp_month"

            case user

            case cardBrand = "card_brand"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.bank = bank

            self.isDomesticCard = isDomesticCard

            self.cardToken = cardToken

            self.cardExpYear = cardExpYear

            self.country = country

            self.cardSubType = cardSubType

            self.nameOnCard = nameOnCard

            self.cardObject = cardObject

            self.bankCode = bankCode

            self.type = type

            self.id = id

            self.status = status

            self.extendedCardType = extendedCardType

            self.cardExpMonth = cardExpMonth

            self.user = user

            self.cardBrand = cardBrand
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bank = try container.decode(String.self, forKey: .bank)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

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

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardObject = try container.decode(String.self, forKey: .cardObject)

            bankCode = try container.decode(String.self, forKey: .bankCode)

            type = try container.decode(String.self, forKey: .type)

            id = try container.decode(String.self, forKey: .id)

            status = try container.decode(Bool.self, forKey: .status)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

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

            cardBrand = try container.decode(String.self, forKey: .cardBrand)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
        }
    }
}
