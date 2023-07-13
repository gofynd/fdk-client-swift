

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var isDomesticCard: Bool

        public var country: String

        public var cardSubType: String

        public var cardObject: String

        public var id: String

        public var nameOnCard: String?

        public var cardBrand: String

        public var type: String

        public var bank: String

        public var extendedCardType: String

        public var cardExpMonth: String?

        public var status: Bool

        public var cardExpYear: String?

        public var cardToken: String?

        public var user: String?

        public var bankCode: String

        public enum CodingKeys: String, CodingKey {
            case isDomesticCard = "is_domestic_card"

            case country

            case cardSubType = "card_sub_type"

            case cardObject = "card_object"

            case id

            case nameOnCard = "name_on_card"

            case cardBrand = "card_brand"

            case type

            case bank

            case extendedCardType = "extended_card_type"

            case cardExpMonth = "card_exp_month"

            case status

            case cardExpYear = "card_exp_year"

            case cardToken = "card_token"

            case user

            case bankCode = "bank_code"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.isDomesticCard = isDomesticCard

            self.country = country

            self.cardSubType = cardSubType

            self.cardObject = cardObject

            self.id = id

            self.nameOnCard = nameOnCard

            self.cardBrand = cardBrand

            self.type = type

            self.bank = bank

            self.extendedCardType = extendedCardType

            self.cardExpMonth = cardExpMonth

            self.status = status

            self.cardExpYear = cardExpYear

            self.cardToken = cardToken

            self.user = user

            self.bankCode = bankCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            country = try container.decode(String.self, forKey: .country)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            cardObject = try container.decode(String.self, forKey: .cardObject)

            id = try container.decode(String.self, forKey: .id)

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            type = try container.decode(String.self, forKey: .type)

            bank = try container.decode(String.self, forKey: .bank)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            do {
                cardExpMonth = try container.decode(String.self, forKey: .cardExpMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Bool.self, forKey: .status)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

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

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankCode = try container.decode(String.self, forKey: .bankCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encode(bankCode, forKey: .bankCode)
        }
    }
}
