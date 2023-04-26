

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var cardSubType: String

        public var cardToken: String?

        public var user: String?

        public var bankCode: String

        public var country: String

        public var status: Bool

        public var extendedCardType: String

        public var bank: String

        public var isDomesticCard: Bool

        public var cardBrand: String

        public var id: String

        public var type: String

        public var cardExpYear: String?

        public var nameOnCard: String?

        public var cardExpMonth: String?

        public var cardObject: String

        public enum CodingKeys: String, CodingKey {
            case cardSubType = "card_sub_type"

            case cardToken = "card_token"

            case user

            case bankCode = "bank_code"

            case country

            case status

            case extendedCardType = "extended_card_type"

            case bank

            case isDomesticCard = "is_domestic_card"

            case cardBrand = "card_brand"

            case id

            case type

            case cardExpYear = "card_exp_year"

            case nameOnCard = "name_on_card"

            case cardExpMonth = "card_exp_month"

            case cardObject = "card_object"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.cardSubType = cardSubType

            self.cardToken = cardToken

            self.user = user

            self.bankCode = bankCode

            self.country = country

            self.status = status

            self.extendedCardType = extendedCardType

            self.bank = bank

            self.isDomesticCard = isDomesticCard

            self.cardBrand = cardBrand

            self.id = id

            self.type = type

            self.cardExpYear = cardExpYear

            self.nameOnCard = nameOnCard

            self.cardExpMonth = cardExpMonth

            self.cardObject = cardObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

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

            bankCode = try container.decode(String.self, forKey: .bankCode)

            country = try container.decode(String.self, forKey: .country)

            status = try container.decode(Bool.self, forKey: .status)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            bank = try container.decode(String.self, forKey: .bank)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            id = try container.decode(String.self, forKey: .id)

            type = try container.decode(String.self, forKey: .type)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

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

            do {
                cardExpMonth = try container.decode(String.self, forKey: .cardExpMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardObject = try container.decode(String.self, forKey: .cardObject)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)
        }
    }
}
