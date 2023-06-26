

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: Card
         Used By: Payment
     */
    class Card: Codable {
        public var aggregatorName: String

        public var cardBrand: String?

        public var cardBrandImage: String?

        public var expMonth: Int?

        public var cardNumber: String?

        public var expired: Bool?

        public var cardFingerprint: String?

        public var expYear: Int?

        public var cardReference: String?

        public var cardId: String?

        public var nickname: String?

        public var cardIssuer: String?

        public var cardName: String?

        public var cardType: String?

        public var cardToken: String?

        public var cardIsin: String?

        public var compliantWithTokenisationGuidelines: Bool?

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case cardBrand = "card_brand"

            case cardBrandImage = "card_brand_image"

            case expMonth = "exp_month"

            case cardNumber = "card_number"

            case expired

            case cardFingerprint = "card_fingerprint"

            case expYear = "exp_year"

            case cardReference = "card_reference"

            case cardId = "card_id"

            case nickname

            case cardIssuer = "card_issuer"

            case cardName = "card_name"

            case cardType = "card_type"

            case cardToken = "card_token"

            case cardIsin = "card_isin"

            case compliantWithTokenisationGuidelines = "compliant_with_tokenisation_guidelines"
        }

        public init(aggregatorName: String, cardBrand: String? = nil, cardBrandImage: String? = nil, cardFingerprint: String? = nil, cardId: String? = nil, cardIsin: String? = nil, cardIssuer: String? = nil, cardName: String? = nil, cardNumber: String? = nil, cardReference: String? = nil, cardToken: String? = nil, cardType: String? = nil, compliantWithTokenisationGuidelines: Bool? = nil, expired: Bool? = nil, expMonth: Int? = nil, expYear: Int? = nil, nickname: String? = nil) {
            self.aggregatorName = aggregatorName

            self.cardBrand = cardBrand

            self.cardBrandImage = cardBrandImage

            self.expMonth = expMonth

            self.cardNumber = cardNumber

            self.expired = expired

            self.cardFingerprint = cardFingerprint

            self.expYear = expYear

            self.cardReference = cardReference

            self.cardId = cardId

            self.nickname = nickname

            self.cardIssuer = cardIssuer

            self.cardName = cardName

            self.cardType = cardType

            self.cardToken = cardToken

            self.cardIsin = cardIsin

            self.compliantWithTokenisationGuidelines = compliantWithTokenisationGuidelines
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                cardBrand = try container.decode(String.self, forKey: .cardBrand)

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

            do {
                expMonth = try container.decode(Int.self, forKey: .expMonth)

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
                expired = try container.decode(Bool.self, forKey: .expired)

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
                expYear = try container.decode(Int.self, forKey: .expYear)

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
                cardId = try container.decode(String.self, forKey: .cardId)

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
                cardIssuer = try container.decode(String.self, forKey: .cardIssuer)

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
                cardType = try container.decode(String.self, forKey: .cardType)

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
                compliantWithTokenisationGuidelines = try container.decode(Bool.self, forKey: .compliantWithTokenisationGuidelines)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(cardBrand, forKey: .cardBrand)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(cardNumber, forKey: .cardNumber)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(compliantWithTokenisationGuidelines, forKey: .compliantWithTokenisationGuidelines)
        }
    }
}
