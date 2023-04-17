

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentModeList
         Used By: Payment
     */
    class PaymentModeList: Codable {
        public var compliantWithTokenisationGuidelines: Bool?

        public var displayName: String?

        public var cardBrandImage: String?

        public var merchantCode: String?

        public var code: String?

        public var cardName: String?

        public var cardId: String?

        public var cardToken: String?

        public var cardType: String?

        public var intentAppErrorList: [String]?

        public var cardFingerprint: String?

        public var retryCount: Int?

        public var intentAppErrorDictList: [IntentAppErrorList]?

        public var intentApp: [IntentApp]?

        public var timeout: Int?

        public var expMonth: Int?

        public var remainingLimit: Double?

        public var fyndVpa: String?

        public var aggregatorName: String

        public var intentFlow: Bool?

        public var name: String?

        public var cardNumber: String?

        public var expired: Bool?

        public var cardIssuer: String?

        public var expYear: Int?

        public var logoUrl: PaymentModeLogo?

        public var cardIsin: String?

        public var displayPriority: Int?

        public var codLimitPerOrder: Double?

        public var cardReference: String?

        public var codLimit: Double?

        public var nickname: String?

        public var cardBrand: String?

        public enum CodingKeys: String, CodingKey {
            case compliantWithTokenisationGuidelines = "compliant_with_tokenisation_guidelines"

            case displayName = "display_name"

            case cardBrandImage = "card_brand_image"

            case merchantCode = "merchant_code"

            case code

            case cardName = "card_name"

            case cardId = "card_id"

            case cardToken = "card_token"

            case cardType = "card_type"

            case intentAppErrorList = "intent_app_error_list"

            case cardFingerprint = "card_fingerprint"

            case retryCount = "retry_count"

            case intentAppErrorDictList = "intent_app_error_dict_list"

            case intentApp = "intent_app"

            case timeout

            case expMonth = "exp_month"

            case remainingLimit = "remaining_limit"

            case fyndVpa = "fynd_vpa"

            case aggregatorName = "aggregator_name"

            case intentFlow = "intent_flow"

            case name

            case cardNumber = "card_number"

            case expired

            case cardIssuer = "card_issuer"

            case expYear = "exp_year"

            case logoUrl = "logo_url"

            case cardIsin = "card_isin"

            case displayPriority = "display_priority"

            case codLimitPerOrder = "cod_limit_per_order"

            case cardReference = "card_reference"

            case codLimit = "cod_limit"

            case nickname

            case cardBrand = "card_brand"
        }

        public init(aggregatorName: String, cardBrand: String? = nil, cardBrandImage: String? = nil, cardFingerprint: String? = nil, cardId: String? = nil, cardIsin: String? = nil, cardIssuer: String? = nil, cardName: String? = nil, cardNumber: String? = nil, cardReference: String? = nil, cardToken: String? = nil, cardType: String? = nil, code: String? = nil, codLimit: Double? = nil, codLimitPerOrder: Double? = nil, compliantWithTokenisationGuidelines: Bool? = nil, displayName: String? = nil, displayPriority: Int? = nil, expired: Bool? = nil, expMonth: Int? = nil, expYear: Int? = nil, fyndVpa: String? = nil, intentApp: [IntentApp]? = nil, intentAppErrorDictList: [IntentAppErrorList]? = nil, intentAppErrorList: [String]? = nil, intentFlow: Bool? = nil, logoUrl: PaymentModeLogo? = nil, merchantCode: String? = nil, name: String? = nil, nickname: String? = nil, remainingLimit: Double? = nil, retryCount: Int? = nil, timeout: Int? = nil) {
            self.compliantWithTokenisationGuidelines = compliantWithTokenisationGuidelines

            self.displayName = displayName

            self.cardBrandImage = cardBrandImage

            self.merchantCode = merchantCode

            self.code = code

            self.cardName = cardName

            self.cardId = cardId

            self.cardToken = cardToken

            self.cardType = cardType

            self.intentAppErrorList = intentAppErrorList

            self.cardFingerprint = cardFingerprint

            self.retryCount = retryCount

            self.intentAppErrorDictList = intentAppErrorDictList

            self.intentApp = intentApp

            self.timeout = timeout

            self.expMonth = expMonth

            self.remainingLimit = remainingLimit

            self.fyndVpa = fyndVpa

            self.aggregatorName = aggregatorName

            self.intentFlow = intentFlow

            self.name = name

            self.cardNumber = cardNumber

            self.expired = expired

            self.cardIssuer = cardIssuer

            self.expYear = expYear

            self.logoUrl = logoUrl

            self.cardIsin = cardIsin

            self.displayPriority = displayPriority

            self.codLimitPerOrder = codLimitPerOrder

            self.cardReference = cardReference

            self.codLimit = codLimit

            self.nickname = nickname

            self.cardBrand = cardBrand
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                compliantWithTokenisationGuidelines = try container.decode(Bool.self, forKey: .compliantWithTokenisationGuidelines)

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
                cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)

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
                cardId = try container.decode(String.self, forKey: .cardId)

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
                cardType = try container.decode(String.self, forKey: .cardType)

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
                cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)

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
                intentAppErrorDictList = try container.decode([IntentAppErrorList].self, forKey: .intentAppErrorDictList)

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
                timeout = try container.decode(Int.self, forKey: .timeout)

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
                remainingLimit = try container.decode(Double.self, forKey: .remainingLimit)

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

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                intentFlow = try container.decode(Bool.self, forKey: .intentFlow)

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
                cardIssuer = try container.decode(String.self, forKey: .cardIssuer)

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
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)

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
                cardReference = try container.decode(String.self, forKey: .cardReference)

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
                nickname = try container.decode(String.self, forKey: .nickname)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(compliantWithTokenisationGuidelines, forKey: .compliantWithTokenisationGuidelines)

            try? container.encode(displayName, forKey: .displayName)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(merchantCode, forKey: .merchantCode)

            try? container.encode(code, forKey: .code)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(retryCount, forKey: .retryCount)

            try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)

            try? container.encode(intentApp, forKey: .intentApp)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(remainingLimit, forKey: .remainingLimit)

            try? container.encode(fyndVpa, forKey: .fyndVpa)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(intentFlow, forKey: .intentFlow)

            try? container.encode(name, forKey: .name)

            try? container.encode(cardNumber, forKey: .cardNumber)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(displayPriority, forKey: .displayPriority)

            try? container.encode(codLimitPerOrder, forKey: .codLimitPerOrder)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(codLimit, forKey: .codLimit)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(cardBrand, forKey: .cardBrand)
        }
    }
}
