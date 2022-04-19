import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentModeList
         Used By: Payment
     */

    class PaymentModeList: Codable {
        public var cardReference: String?

        public var cardIsin: String?

        public var logoUrl: PaymentModeLogo?

        public var expYear: Int?

        public var cardName: String?

        public var timeout: Int?

        public var retryCount: Int?

        public var displayName: String?

        public var cardBrandImage: String?

        public var cardToken: String?

        public var intentApp: [IntentApp]?

        public var cardFingerprint: String?

        public var aggregatorName: String

        public var nickname: String?

        public var intentFlow: Bool?

        public var merchantCode: String?

        public var cardType: String?

        public var code: String?

        public var intentAppErrorList: [String]?

        public var displayPriority: Int?

        public var cardBrand: String?

        public var intentAppErrorDictList: [IntentAppErrorList]?

        public var cardIssuer: String?

        public var cardId: String?

        public var expMonth: Int?

        public var name: String?

        public var fyndVpa: String?

        public var expired: Bool?

        public var cardNumber: String?

        public enum CodingKeys: String, CodingKey {
            case cardReference = "card_reference"

            case cardIsin = "card_isin"

            case logoUrl = "logo_url"

            case expYear = "exp_year"

            case cardName = "card_name"

            case timeout

            case retryCount = "retry_count"

            case displayName = "display_name"

            case cardBrandImage = "card_brand_image"

            case cardToken = "card_token"

            case intentApp = "intent_app"

            case cardFingerprint = "card_fingerprint"

            case aggregatorName = "aggregator_name"

            case nickname

            case intentFlow = "intent_flow"

            case merchantCode = "merchant_code"

            case cardType = "card_type"

            case code

            case intentAppErrorList = "intent_app_error_list"

            case displayPriority = "display_priority"

            case cardBrand = "card_brand"

            case intentAppErrorDictList = "intent_app_error_dict_list"

            case cardIssuer = "card_issuer"

            case cardId = "card_id"

            case expMonth = "exp_month"

            case name

            case fyndVpa = "fynd_vpa"

            case expired

            case cardNumber = "card_number"
        }

        public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, fyndVpa: String?, intentApp: [IntentApp]?, intentAppErrorDictList: [IntentAppErrorList]?, intentAppErrorList: [String]?, intentFlow: Bool?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?, retryCount: Int?, timeout: Int?) {
            self.cardReference = cardReference

            self.cardIsin = cardIsin

            self.logoUrl = logoUrl

            self.expYear = expYear

            self.cardName = cardName

            self.timeout = timeout

            self.retryCount = retryCount

            self.displayName = displayName

            self.cardBrandImage = cardBrandImage

            self.cardToken = cardToken

            self.intentApp = intentApp

            self.cardFingerprint = cardFingerprint

            self.aggregatorName = aggregatorName

            self.nickname = nickname

            self.intentFlow = intentFlow

            self.merchantCode = merchantCode

            self.cardType = cardType

            self.code = code

            self.intentAppErrorList = intentAppErrorList

            self.displayPriority = displayPriority

            self.cardBrand = cardBrand

            self.intentAppErrorDictList = intentAppErrorDictList

            self.cardIssuer = cardIssuer

            self.cardId = cardId

            self.expMonth = expMonth

            self.name = name

            self.fyndVpa = fyndVpa

            self.expired = expired

            self.cardNumber = cardNumber
        }

        public func duplicate() -> PaymentModeList {
            let dict = self.dictionary!
            let copy = PaymentModeList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)

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
                cardName = try container.decode(String.self, forKey: .cardName)

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
                retryCount = try container.decode(Int.self, forKey: .retryCount)

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
                cardToken = try container.decode(String.self, forKey: .cardToken)

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
                cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            do {
                nickname = try container.decode(String.self, forKey: .nickname)

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
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

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
                code = try container.decode(String.self, forKey: .code)

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
                intentAppErrorDictList = try container.decode([IntentAppErrorList].self, forKey: .intentAppErrorDictList)

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
                cardId = try container.decode(String.self, forKey: .cardId)

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
                expired = try container.decode(Bool.self, forKey: .expired)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(retryCount, forKey: .retryCount)

            try? container.encode(displayName, forKey: .displayName)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(intentApp, forKey: .intentApp)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(intentFlow, forKey: .intentFlow)

            try? container.encode(merchantCode, forKey: .merchantCode)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(code, forKey: .code)

            try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)

            try? container.encode(displayPriority, forKey: .displayPriority)

            try? container.encode(cardBrand, forKey: .cardBrand)

            try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(name, forKey: .name)

            try? container.encode(fyndVpa, forKey: .fyndVpa)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(cardNumber, forKey: .cardNumber)
        }
    }
}
