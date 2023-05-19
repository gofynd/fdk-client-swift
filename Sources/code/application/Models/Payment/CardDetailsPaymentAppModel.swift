

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var status: Bool

        public var cardToken: String?

        public var nameOnCard: String?

        public var bankCode: String

        public var cardSubType: String

        public var id: String

        public var user: String?

        public var isDomesticCard: Bool

        public var extendedCardType: String

        public var bank: String

        public var type: String

        public var cardObject: String

        public var cardExpYear: String?

        public var country: String

        public var cardExpMonth: String?

        public var cardBrand: String

        public enum CodingKeys: String, CodingKey {
            case status

            case cardToken = "card_token"

            case nameOnCard = "name_on_card"

            case bankCode = "bank_code"

            case cardSubType = "card_sub_type"

            case id

            case user

            case isDomesticCard = "is_domestic_card"

            case extendedCardType = "extended_card_type"

            case bank

            case type

            case cardObject = "card_object"

            case cardExpYear = "card_exp_year"

            case country

            case cardExpMonth = "card_exp_month"

            case cardBrand = "card_brand"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.status = status

            self.cardToken = cardToken

            self.nameOnCard = nameOnCard

            self.bankCode = bankCode

            self.cardSubType = cardSubType

            self.id = id

            self.user = user

            self.isDomesticCard = isDomesticCard

            self.extendedCardType = extendedCardType

            self.bank = bank

            self.type = type

            self.cardObject = cardObject

            self.cardExpYear = cardExpYear

            self.country = country

            self.cardExpMonth = cardExpMonth

            self.cardBrand = cardBrand
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(Bool.self, forKey: .status)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

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

            bankCode = try container.decode(String.self, forKey: .bankCode)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            id = try container.decode(String.self, forKey: .id)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            bank = try container.decode(String.self, forKey: .bank)

            type = try container.decode(String.self, forKey: .type)

            cardObject = try container.decode(String.self, forKey: .cardObject)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                cardExpMonth = try container.decode(String.self, forKey: .cardExpMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardBrand = try container.decode(String.self, forKey: .cardBrand)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
        }
    }
}
