

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var extendedCardType: String

        public var isDomesticCard: Bool

        public var cardToken: String?

        public var cardExpYear: String?

        public var bankCode: String

        public var cardSubType: String

        public var country: String

        public var type: String

        public var bank: String

        public var id: String

        public var user: String?

        public var cardBrand: String

        public var cardObject: String

        public var status: Bool

        public var nameOnCard: String?

        public var cardExpMonth: String?

        public enum CodingKeys: String, CodingKey {
            case extendedCardType = "extended_card_type"

            case isDomesticCard = "is_domestic_card"

            case cardToken = "card_token"

            case cardExpYear = "card_exp_year"

            case bankCode = "bank_code"

            case cardSubType = "card_sub_type"

            case country

            case type

            case bank

            case id

            case user

            case cardBrand = "card_brand"

            case cardObject = "card_object"

            case status

            case nameOnCard = "name_on_card"

            case cardExpMonth = "card_exp_month"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.extendedCardType = extendedCardType

            self.isDomesticCard = isDomesticCard

            self.cardToken = cardToken

            self.cardExpYear = cardExpYear

            self.bankCode = bankCode

            self.cardSubType = cardSubType

            self.country = country

            self.type = type

            self.bank = bank

            self.id = id

            self.user = user

            self.cardBrand = cardBrand

            self.cardObject = cardObject

            self.status = status

            self.nameOnCard = nameOnCard

            self.cardExpMonth = cardExpMonth
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

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

            bankCode = try container.decode(String.self, forKey: .bankCode)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            country = try container.decode(String.self, forKey: .country)

            type = try container.decode(String.self, forKey: .type)

            bank = try container.decode(String.self, forKey: .bank)

            id = try container.decode(String.self, forKey: .id)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            cardObject = try container.decode(String.self, forKey: .cardObject)

            status = try container.decode(Bool.self, forKey: .status)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)
        }
    }
}
