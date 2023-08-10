

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentModeList
         Used By: Payment
     */
    class PaymentModeList: Codable {
        public var cardNumber: String?

        public var merchantCode: String?

        public var cardReference: String?

        public var cardIssuer: String?

        public var compliantWithTokenisationGuidelines: Bool?

        public var code: String?

        public var codLimit: Double?

        public var intentFlow: Bool?

        public var fyndVpa: String?

        public var intentAppErrorDictList: [IntentAppErrorList]?

        public var aggregatorName: String

        public var cardFingerprint: String?

        public var intentAppErrorList: [String]?

        public var intentApp: [IntentApp]?

        public var expired: Bool?

        public var retryCount: Int?

        public var expYear: Int?

        public var expMonth: Int?

        public var cardId: String?

        public var remainingLimit: Double?

        public var displayPriority: Int?

        public var cardBrand: String?

        public var codLimitPerOrder: Double?

        public var logoUrl: PaymentModeLogo?

        public var nickname: String?

        public var cardName: String?

        public var cardType: String?

        public var cardBrandImage: String?

        public var displayName: String?

        public var cardIsin: String?

        public var timeout: Int?

        public var cardToken: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case cardNumber = "card_number"

            case merchantCode = "merchant_code"

            case cardReference = "card_reference"

            case cardIssuer = "card_issuer"

            case compliantWithTokenisationGuidelines = "compliant_with_tokenisation_guidelines"

            case code

            case codLimit = "cod_limit"

            case intentFlow = "intent_flow"

            case fyndVpa = "fynd_vpa"

            case intentAppErrorDictList = "intent_app_error_dict_list"

            case aggregatorName = "aggregator_name"

            case cardFingerprint = "card_fingerprint"

            case intentAppErrorList = "intent_app_error_list"

            case intentApp = "intent_app"

            case expired

            case retryCount = "retry_count"

            case expYear = "exp_year"

            case expMonth = "exp_month"

            case cardId = "card_id"

            case remainingLimit = "remaining_limit"

            case displayPriority = "display_priority"

            case cardBrand = "card_brand"

            case codLimitPerOrder = "cod_limit_per_order"

            case logoUrl = "logo_url"

            case nickname

            case cardName = "card_name"

            case cardType = "card_type"

            case cardBrandImage = "card_brand_image"

            case displayName = "display_name"

            case cardIsin = "card_isin"

            case timeout

            case cardToken = "card_token"

            case name
        }

        public init(aggregatorName: String, cardBrand: String? = nil, cardBrandImage: String? = nil, cardFingerprint: String? = nil, cardId: String? = nil, cardIsin: String? = nil, cardIssuer: String? = nil, cardName: String? = nil, cardNumber: String? = nil, cardReference: String? = nil, cardToken: String? = nil, cardType: String? = nil, code: String? = nil, codLimit: Double? = nil, codLimitPerOrder: Double? = nil, compliantWithTokenisationGuidelines: Bool? = nil, displayName: String? = nil, displayPriority: Int? = nil, expired: Bool? = nil, expMonth: Int? = nil, expYear: Int? = nil, fyndVpa: String? = nil, intentApp: [IntentApp]? = nil, intentAppErrorDictList: [IntentAppErrorList]? = nil, intentAppErrorList: [String]? = nil, intentFlow: Bool? = nil, logoUrl: PaymentModeLogo? = nil, merchantCode: String? = nil, name: String? = nil, nickname: String? = nil, remainingLimit: Double? = nil, retryCount: Int? = nil, timeout: Int? = nil) {
            self.cardNumber = cardNumber

            self.merchantCode = merchantCode

            self.cardReference = cardReference

            self.cardIssuer = cardIssuer

            self.compliantWithTokenisationGuidelines = compliantWithTokenisationGuidelines

            self.code = code

            self.codLimit = codLimit

            self.intentFlow = intentFlow

            self.fyndVpa = fyndVpa

            self.intentAppErrorDictList = intentAppErrorDictList

            self.aggregatorName = aggregatorName

            self.cardFingerprint = cardFingerprint

            self.intentAppErrorList = intentAppErrorList

            self.intentApp = intentApp

            self.expired = expired

            self.retryCount = retryCount

            self.expYear = expYear

            self.expMonth = expMonth

            self.cardId = cardId

            self.remainingLimit = remainingLimit

            self.displayPriority = displayPriority

            self.cardBrand = cardBrand

            self.codLimitPerOrder = codLimitPerOrder

            self.logoUrl = logoUrl

            self.nickname = nickname

            self.cardName = cardName

            self.cardType = cardType

            self.cardBrandImage = cardBrandImage

            self.displayName = displayName

            self.cardIsin = cardIsin

            self.timeout = timeout

            self.cardToken = cardToken

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cardNumber = try container.decode(String.self, forKey: .cardNumber)

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
                cardReference = try container.decode(String.self, forKey: .cardReference)

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
                compliantWithTokenisationGuidelines = try container.decode(Bool.self, forKey: .compliantWithTokenisationGuidelines)

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
                codLimit = try container.decode(Double.self, forKey: .codLimit)

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
                fyndVpa = try container.decode(String.self, forKey: .fyndVpa)

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

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)

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
                intentApp = try container.decode([IntentApp].self, forKey: .intentApp)

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
                retryCount = try container.decode(Int.self, forKey: .retryCount)

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
                expMonth = try container.decode(Int.self, forKey: .expMonth)

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
                remainingLimit = try container.decode(Double.self, forKey: .remainingLimit)

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
                cardBrand = try container.decode(String.self, forKey: .cardBrand)

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
                logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)

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
                cardType = try container.decode(String.self, forKey: .cardType)

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
                cardIsin = try container.decode(String.self, forKey: .cardIsin)

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cardNumber, forKey: .cardNumber)

            try? container.encode(merchantCode, forKey: .merchantCode)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(compliantWithTokenisationGuidelines, forKey: .compliantWithTokenisationGuidelines)

            try? container.encode(code, forKey: .code)

            try? container.encode(codLimit, forKey: .codLimit)

            try? container.encode(intentFlow, forKey: .intentFlow)

            try? container.encode(fyndVpa, forKey: .fyndVpa)

            try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)

            try? container.encode(intentApp, forKey: .intentApp)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(retryCount, forKey: .retryCount)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encode(remainingLimit, forKey: .remainingLimit)

            try? container.encode(displayPriority, forKey: .displayPriority)

            try? container.encode(cardBrand, forKey: .cardBrand)

            try? container.encode(codLimitPerOrder, forKey: .codLimitPerOrder)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(displayName, forKey: .displayName)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(name, forKey: .name)
        }
    }
}
