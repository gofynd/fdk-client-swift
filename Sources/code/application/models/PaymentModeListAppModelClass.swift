

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentModeList
         Used By: Payment
     */
    class PaymentModeList: Codable {
        public var cardIssuer: String?

        public var nickname: String?

        public var codLimit: Double?

        public var intentApp: [IntentApp]?

        public var cardBrand: String?

        public var timeout: Int?

        public var cardToken: String?

        public var retryCount: Int?

        public var codLimitPerOrder: Double?

        public var displayPriority: Int?

        public var aggregatorName: String

        public var cardId: String?

        public var name: String?

        public var fyndVpa: String?

        public var code: String?

        public var cardBrandImage: String?

        public var cardReference: String?

        public var cardIsin: String?

        public var cardNumber: String?

        public var compliantWithTokenisationGuidelines: Bool?

        public var cardName: String?

        public var displayName: String?

        public var intentAppErrorDictList: [IntentAppErrorList]?

        public var merchantCode: String?

        public var logoUrl: PaymentModeLogo?

        public var intentAppErrorList: [String]?

        public var expired: Bool?

        public var intentFlow: Bool?

        public var expMonth: Int?

        public var cardFingerprint: String?

        public var remainingLimit: Double?

        public var cardType: String?

        public var expYear: Int?

        public enum CodingKeys: String, CodingKey {
            case cardIssuer = "card_issuer"

            case nickname

            case codLimit = "cod_limit"

            case intentApp = "intent_app"

            case cardBrand = "card_brand"

            case timeout

            case cardToken = "card_token"

            case retryCount = "retry_count"

            case codLimitPerOrder = "cod_limit_per_order"

            case displayPriority = "display_priority"

            case aggregatorName = "aggregator_name"

            case cardId = "card_id"

            case name

            case fyndVpa = "fynd_vpa"

            case code

            case cardBrandImage = "card_brand_image"

            case cardReference = "card_reference"

            case cardIsin = "card_isin"

            case cardNumber = "card_number"

            case compliantWithTokenisationGuidelines = "compliant_with_tokenisation_guidelines"

            case cardName = "card_name"

            case displayName = "display_name"

            case intentAppErrorDictList = "intent_app_error_dict_list"

            case merchantCode = "merchant_code"

            case logoUrl = "logo_url"

            case intentAppErrorList = "intent_app_error_list"

            case expired

            case intentFlow = "intent_flow"

            case expMonth = "exp_month"

            case cardFingerprint = "card_fingerprint"

            case remainingLimit = "remaining_limit"

            case cardType = "card_type"

            case expYear = "exp_year"
        }

        public init(aggregatorName: String, cardBrand: String? = nil, cardBrandImage: String? = nil, cardFingerprint: String? = nil, cardId: String? = nil, cardIsin: String? = nil, cardIssuer: String? = nil, cardName: String? = nil, cardNumber: String? = nil, cardReference: String? = nil, cardToken: String? = nil, cardType: String? = nil, code: String? = nil, codLimit: Double? = nil, codLimitPerOrder: Double? = nil, compliantWithTokenisationGuidelines: Bool? = nil, displayName: String? = nil, displayPriority: Int? = nil, expired: Bool? = nil, expMonth: Int? = nil, expYear: Int? = nil, fyndVpa: String? = nil, intentApp: [IntentApp]? = nil, intentAppErrorDictList: [IntentAppErrorList]? = nil, intentAppErrorList: [String]? = nil, intentFlow: Bool? = nil, logoUrl: PaymentModeLogo? = nil, merchantCode: String? = nil, name: String? = nil, nickname: String? = nil, remainingLimit: Double? = nil, retryCount: Int? = nil, timeout: Int? = nil) {
            self.cardIssuer = cardIssuer

            self.nickname = nickname

            self.codLimit = codLimit

            self.intentApp = intentApp

            self.cardBrand = cardBrand

            self.timeout = timeout

            self.cardToken = cardToken

            self.retryCount = retryCount

            self.codLimitPerOrder = codLimitPerOrder

            self.displayPriority = displayPriority

            self.aggregatorName = aggregatorName

            self.cardId = cardId

            self.name = name

            self.fyndVpa = fyndVpa

            self.code = code

            self.cardBrandImage = cardBrandImage

            self.cardReference = cardReference

            self.cardIsin = cardIsin

            self.cardNumber = cardNumber

            self.compliantWithTokenisationGuidelines = compliantWithTokenisationGuidelines

            self.cardName = cardName

            self.displayName = displayName

            self.intentAppErrorDictList = intentAppErrorDictList

            self.merchantCode = merchantCode

            self.logoUrl = logoUrl

            self.intentAppErrorList = intentAppErrorList

            self.expired = expired

            self.intentFlow = intentFlow

            self.expMonth = expMonth

            self.cardFingerprint = cardFingerprint

            self.remainingLimit = remainingLimit

            self.cardType = cardType

            self.expYear = expYear
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                codLimit = try container.decode(Double.self, forKey: .codLimit)

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
                cardBrand = try container.decode(String.self, forKey: .cardBrand)

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
                cardToken = try container.decode(String.self, forKey: .cardToken)

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
                codLimitPerOrder = try container.decode(Double.self, forKey: .codLimitPerOrder)

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

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                cardId = try container.decode(String.self, forKey: .cardId)

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
                fyndVpa = try container.decode(String.self, forKey: .fyndVpa)

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
                cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)

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
                cardIsin = try container.decode(String.self, forKey: .cardIsin)

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
                compliantWithTokenisationGuidelines = try container.decode(Bool.self, forKey: .compliantWithTokenisationGuidelines)

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
                displayName = try container.decode(String.self, forKey: .displayName)

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
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

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
                intentAppErrorList = try container.decode([String].self, forKey: .intentAppErrorList)

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
                intentFlow = try container.decode(Bool.self, forKey: .intentFlow)

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
                cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                remainingLimit = try container.decode(Double.self, forKey: .remainingLimit)

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
                expYear = try container.decode(Int.self, forKey: .expYear)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(codLimit, forKey: .codLimit)

            try? container.encode(intentApp, forKey: .intentApp)

            try? container.encode(cardBrand, forKey: .cardBrand)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(retryCount, forKey: .retryCount)

            try? container.encode(codLimitPerOrder, forKey: .codLimitPerOrder)

            try? container.encode(displayPriority, forKey: .displayPriority)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encode(name, forKey: .name)

            try? container.encode(fyndVpa, forKey: .fyndVpa)

            try? container.encode(code, forKey: .code)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(cardNumber, forKey: .cardNumber)

            try? container.encode(compliantWithTokenisationGuidelines, forKey: .compliantWithTokenisationGuidelines)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(displayName, forKey: .displayName)

            try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)

            try? container.encode(merchantCode, forKey: .merchantCode)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(intentFlow, forKey: .intentFlow)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(remainingLimit, forKey: .remainingLimit)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(expYear, forKey: .expYear)
        }
    }
}
