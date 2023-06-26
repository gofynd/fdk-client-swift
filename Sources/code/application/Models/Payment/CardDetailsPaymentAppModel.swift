

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var isDomesticCard: Bool

        public var cardObject: String

        public var cardSubType: String

        public var bankCode: String

        public var status: Bool

        public var id: String

        public var cardToken: String?

        public var nameOnCard: String?

        public var user: String?

        public var bank: String

        public var extendedCardType: String

        public var cardExpYear: String?

        public var cardBrand: String

        public var cardExpMonth: String?

        public var country: String

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case isDomesticCard = "is_domestic_card"

            case cardObject = "card_object"

            case cardSubType = "card_sub_type"

            case bankCode = "bank_code"

            case status

            case id

            case cardToken = "card_token"

            case nameOnCard = "name_on_card"

            case user

            case bank

            case extendedCardType = "extended_card_type"

            case cardExpYear = "card_exp_year"

            case cardBrand = "card_brand"

            case cardExpMonth = "card_exp_month"

            case country

            case type
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.isDomesticCard = isDomesticCard

            self.cardObject = cardObject

            self.cardSubType = cardSubType

            self.bankCode = bankCode

            self.status = status

            self.id = id

            self.cardToken = cardToken

            self.nameOnCard = nameOnCard

            self.user = user

            self.bank = bank

            self.extendedCardType = extendedCardType

            self.cardExpYear = cardExpYear

            self.cardBrand = cardBrand

            self.cardExpMonth = cardExpMonth

            self.country = country

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            cardObject = try container.decode(String.self, forKey: .cardObject)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            bankCode = try container.decode(String.self, forKey: .bankCode)

            status = try container.decode(Bool.self, forKey: .status)

            id = try container.decode(String.self, forKey: .id)

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

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bank = try container.decode(String.self, forKey: .bank)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            do {
                cardExpMonth = try container.decode(String.self, forKey: .cardExpMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
