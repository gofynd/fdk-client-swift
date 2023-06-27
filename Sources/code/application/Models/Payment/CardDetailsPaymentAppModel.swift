

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var bankCode: String

        public var user: String?

        public var nameOnCard: String?

        public var cardObject: String

        public var extendedCardType: String

        public var bank: String

        public var cardExpMonth: String?

        public var cardToken: String?

        public var id: String

        public var cardExpYear: String?

        public var status: Bool

        public var cardSubType: String

        public var type: String

        public var isDomesticCard: Bool

        public var country: String

        public var cardBrand: String

        public enum CodingKeys: String, CodingKey {
            case bankCode = "bank_code"

            case user

            case nameOnCard = "name_on_card"

            case cardObject = "card_object"

            case extendedCardType = "extended_card_type"

            case bank

            case cardExpMonth = "card_exp_month"

            case cardToken = "card_token"

            case id

            case cardExpYear = "card_exp_year"

            case status

            case cardSubType = "card_sub_type"

            case type

            case isDomesticCard = "is_domestic_card"

            case country

            case cardBrand = "card_brand"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.bankCode = bankCode

            self.user = user

            self.nameOnCard = nameOnCard

            self.cardObject = cardObject

            self.extendedCardType = extendedCardType

            self.bank = bank

            self.cardExpMonth = cardExpMonth

            self.cardToken = cardToken

            self.id = id

            self.cardExpYear = cardExpYear

            self.status = status

            self.cardSubType = cardSubType

            self.type = type

            self.isDomesticCard = isDomesticCard

            self.country = country

            self.cardBrand = cardBrand
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankCode = try container.decode(String.self, forKey: .bankCode)

            do {
                user = try container.decode(String.self, forKey: .user)

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

            cardObject = try container.decode(String.self, forKey: .cardObject)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            bank = try container.decode(String.self, forKey: .bank)

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

            id = try container.decode(String.self, forKey: .id)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Bool.self, forKey: .status)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            type = try container.decode(String.self, forKey: .type)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            country = try container.decode(String.self, forKey: .country)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
        }
    }
}
