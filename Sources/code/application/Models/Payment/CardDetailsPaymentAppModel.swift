

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var country: String

        public var bank: String

        public var status: Bool

        public var cardObject: String

        public var cardBrand: String

        public var id: String

        public var cardSubType: String

        public var user: String?

        public var nameOnCard: String?

        public var type: String

        public var extendedCardType: String

        public var cardToken: String?

        public var isDomesticCard: Bool

        public var bankCode: String

        public var cardExpYear: String?

        public var cardExpMonth: String?

        public enum CodingKeys: String, CodingKey {
            case country

            case bank

            case status

            case cardObject = "card_object"

            case cardBrand = "card_brand"

            case id

            case cardSubType = "card_sub_type"

            case user

            case nameOnCard = "name_on_card"

            case type

            case extendedCardType = "extended_card_type"

            case cardToken = "card_token"

            case isDomesticCard = "is_domestic_card"

            case bankCode = "bank_code"

            case cardExpYear = "card_exp_year"

            case cardExpMonth = "card_exp_month"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.country = country

            self.bank = bank

            self.status = status

            self.cardObject = cardObject

            self.cardBrand = cardBrand

            self.id = id

            self.cardSubType = cardSubType

            self.user = user

            self.nameOnCard = nameOnCard

            self.type = type

            self.extendedCardType = extendedCardType

            self.cardToken = cardToken

            self.isDomesticCard = isDomesticCard

            self.bankCode = bankCode

            self.cardExpYear = cardExpYear

            self.cardExpMonth = cardExpMonth
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            bank = try container.decode(String.self, forKey: .bank)

            status = try container.decode(Bool.self, forKey: .status)

            cardObject = try container.decode(String.self, forKey: .cardObject)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            id = try container.decode(String.self, forKey: .id)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

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

            type = try container.decode(String.self, forKey: .type)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            bankCode = try container.decode(String.self, forKey: .bankCode)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)
        }
    }
}
