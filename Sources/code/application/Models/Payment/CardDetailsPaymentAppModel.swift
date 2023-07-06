

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var cardToken: String?

        public var cardObject: String

        public var user: String?

        public var status: Bool

        public var cardExpMonth: String?

        public var cardBrand: String

        public var type: String

        public var cardExpYear: String?

        public var country: String

        public var nameOnCard: String?

        public var extendedCardType: String

        public var cardSubType: String

        public var id: String

        public var bank: String

        public var isDomesticCard: Bool

        public var bankCode: String

        public enum CodingKeys: String, CodingKey {
            case cardToken = "card_token"

            case cardObject = "card_object"

            case user

            case status

            case cardExpMonth = "card_exp_month"

            case cardBrand = "card_brand"

            case type

            case cardExpYear = "card_exp_year"

            case country

            case nameOnCard = "name_on_card"

            case extendedCardType = "extended_card_type"

            case cardSubType = "card_sub_type"

            case id

            case bank

            case isDomesticCard = "is_domestic_card"

            case bankCode = "bank_code"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.cardToken = cardToken

            self.cardObject = cardObject

            self.user = user

            self.status = status

            self.cardExpMonth = cardExpMonth

            self.cardBrand = cardBrand

            self.type = type

            self.cardExpYear = cardExpYear

            self.country = country

            self.nameOnCard = nameOnCard

            self.extendedCardType = extendedCardType

            self.cardSubType = cardSubType

            self.id = id

            self.bank = bank

            self.isDomesticCard = isDomesticCard

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

            cardObject = try container.decode(String.self, forKey: .cardObject)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Bool.self, forKey: .status)

            do {
                cardExpMonth = try container.decode(String.self, forKey: .cardExpMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardBrand = try container.decode(String.self, forKey: .cardBrand)

            type = try container.decode(String.self, forKey: .type)

            do {
                cardExpYear = try container.decode(String.self, forKey: .cardExpYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            id = try container.decode(String.self, forKey: .id)

            bank = try container.decode(String.self, forKey: .bank)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            bankCode = try container.decode(String.self, forKey: .bankCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encode(bankCode, forKey: .bankCode)
        }
    }
}
