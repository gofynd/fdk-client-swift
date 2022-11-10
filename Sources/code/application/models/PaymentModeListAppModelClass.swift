

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentModeList
         Used By: Payment
     */
    class PaymentModeList: Codable {
        public var cardToken: String?

        public var cardNumber: String?

        public var name: String?

        public var cardType: String?

        public var intentAppErrorDictList: [IntentAppErrorList]?

        public var intentAppErrorList: [String]?

        public var aggregatorName: String

        public var expMonth: Int?

        public var cardFingerprint: String?

        public var fyndVpa: String?

        public var timeout: Int?

        public var cardBrand: String?

        public var expired: Bool?

        public var displayPriority: Int?

        public var expYear: Int?

        public var cardIssuer: String?

        public var logoUrl: PaymentModeLogo?

        public var cardIsin: String?

        public var intentApp: [IntentApp]?

        public var cardBrandImage: String?

        public var displayName: String?

        public var nickname: String?

        public var cardReference: String?

        public var code: String?

        public var cardName: String?

        public var retryCount: Int?

        public var merchantCode: String?

        public var intentFlow: Bool?

        public var cardId: String?

        public enum CodingKeys: String, CodingKey {
            case cardToken = "card_token"

            case cardNumber = "card_number"

            case name

            case cardType = "card_type"

            case intentAppErrorDictList = "intent_app_error_dict_list"

            case intentAppErrorList = "intent_app_error_list"

            case aggregatorName = "aggregator_name"

            case expMonth = "exp_month"

            case cardFingerprint = "card_fingerprint"

            case fyndVpa = "fynd_vpa"

            case timeout

            case cardBrand = "card_brand"

            case expired

            case displayPriority = "display_priority"

            case expYear = "exp_year"

            case cardIssuer = "card_issuer"

            case logoUrl = "logo_url"

            case cardIsin = "card_isin"

            case intentApp = "intent_app"

            case cardBrandImage = "card_brand_image"

            case displayName = "display_name"

            case nickname

            case cardReference = "card_reference"

            case code

            case cardName = "card_name"

            case retryCount = "retry_count"

            case merchantCode = "merchant_code"

            case intentFlow = "intent_flow"

            case cardId = "card_id"
        }

        public init(aggregatorName: String, cardBrand: String? = nil, cardBrandImage: String? = nil, cardFingerprint: String? = nil, cardId: String? = nil, cardIsin: String? = nil, cardIssuer: String? = nil, cardName: String? = nil, cardNumber: String? = nil, cardReference: String? = nil, cardToken: String? = nil, cardType: String? = nil, code: String? = nil, displayName: String? = nil, displayPriority: Int? = nil, expired: Bool? = nil, expMonth: Int? = nil, expYear: Int? = nil, fyndVpa: String? = nil, intentApp: [IntentApp]? = nil, intentAppErrorDictList: [IntentAppErrorList]? = nil, intentAppErrorList: [String]? = nil, intentFlow: Bool? = nil, logoUrl: PaymentModeLogo? = nil, merchantCode: String? = nil, name: String? = nil, nickname: String? = nil, retryCount: Int? = nil, timeout: Int? = nil) {
            self.cardToken = cardToken

            self.cardNumber = cardNumber

            self.name = name

            self.cardType = cardType

            self.intentAppErrorDictList = intentAppErrorDictList

            self.intentAppErrorList = intentAppErrorList

            self.aggregatorName = aggregatorName

            self.expMonth = expMonth

            self.cardFingerprint = cardFingerprint

            self.fyndVpa = fyndVpa

            self.timeout = timeout

            self.cardBrand = cardBrand

            self.expired = expired

            self.displayPriority = displayPriority

            self.expYear = expYear

            self.cardIssuer = cardIssuer

            self.logoUrl = logoUrl

            self.cardIsin = cardIsin

            self.intentApp = intentApp

            self.cardBrandImage = cardBrandImage

            self.displayName = displayName

            self.nickname = nickname

            self.cardReference = cardReference

            self.code = code

            self.cardName = cardName

            self.retryCount = retryCount

            self.merchantCode = merchantCode

            self.intentFlow = intentFlow

            self.cardId = cardId
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
                cardNumber = try container.decode(String.self, forKey: .cardNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

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
                intentAppErrorDictList = try container.decode([IntentAppErrorList].self, forKey: .intentAppErrorDictList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                intentAppErrorList = try container.decode([String].self, forKey: .intentAppErrorList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                expMonth = try container.decode(Int.self, forKey: .expMonth)

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
                fyndVpa = try container.decode(String.self, forKey: .fyndVpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

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
                expired = try container.decode(Bool.self, forKey: .expired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)

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
                cardIssuer = try container.decode(String.self, forKey: .cardIssuer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)

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
                intentApp = try container.decode([IntentApp].self, forKey: .intentApp)

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
                displayName = try container.decode(String.self, forKey: .displayName)

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
                cardReference = try container.decode(String.self, forKey: .cardReference)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

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
                retryCount = try container.decode(Int.self, forKey: .retryCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                intentFlow = try container.decode(Bool.self, forKey: .intentFlow)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(cardNumber, forKey: .cardNumber)

            try? container.encode(name, forKey: .name)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)

            try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(fyndVpa, forKey: .fyndVpa)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(cardBrand, forKey: .cardBrand)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(displayPriority, forKey: .displayPriority)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(intentApp, forKey: .intentApp)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(displayName, forKey: .displayName)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(code, forKey: .code)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(retryCount, forKey: .retryCount)

            try? container.encode(merchantCode, forKey: .merchantCode)

            try? container.encode(intentFlow, forKey: .intentFlow)

            try? container.encode(cardId, forKey: .cardId)
        }
    }
}
