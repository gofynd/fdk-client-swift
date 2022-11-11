

import Foundation
public extension ApplicationClient {
    /*
         Model: Card
         Used By: Payment
     */
    class Card: Codable {
        public var expMonth: Int?

        public var cardBrand: String?

        public var cardIssuer: String?

        public var cardToken: String?

        public var cardIsin: String?

        public var cardReference: String?

        public var nickname: String?

        public var cardName: String?

        public var cardFingerprint: String?

        public var cardType: String?

        public var cardNumber: String?

        public var expYear: Int?

        public var cardId: String?

        public var expired: Bool?

        public var cardBrandImage: String?

        public var aggregatorName: String

        public enum CodingKeys: String, CodingKey {
            case expMonth = "exp_month"

            case cardBrand = "card_brand"

            case cardIssuer = "card_issuer"

            case cardToken = "card_token"

            case cardIsin = "card_isin"

            case cardReference = "card_reference"

            case nickname

            case cardName = "card_name"

            case cardFingerprint = "card_fingerprint"

            case cardType = "card_type"

            case cardNumber = "card_number"

            case expYear = "exp_year"

            case cardId = "card_id"

            case expired

            case cardBrandImage = "card_brand_image"

            case aggregatorName = "aggregator_name"
        }

        public init(aggregatorName: String, cardBrand: String? = nil, cardBrandImage: String? = nil, cardFingerprint: String? = nil, cardId: String? = nil, cardIsin: String? = nil, cardIssuer: String? = nil, cardName: String? = nil, cardNumber: String? = nil, cardReference: String? = nil, cardToken: String? = nil, cardType: String? = nil, expired: Bool? = nil, expMonth: Int? = nil, expYear: Int? = nil, nickname: String? = nil) {
            self.expMonth = expMonth

            self.cardBrand = cardBrand

            self.cardIssuer = cardIssuer

            self.cardToken = cardToken

            self.cardIsin = cardIsin

            self.cardReference = cardReference

            self.nickname = nickname

            self.cardName = cardName

            self.cardFingerprint = cardFingerprint

            self.cardType = cardType

            self.cardNumber = cardNumber

            self.expYear = expYear

            self.cardId = cardId

            self.expired = expired

            self.cardBrandImage = cardBrandImage

            self.aggregatorName = aggregatorName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                expMonth = try container.decode(Int.self, forKey: .expMonth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardBrand = try container.decode(String.self, forKey: .cardBrand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardIssuer = try container.decode(String.self, forKey: .cardIssuer)

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
                cardIsin = try container.decode(String.self, forKey: .cardIsin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardReference = try container.decode(String.self, forKey: .cardReference)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nickname = try container.decode(String.self, forKey: .nickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardName = try container.decode(String.self, forKey: .cardName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardType = try container.decode(String.self, forKey: .cardType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardNumber = try container.decode(String.self, forKey: .cardNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expYear = try container.decode(Int.self, forKey: .expYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardId = try container.decode(String.self, forKey: .cardId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expired = try container.decode(Bool.self, forKey: .expired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(cardBrand, forKey: .cardBrand)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(cardNumber, forKey: .cardNumber)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
        }
    }
}
