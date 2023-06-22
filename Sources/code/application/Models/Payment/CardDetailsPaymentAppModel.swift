

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var bank: String

        public var extendedCardType: String

        public var isDomesticCard: Bool

        public var bankCode: String

        public var cardExpYear: String?

        public var cardExpMonth: String?

        public var cardBrand: String

        public var status: Bool

        public var cardToken: String?

        public var nameOnCard: String?

        public var cardObject: String

        public var cardSubType: String

        public var id: String

        public var country: String

        public var user: String?

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case bank

            case extendedCardType = "extended_card_type"

            case isDomesticCard = "is_domestic_card"

            case bankCode = "bank_code"

            case cardExpYear = "card_exp_year"

            case cardExpMonth = "card_exp_month"

            case cardBrand = "card_brand"

            case status

            case cardToken = "card_token"

            case nameOnCard = "name_on_card"

            case cardObject = "card_object"

            case cardSubType = "card_sub_type"

            case id

            case country

            case user

            case type
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.bank = bank

            self.extendedCardType = extendedCardType

            self.isDomesticCard = isDomesticCard

            self.bankCode = bankCode

            self.cardExpYear = cardExpYear

            self.cardExpMonth = cardExpMonth

            self.cardBrand = cardBrand

            self.status = status

            self.cardToken = cardToken

            self.nameOnCard = nameOnCard

            self.cardObject = cardObject

            self.cardSubType = cardSubType

            self.id = id

            self.country = country

            self.user = user

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bank = try container.decode(String.self, forKey: .bank)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

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

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

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

            cardObject = try container.decode(String.self, forKey: .cardObject)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            id = try container.decode(String.self, forKey: .id)

            country = try container.decode(String.self, forKey: .country)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
