

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var cardBrand: String

        public var cardObject: String

        public var status: Bool

        public var country: String

        public var cardSubType: String

        public var bank: String

        public var isDomesticCard: Bool

        public var user: String?

        public var cardExpMonth: String?

        public var bankCode: String

        public var id: String

        public var cardToken: String?

        public var cardExpYear: String?

        public var extendedCardType: String

        public var nameOnCard: String?

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case cardBrand = "card_brand"

            case cardObject = "card_object"

            case status

            case country

            case cardSubType = "card_sub_type"

            case bank

            case isDomesticCard = "is_domestic_card"

            case user

            case cardExpMonth = "card_exp_month"

            case bankCode = "bank_code"

            case id

            case cardToken = "card_token"

            case cardExpYear = "card_exp_year"

            case extendedCardType = "extended_card_type"

            case nameOnCard = "name_on_card"

            case type
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.cardBrand = cardBrand

            self.cardObject = cardObject

            self.status = status

            self.country = country

            self.cardSubType = cardSubType

            self.bank = bank

            self.isDomesticCard = isDomesticCard

            self.user = user

            self.cardExpMonth = cardExpMonth

            self.bankCode = bankCode

            self.id = id

            self.cardToken = cardToken

            self.cardExpYear = cardExpYear

            self.extendedCardType = extendedCardType

            self.nameOnCard = nameOnCard

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            cardObject = try container.decode(String.self, forKey: .cardObject)

            status = try container.decode(Bool.self, forKey: .status)

            country = try container.decode(String.self, forKey: .country)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            bank = try container.decode(String.self, forKey: .bank)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            do {
                user = try container.decode(String.self, forKey: .user)

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

            bankCode = try container.decode(String.self, forKey: .bankCode)

            id = try container.decode(String.self, forKey: .id)

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

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
