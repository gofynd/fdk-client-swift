import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentModeList
         Used By: Payment
     */

    class PaymentModeList: Codable {
        public var retryCount: Int?

        public var expired: Bool?

        public var cardType: String?

        public var cardId: String?

        public var merchantCode: String?

        public var code: String?

        public var intentAppErrorDictList: [IntentAppErrorList]?

        public var cardIsin: String?

        public var cardIssuer: String?

        public var intentAppErrorList: [String]?

        public var cardToken: String?

        public var logoUrl: PaymentModeLogo?

        public var fyndVpa: String?

        public var displayName: String?

        public var intentFlow: Bool?

        public var cardFingerprint: String?

        public var cardBrandImage: String?

        public var cardReference: String?

        public var nickname: String?

        public var name: String?

        public var intentApp: [IntentApp]?

        public var displayPriority: Int?

        public var cardNumber: String?

        public var aggregatorName: String

        public var cardName: String?

        public var expYear: Int?

        public var expMonth: Int?

        public var timeout: Int?

        public var cardBrand: String?

        public enum CodingKeys: String, CodingKey {
            case retryCount = "retry_count"

            case expired

            case cardType = "card_type"

            case cardId = "card_id"

            case merchantCode = "merchant_code"

            case code

            case intentAppErrorDictList = "intent_app_error_dict_list"

            case cardIsin = "card_isin"

            case cardIssuer = "card_issuer"

            case intentAppErrorList = "intent_app_error_list"

            case cardToken = "card_token"

            case logoUrl = "logo_url"

            case fyndVpa = "fynd_vpa"

            case displayName = "display_name"

            case intentFlow = "intent_flow"

            case cardFingerprint = "card_fingerprint"

            case cardBrandImage = "card_brand_image"

            case cardReference = "card_reference"

            case nickname

            case name

            case intentApp = "intent_app"

            case displayPriority = "display_priority"

            case cardNumber = "card_number"

            case aggregatorName = "aggregator_name"

            case cardName = "card_name"

            case expYear = "exp_year"

            case expMonth = "exp_month"

            case timeout

            case cardBrand = "card_brand"
        }

        public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, fyndVpa: String?, intentApp: [IntentApp]?, intentAppErrorDictList: [IntentAppErrorList]?, intentAppErrorList: [String]?, intentFlow: Bool?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?, retryCount: Int?, timeout: Int?) {
            self.retryCount = retryCount

            self.expired = expired

            self.cardType = cardType

            self.cardId = cardId

            self.merchantCode = merchantCode

            self.code = code

            self.intentAppErrorDictList = intentAppErrorDictList

            self.cardIsin = cardIsin

            self.cardIssuer = cardIssuer

            self.intentAppErrorList = intentAppErrorList

            self.cardToken = cardToken

            self.logoUrl = logoUrl

            self.fyndVpa = fyndVpa

            self.displayName = displayName

            self.intentFlow = intentFlow

            self.cardFingerprint = cardFingerprint

            self.cardBrandImage = cardBrandImage

            self.cardReference = cardReference

            self.nickname = nickname

            self.name = name

            self.intentApp = intentApp

            self.displayPriority = displayPriority

            self.cardNumber = cardNumber

            self.aggregatorName = aggregatorName

            self.cardName = cardName

            self.expYear = expYear

            self.expMonth = expMonth

            self.timeout = timeout

            self.cardBrand = cardBrand
        }

        public func duplicate() -> PaymentModeList {
            let dict = self.dictionary!
            let copy = PaymentModeList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                retryCount = try container.decode(Int.self, forKey: .retryCount)

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
                cardType = try container.decode(String.self, forKey: .cardType)

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
                intentAppErrorDictList = try container.decode([IntentAppErrorList].self, forKey: .intentAppErrorDictList)

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
                cardIssuer = try container.decode(String.self, forKey: .cardIssuer)

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
                cardToken = try container.decode(String.self, forKey: .cardToken)

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
                fyndVpa = try container.decode(String.self, forKey: .fyndVpa)

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
                intentFlow = try container.decode(Bool.self, forKey: .intentFlow)

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
                nickname = try container.decode(String.self, forKey: .nickname)

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
                intentApp = try container.decode([IntentApp].self, forKey: .intentApp)

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
                cardNumber = try container.decode(String.self, forKey: .cardNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                cardName = try container.decode(String.self, forKey: .cardName)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(retryCount, forKey: .retryCount)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encode(merchantCode, forKey: .merchantCode)

            try? container.encode(code, forKey: .code)

            try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encode(fyndVpa, forKey: .fyndVpa)

            try? container.encode(displayName, forKey: .displayName)

            try? container.encode(intentFlow, forKey: .intentFlow)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(name, forKey: .name)

            try? container.encode(intentApp, forKey: .intentApp)

            try? container.encode(displayPriority, forKey: .displayPriority)

            try? container.encode(cardNumber, forKey: .cardNumber)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(cardBrand, forKey: .cardBrand)
        }
    }
}
