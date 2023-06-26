

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var user: String?

        public var cardSubType: String

        public var extendedCardType: String

        public var country: String

        public var isDomesticCard: Bool

        public var cardToken: String?

        public var cardObject: String

        public var cardExpYear: String?

        public var bank: String

        public var type: String

        public var cardBrand: String

        public var nameOnCard: String?

        public var status: Bool

        public var id: String

        public var cardExpMonth: String?

        public var bankCode: String

        public enum CodingKeys: String, CodingKey {
            case user

            case cardSubType = "card_sub_type"

            case extendedCardType = "extended_card_type"

            case country

            case isDomesticCard = "is_domestic_card"

            case cardToken = "card_token"

            case cardObject = "card_object"

            case cardExpYear = "card_exp_year"

            case bank

            case type

            case cardBrand = "card_brand"

            case nameOnCard = "name_on_card"

            case status

            case id

            case cardExpMonth = "card_exp_month"

            case bankCode = "bank_code"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.user = user

            self.cardSubType = cardSubType

            self.extendedCardType = extendedCardType

            self.country = country

            self.isDomesticCard = isDomesticCard

            self.cardToken = cardToken

            self.cardObject = cardObject

            self.cardExpYear = cardExpYear

            self.bank = bank

            self.type = type

            self.cardBrand = cardBrand

            self.nameOnCard = nameOnCard

            self.status = status

            self.id = id

            self.cardExpMonth = cardExpMonth

            self.bankCode = bankCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            country = try container.decode(String.self, forKey: .country)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardObject = try container.decode(String.self, forKey: .cardObject)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bank = try container.decode(String.self, forKey: .bank)

            type = try container.decode(String.self, forKey: .type)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Bool.self, forKey: .status)

            id = try container.decode(String.self, forKey: .id)

            do {
                cardExpMonth = try container.decode(String.self, forKey: .cardExpMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankCode = try container.decode(String.self, forKey: .bankCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encode(bankCode, forKey: .bankCode)
        }
    }
}
