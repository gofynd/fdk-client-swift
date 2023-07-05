

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var cardExpMonth: String?

        public var user: String?

        public var country: String

        public var bankCode: String

        public var cardBrand: String

        public var status: Bool

        public var isDomesticCard: Bool

        public var nameOnCard: String?

        public var id: String

        public var cardToken: String?

        public var extendedCardType: String

        public var type: String

        public var cardExpYear: String?

        public var bank: String

        public var cardSubType: String

        public var cardObject: String

        public enum CodingKeys: String, CodingKey {
            case cardExpMonth = "card_exp_month"

            case user

            case country

            case bankCode = "bank_code"

            case cardBrand = "card_brand"

            case status

            case isDomesticCard = "is_domestic_card"

            case nameOnCard = "name_on_card"

            case id

            case cardToken = "card_token"

            case extendedCardType = "extended_card_type"

            case type

            case cardExpYear = "card_exp_year"

            case bank

            case cardSubType = "card_sub_type"

            case cardObject = "card_object"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.cardExpMonth = cardExpMonth

            self.user = user

            self.country = country

            self.bankCode = bankCode

            self.cardBrand = cardBrand

            self.status = status

            self.isDomesticCard = isDomesticCard

            self.nameOnCard = nameOnCard

            self.id = id

            self.cardToken = cardToken

            self.extendedCardType = extendedCardType

            self.type = type

            self.cardExpYear = cardExpYear

            self.bank = bank

            self.cardSubType = cardSubType

            self.cardObject = cardObject
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
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            bankCode = try container.decode(String.self, forKey: .bankCode)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            status = try container.decode(Bool.self, forKey: .status)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            type = try container.decode(String.self, forKey: .type)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bank = try container.decode(String.self, forKey: .bank)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            cardObject = try container.decode(String.self, forKey: .cardObject)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)
        }
    }
}
