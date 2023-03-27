

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var user: String?

        public var country: String

        public var cardObject: String

        public var nameOnCard: String?

        public var status: Bool

        public var isDomesticCard: Bool

        public var cardExpMonth: String?

        public var bankCode: String

        public var cardBrand: String

        public var cardSubType: String

        public var bank: String

        public var cardToken: String?

        public var extendedCardType: String

        public var id: String

        public var cardExpYear: String?

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case user

            case country

            case cardObject = "card_object"

            case nameOnCard = "name_on_card"

            case status

            case isDomesticCard = "is_domestic_card"

            case cardExpMonth = "card_exp_month"

            case bankCode = "bank_code"

            case cardBrand = "card_brand"

            case cardSubType = "card_sub_type"

            case bank

            case cardToken = "card_token"

            case extendedCardType = "extended_card_type"

            case id

            case cardExpYear = "card_exp_year"

            case type
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.user = user

            self.country = country

            self.cardObject = cardObject

            self.nameOnCard = nameOnCard

            self.status = status

            self.isDomesticCard = isDomesticCard

            self.cardExpMonth = cardExpMonth

            self.bankCode = bankCode

            self.cardBrand = cardBrand

            self.cardSubType = cardSubType

            self.bank = bank

            self.cardToken = cardToken

            self.extendedCardType = extendedCardType

            self.id = id

            self.cardExpYear = cardExpYear

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            cardObject = try container.decode(String.self, forKey: .cardObject)

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Bool.self, forKey: .status)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            do {
                cardExpMonth = try container.decode(String.self, forKey: .cardExpMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankCode = try container.decode(String.self, forKey: .bankCode)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            bank = try container.decode(String.self, forKey: .bank)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            id = try container.decode(String.self, forKey: .id)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
