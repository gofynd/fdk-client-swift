

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var cardSubType: String

        public var extendedCardType: String

        public var cardBrand: String

        public var country: String

        public var cardToken: String?

        public var cardObject: String

        public var bank: String

        public var id: String

        public var nameOnCard: String?

        public var cardExpYear: String?

        public var cardExpMonth: String?

        public var isDomesticCard: Bool

        public var type: String

        public var user: String?

        public var status: Bool

        public var bankCode: String

        public enum CodingKeys: String, CodingKey {
            case cardSubType = "card_sub_type"

            case extendedCardType = "extended_card_type"

            case cardBrand = "card_brand"

            case country

            case cardToken = "card_token"

            case cardObject = "card_object"

            case bank

            case id

            case nameOnCard = "name_on_card"

            case cardExpYear = "card_exp_year"

            case cardExpMonth = "card_exp_month"

            case isDomesticCard = "is_domestic_card"

            case type

            case user

            case status

            case bankCode = "bank_code"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.cardSubType = cardSubType

            self.extendedCardType = extendedCardType

            self.cardBrand = cardBrand

            self.country = country

            self.cardToken = cardToken

            self.cardObject = cardObject

            self.bank = bank

            self.id = id

            self.nameOnCard = nameOnCard

            self.cardExpYear = cardExpYear

            self.cardExpMonth = cardExpMonth

            self.isDomesticCard = isDomesticCard

            self.type = type

            self.user = user

            self.status = status

            self.bankCode = bankCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            country = try container.decode(String.self, forKey: .country)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardObject = try container.decode(String.self, forKey: .cardObject)

            bank = try container.decode(String.self, forKey: .bank)

            id = try container.decode(String.self, forKey: .id)

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

            do {
                cardExpMonth = try container.decode(String.self, forKey: .cardExpMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            type = try container.decode(String.self, forKey: .type)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Bool.self, forKey: .status)

            bankCode = try container.decode(String.self, forKey: .bankCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(bankCode, forKey: .bankCode)
        }
    }
}
