

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var cardToken: String?

        public var cardExpMonth: String?

        public var cardSubType: String

        public var status: Bool

        public var country: String

        public var extendedCardType: String

        public var bank: String

        public var cardExpYear: String?

        public var id: String

        public var cardBrand: String

        public var type: String

        public var user: String?

        public var nameOnCard: String?

        public var isDomesticCard: Bool

        public var cardObject: String

        public var bankCode: String

        public enum CodingKeys: String, CodingKey {
            case cardToken = "card_token"

            case cardExpMonth = "card_exp_month"

            case cardSubType = "card_sub_type"

            case status

            case country

            case extendedCardType = "extended_card_type"

            case bank

            case cardExpYear = "card_exp_year"

            case id

            case cardBrand = "card_brand"

            case type

            case user

            case nameOnCard = "name_on_card"

            case isDomesticCard = "is_domestic_card"

            case cardObject = "card_object"

            case bankCode = "bank_code"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.cardToken = cardToken

            self.cardExpMonth = cardExpMonth

            self.cardSubType = cardSubType

            self.status = status

            self.country = country

            self.extendedCardType = extendedCardType

            self.bank = bank

            self.cardExpYear = cardExpYear

            self.id = id

            self.cardBrand = cardBrand

            self.type = type

            self.user = user

            self.nameOnCard = nameOnCard

            self.isDomesticCard = isDomesticCard

            self.cardObject = cardObject

            self.bankCode = bankCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

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

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            status = try container.decode(Bool.self, forKey: .status)

            country = try container.decode(String.self, forKey: .country)

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            bank = try container.decode(String.self, forKey: .bank)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            type = try container.decode(String.self, forKey: .type)

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

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            cardObject = try container.decode(String.self, forKey: .cardObject)

            bankCode = try container.decode(String.self, forKey: .bankCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encode(bankCode, forKey: .bankCode)
        }
    }
}
