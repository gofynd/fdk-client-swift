

import Foundation
public extension ApplicationClient {
    /*
         Model: Card
         Used By: Payment
     */
    class Card: Codable {
        public var cardFingerprint: String?

        public var expired: Bool?

        public var cardId: String?

        public var cardNumber: String?

        public var cardReference: String?

        public var cardType: String?

        public var cardIssuer: String?

        public var nickname: String?

        public var cardIsin: String?

        public var cardName: String?

        public var cardBrand: String?

        public var compliantWithTokenisationGuidelines: Bool?

        public var expMonth: Int?

        public var expYear: Int?

        public var cardToken: String?

        public var cardBrandImage: String?

        public var aggregatorName: String

        public enum CodingKeys: String, CodingKey {
            case cardFingerprint = "card_fingerprint"

            case expired

            case cardId = "card_id"

            case cardNumber = "card_number"

            case cardReference = "card_reference"

            case cardType = "card_type"

            case cardIssuer = "card_issuer"

            case nickname

            case cardIsin = "card_isin"

            case cardName = "card_name"

            case cardBrand = "card_brand"

            case compliantWithTokenisationGuidelines = "compliant_with_tokenisation_guidelines"

            case expMonth = "exp_month"

            case expYear = "exp_year"

            case cardToken = "card_token"

            case cardBrandImage = "card_brand_image"

            case aggregatorName = "aggregator_name"
        }

        public init(aggregatorName: String, cardBrand: String? = nil, cardBrandImage: String? = nil, cardFingerprint: String? = nil, cardId: String? = nil, cardIsin: String? = nil, cardIssuer: String? = nil, cardName: String? = nil, cardNumber: String? = nil, cardReference: String? = nil, cardToken: String? = nil, cardType: String? = nil, compliantWithTokenisationGuidelines: Bool? = nil, expired: Bool? = nil, expMonth: Int? = nil, expYear: Int? = nil, nickname: String? = nil) {
            self.cardFingerprint = cardFingerprint

            self.expired = expired

            self.cardId = cardId

            self.cardNumber = cardNumber

            self.cardReference = cardReference

            self.cardType = cardType

            self.cardIssuer = cardIssuer

            self.nickname = nickname

            self.cardIsin = cardIsin

            self.cardName = cardName

            self.cardBrand = cardBrand

            self.compliantWithTokenisationGuidelines = compliantWithTokenisationGuidelines

            self.expMonth = expMonth

            self.expYear = expYear

            self.cardToken = cardToken

            self.cardBrandImage = cardBrandImage

            self.aggregatorName = aggregatorName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)

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
                cardId = try container.decode(String.self, forKey: .cardId)

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
                cardReference = try container.decode(String.self, forKey: .cardReference)

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
                cardIssuer = try container.decode(String.self, forKey: .cardIssuer)

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
                cardIsin = try container.decode(String.self, forKey: .cardIsin)

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
                cardBrand = try container.decode(String.self, forKey: .cardBrand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                compliantWithTokenisationGuidelines = try container.decode(Bool.self, forKey: .compliantWithTokenisationGuidelines)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expMonth = try container.decode(Int.self, forKey: .expMonth)

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
                cardToken = try container.decode(String.self, forKey: .cardToken)

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

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encode(cardNumber, forKey: .cardNumber)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(cardBrand, forKey: .cardBrand)

            try? container.encode(compliantWithTokenisationGuidelines, forKey: .compliantWithTokenisationGuidelines)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
        }
    }
}
