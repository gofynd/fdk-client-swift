

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var cardObject: String

        public var cardToken: String?

        public var cardSubType: String

        public var country: String

        public var extendedCardType: String

        public var id: String

        public var cardExpMonth: String?

        public var bankCode: String

        public var type: String

        public var bank: String

        public var isDomesticCard: Bool

        public var user: String?

        public var nameOnCard: String?

        public var cardExpYear: String?

        public var cardBrand: String

        public var status: Bool

        public enum CodingKeys: String, CodingKey {
            case cardObject = "card_object"

            case cardToken = "card_token"

            case cardSubType = "card_sub_type"

            case country

            case extendedCardType = "extended_card_type"

            case id

            case cardExpMonth = "card_exp_month"

            case bankCode = "bank_code"

            case type

            case bank

            case isDomesticCard = "is_domestic_card"

            case user

            case nameOnCard = "name_on_card"

            case cardExpYear = "card_exp_year"

            case cardBrand = "card_brand"

            case status
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.cardObject = cardObject

            self.cardToken = cardToken

            self.cardSubType = cardSubType

            self.country = country

            self.extendedCardType = extendedCardType

            self.id = id

            self.cardExpMonth = cardExpMonth

            self.bankCode = bankCode

            self.type = type

            self.bank = bank

            self.isDomesticCard = isDomesticCard

            self.user = user

            self.nameOnCard = nameOnCard

            self.cardExpYear = cardExpYear

            self.cardBrand = cardBrand

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cardObject = try container.decode(String.self, forKey: .cardObject)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            country = try container.decode(String.self, forKey: .country)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            id = try container.decode(String.self, forKey: .id)

            do {
                cardExpMonth = try container.decode(String.self, forKey: .cardExpMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankCode = try container.decode(String.self, forKey: .bankCode)

            type = try container.decode(String.self, forKey: .type)

            bank = try container.decode(String.self, forKey: .bank)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

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

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            status = try container.decode(Bool.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encode(bankCode, forKey: .bankCode)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
