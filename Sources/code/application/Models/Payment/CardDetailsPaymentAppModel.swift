

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CardDetails
         Used By: Payment
     */
    class CardDetails: Codable {
        public var nameOnCard: String?

        public var bank: String

        public var cardToken: String?

        public var status: Bool

        public var user: String?

        public var cardSubType: String

        public var country: String

        public var id: String

        public var type: String

        public var cardExpYear: String?

        public var cardBrand: String

        public var cardExpMonth: String?

        public var extendedCardType: String

        public var cardObject: String

        public var isDomesticCard: Bool

        public var bankCode: String

        public enum CodingKeys: String, CodingKey {
            case nameOnCard = "name_on_card"

            case bank

            case cardToken = "card_token"

            case status

            case user

            case cardSubType = "card_sub_type"

            case country

            case id

            case type

            case cardExpYear = "card_exp_year"

            case cardBrand = "card_brand"

            case cardExpMonth = "card_exp_month"

            case extendedCardType = "extended_card_type"

            case cardObject = "card_object"

            case isDomesticCard = "is_domestic_card"

            case bankCode = "bank_code"
        }

        public init(bank: String, bankCode: String, cardBrand: String, cardExpMonth: String? = nil, cardExpYear: String? = nil, cardObject: String, cardSubType: String, cardToken: String? = nil, country: String, extendedCardType: String, id: String, isDomesticCard: Bool, nameOnCard: String? = nil, status: Bool, type: String, user: String? = nil) {
            self.nameOnCard = nameOnCard

            self.bank = bank

            self.cardToken = cardToken

            self.status = status

            self.user = user

            self.cardSubType = cardSubType

            self.country = country

            self.id = id

            self.type = type

            self.cardExpYear = cardExpYear

            self.cardBrand = cardBrand

            self.cardExpMonth = cardExpMonth

            self.extendedCardType = extendedCardType

            self.cardObject = cardObject

            self.isDomesticCard = isDomesticCard

            self.bankCode = bankCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                nameOnCard = try container.decode(String.self, forKey: .nameOnCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bank = try container.decode(String.self, forKey: .bank)

            do {
                cardToken = try container.decode(String.self, forKey: .cardToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Bool.self, forKey: .status)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cardSubType = try container.decode(String.self, forKey: .cardSubType)

            country = try container.decode(String.self, forKey: .country)

            id = try container.decode(String.self, forKey: .id)

            type = try container.decode(String.self, forKey: .type)

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

            extendedCardType = try container.decode(String.self, forKey: .extendedCardType)

            cardObject = try container.decode(String.self, forKey: .cardObject)

            isDomesticCard = try container.decode(Bool.self, forKey: .isDomesticCard)

            bankCode = try container.decode(String.self, forKey: .bankCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(nameOnCard, forKey: .nameOnCard)

            try? container.encodeIfPresent(bank, forKey: .bank)

            try? container.encodeIfPresent(cardToken, forKey: .cardToken)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encode(cardSubType, forKey: .cardSubType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(cardExpYear, forKey: .cardExpYear)

            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)

            try? container.encodeIfPresent(cardExpMonth, forKey: .cardExpMonth)

            try? container.encodeIfPresent(extendedCardType, forKey: .extendedCardType)

            try? container.encodeIfPresent(cardObject, forKey: .cardObject)

            try? container.encodeIfPresent(isDomesticCard, forKey: .isDomesticCard)

            try? container.encode(bankCode, forKey: .bankCode)
        }
    }
}
