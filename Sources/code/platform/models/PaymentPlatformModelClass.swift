import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentGatewayConfigResponse
         Used By: Payment
     */

    class PaymentGatewayConfigResponse: Codable {
        public var appId: String

        public var displayFields: [String]

        public var created: Bool

        public var success: Bool

        public var aggregators: [[String: Any]]?

        public var excludedFields: [String]

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case displayFields = "display_fields"

            case created

            case success

            case aggregators

            case excludedFields = "excluded_fields"
        }

        public init(aggregators: [[String: Any]]?, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            self.appId = appId

            self.displayFields = displayFields

            self.created = created

            self.success = success

            self.aggregators = aggregators

            self.excludedFields = excludedFields
        }

        public func duplicate() -> PaymentGatewayConfigResponse {
            let dict = self.dictionary!
            let copy = PaymentGatewayConfigResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            appId = try container.decode(String.self, forKey: .appId)

            displayFields = try container.decode([String].self, forKey: .displayFields)

            created = try container.decode(Bool.self, forKey: .created)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                aggregators = try container.decode([[String: Any]].self, forKey: .aggregators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            excludedFields = try container.decode([String].self, forKey: .excludedFields)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(displayFields, forKey: .displayFields)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(aggregators, forKey: .aggregators)

            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)
        }
    }

    /*
         Model: ErrorCodeDescription
         Used By: Payment
     */

    class ErrorCodeDescription: Codable {
        public var success: Bool

        public var description: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case success

            case description

            case code
        }

        public init(code: String, description: String, success: Bool) {
            self.success = success

            self.description = description

            self.code = code
        }

        public func duplicate() -> ErrorCodeDescription {
            let dict = self.dictionary!
            let copy = ErrorCodeDescription(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            description = try container.decode(String.self, forKey: .description)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: PaymentGatewayConfig
         Used By: Payment
     */

    class PaymentGatewayConfig: Codable {
        public var key: String

        public var configType: String

        public var secret: String

        public var merchantSalt: String

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case key

            case configType = "config_type"

            case secret

            case merchantSalt = "merchant_salt"

            case isActive = "is_active"
        }

        public init(configType: String, isActive: Bool?, key: String, merchantSalt: String, secret: String) {
            self.key = key

            self.configType = configType

            self.secret = secret

            self.merchantSalt = merchantSalt

            self.isActive = isActive
        }

        public func duplicate() -> PaymentGatewayConfig {
            let dict = self.dictionary!
            let copy = PaymentGatewayConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            configType = try container.decode(String.self, forKey: .configType)

            secret = try container.decode(String.self, forKey: .secret)

            merchantSalt = try container.decode(String.self, forKey: .merchantSalt)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)

            try? container.encode(isActive, forKey: .isActive)
        }
    }

    /*
         Model: PaymentGatewayConfigRequest
         Used By: Payment
     */

    class PaymentGatewayConfigRequest: Codable {
        public var appId: String

        public var aggregatorName: PaymentGatewayConfig?

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case aggregatorName = "aggregator_name"

            case isActive = "is_active"
        }

        public init(aggregatorName: PaymentGatewayConfig?, appId: String, isActive: Bool?) {
            self.appId = appId

            self.aggregatorName = aggregatorName

            self.isActive = isActive
        }

        public func duplicate() -> PaymentGatewayConfigRequest {
            let dict = self.dictionary!
            let copy = PaymentGatewayConfigRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            appId = try container.decode(String.self, forKey: .appId)

            do {
                aggregatorName = try container.decode(PaymentGatewayConfig.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(isActive, forKey: .isActive)
        }
    }

    /*
         Model: PaymentGatewayToBeReviewed
         Used By: Payment
     */

    class PaymentGatewayToBeReviewed: Codable {
        public var success: Bool

        public var aggregator: [String]

        public enum CodingKeys: String, CodingKey {
            case success

            case aggregator
        }

        public init(aggregator: [String], success: Bool) {
            self.success = success

            self.aggregator = aggregator
        }

        public func duplicate() -> PaymentGatewayToBeReviewed {
            let dict = self.dictionary!
            let copy = PaymentGatewayToBeReviewed(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            aggregator = try container.decode([String].self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }

    /*
         Model: ErrorCodeAndDescription
         Used By: Payment
     */

    class ErrorCodeAndDescription: Codable {
        public var description: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case description

            case code
        }

        public init(code: String, description: String) {
            self.description = description

            self.code = code
        }

        public func duplicate() -> ErrorCodeAndDescription {
            let dict = self.dictionary!
            let copy = ErrorCodeAndDescription(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            description = try container.decode(String.self, forKey: .description)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: HttpErrorCodeAndResponse
         Used By: Payment
     */

    class HttpErrorCodeAndResponse: Codable {
        public var success: Bool

        public var error: ErrorCodeAndDescription

        public enum CodingKeys: String, CodingKey {
            case success

            case error
        }

        public init(error: ErrorCodeAndDescription, success: Bool) {
            self.success = success

            self.error = error
        }

        public func duplicate() -> HttpErrorCodeAndResponse {
            let dict = self.dictionary!
            let copy = HttpErrorCodeAndResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            error = try container.decode(ErrorCodeAndDescription.self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }

    /*
         Model: PaymentModeLogo
         Used By: Payment
     */

    class PaymentModeLogo: Codable {
        public var large: String

        public var small: String

        public enum CodingKeys: String, CodingKey {
            case large

            case small
        }

        public init(large: String, small: String) {
            self.large = large

            self.small = small
        }

        public func duplicate() -> PaymentModeLogo {
            let dict = self.dictionary!
            let copy = PaymentModeLogo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            large = try container.decode(String.self, forKey: .large)

            small = try container.decode(String.self, forKey: .small)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(large, forKey: .large)

            try? container.encodeIfPresent(small, forKey: .small)
        }
    }

    /*
         Model: IntentApp
         Used By: Payment
     */

    class IntentApp: Codable {
        public var displayName: String?

        public var packageName: String?

        public var code: String?

        public var logos: PaymentModeLogo?

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case packageName = "package_name"

            case code

            case logos
        }

        public init(code: String?, displayName: String?, logos: PaymentModeLogo?, packageName: String?) {
            self.displayName = displayName

            self.packageName = packageName

            self.code = code

            self.logos = logos
        }

        public func duplicate() -> IntentApp {
            let dict = self.dictionary!
            let copy = IntentApp(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                packageName = try container.decode(String.self, forKey: .packageName)

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
                logos = try container.decode(PaymentModeLogo.self, forKey: .logos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(displayName, forKey: .displayName)

            try? container.encode(packageName, forKey: .packageName)

            try? container.encode(code, forKey: .code)

            try? container.encode(logos, forKey: .logos)
        }
    }

    /*
         Model: IntentAppErrorList
         Used By: Payment
     */

    class IntentAppErrorList: Codable {
        public var packageName: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case packageName = "package_name"

            case code
        }

        public init(code: String?, packageName: String?) {
            self.packageName = packageName

            self.code = code
        }

        public func duplicate() -> IntentAppErrorList {
            let dict = self.dictionary!
            let copy = IntentAppErrorList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                packageName = try container.decode(String.self, forKey: .packageName)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(packageName, forKey: .packageName)

            try? container.encode(code, forKey: .code)
        }
    }

    /*
         Model: PaymentModeList
         Used By: Payment
     */

    class PaymentModeList: Codable {
        public var cardIsin: String?

        public var retryCount: Int?

        public var expYear: Int?

        public var cardBrand: String?

        public var fyndVpa: String?

        public var nickname: String?

        public var cardIssuer: String?

        public var cardType: String?

        public var timeout: Int?

        public var aggregatorName: String

        public var cardReference: String?

        public var cardId: String?

        public var displayPriority: Int?

        public var logoUrl: PaymentModeLogo?

        public var cardToken: String?

        public var displayName: String?

        public var merchantCode: String?

        public var expired: Bool?

        public var intentApp: [IntentApp]?

        public var cardFingerprint: String?

        public var cardName: String?

        public var intentAppErrorDictList: [IntentAppErrorList]?

        public var cardBrandImage: String?

        public var cardNumber: String?

        public var expMonth: Int?

        public var code: String?

        public var name: String?

        public var intentFlow: Bool?

        public var intentAppErrorList: [String]?

        public enum CodingKeys: String, CodingKey {
            case cardIsin = "card_isin"

            case retryCount = "retry_count"

            case expYear = "exp_year"

            case cardBrand = "card_brand"

            case fyndVpa = "fynd_vpa"

            case nickname

            case cardIssuer = "card_issuer"

            case cardType = "card_type"

            case timeout

            case aggregatorName = "aggregator_name"

            case cardReference = "card_reference"

            case cardId = "card_id"

            case displayPriority = "display_priority"

            case logoUrl = "logo_url"

            case cardToken = "card_token"

            case displayName = "display_name"

            case merchantCode = "merchant_code"

            case expired

            case intentApp = "intent_app"

            case cardFingerprint = "card_fingerprint"

            case cardName = "card_name"

            case intentAppErrorDictList = "intent_app_error_dict_list"

            case cardBrandImage = "card_brand_image"

            case cardNumber = "card_number"

            case expMonth = "exp_month"

            case code

            case name

            case intentFlow = "intent_flow"

            case intentAppErrorList = "intent_app_error_list"
        }

        public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, fyndVpa: String?, intentApp: [IntentApp]?, intentAppErrorDictList: [IntentAppErrorList]?, intentAppErrorList: [String]?, intentFlow: Bool?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?, retryCount: Int?, timeout: Int?) {
            self.cardIsin = cardIsin

            self.retryCount = retryCount

            self.expYear = expYear

            self.cardBrand = cardBrand

            self.fyndVpa = fyndVpa

            self.nickname = nickname

            self.cardIssuer = cardIssuer

            self.cardType = cardType

            self.timeout = timeout

            self.aggregatorName = aggregatorName

            self.cardReference = cardReference

            self.cardId = cardId

            self.displayPriority = displayPriority

            self.logoUrl = logoUrl

            self.cardToken = cardToken

            self.displayName = displayName

            self.merchantCode = merchantCode

            self.expired = expired

            self.intentApp = intentApp

            self.cardFingerprint = cardFingerprint

            self.cardName = cardName

            self.intentAppErrorDictList = intentAppErrorDictList

            self.cardBrandImage = cardBrandImage

            self.cardNumber = cardNumber

            self.expMonth = expMonth

            self.code = code

            self.name = name

            self.intentFlow = intentFlow

            self.intentAppErrorList = intentAppErrorList
        }

        public func duplicate() -> PaymentModeList {
            let dict = self.dictionary!
            let copy = PaymentModeList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cardIsin = try container.decode(String.self, forKey: .cardIsin)

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
                cardBrand = try container.decode(String.self, forKey: .cardBrand)

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
                cardType = try container.decode(String.self, forKey: .cardType)

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

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

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
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)

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
                cardToken = try container.decode(String.self, forKey: .cardToken)

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
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

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

            do {
                cardName = try container.decode(String.self, forKey: .cardName)

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
                cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)

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
                expMonth = try container.decode(Int.self, forKey: .expMonth)

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
                name = try container.decode(String.self, forKey: .name)

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
                intentAppErrorList = try container.decode([String].self, forKey: .intentAppErrorList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(cardIsin, forKey: .cardIsin)

            try? container.encode(retryCount, forKey: .retryCount)

            try? container.encode(expYear, forKey: .expYear)

            try? container.encode(cardBrand, forKey: .cardBrand)

            try? container.encode(fyndVpa, forKey: .fyndVpa)

            try? container.encode(nickname, forKey: .nickname)

            try? container.encode(cardIssuer, forKey: .cardIssuer)

            try? container.encode(cardType, forKey: .cardType)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(cardReference, forKey: .cardReference)

            try? container.encode(cardId, forKey: .cardId)

            try? container.encode(displayPriority, forKey: .displayPriority)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encode(cardToken, forKey: .cardToken)

            try? container.encode(displayName, forKey: .displayName)

            try? container.encode(merchantCode, forKey: .merchantCode)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(intentApp, forKey: .intentApp)

            try? container.encode(cardFingerprint, forKey: .cardFingerprint)

            try? container.encode(cardName, forKey: .cardName)

            try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)

            try? container.encode(cardBrandImage, forKey: .cardBrandImage)

            try? container.encode(cardNumber, forKey: .cardNumber)

            try? container.encode(expMonth, forKey: .expMonth)

            try? container.encode(code, forKey: .code)

            try? container.encode(name, forKey: .name)

            try? container.encode(intentFlow, forKey: .intentFlow)

            try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)
        }
    }

    /*
         Model: RootPaymentMode
         Used By: Payment
     */

    class RootPaymentMode: Codable {
        public var logoUrl: PaymentModeLogo?

        public var name: String

        public var displayName: String

        public var aggregatorName: String?

        public var list: [PaymentModeList]?

        public var addCardEnabled: Bool?

        public var logo: String?

        public var displayPriority: Int

        public var anonymousEnable: Bool?

        public enum CodingKeys: String, CodingKey {
            case logoUrl = "logo_url"

            case name

            case displayName = "display_name"

            case aggregatorName = "aggregator_name"

            case list

            case addCardEnabled = "add_card_enabled"

            case logo

            case displayPriority = "display_priority"

            case anonymousEnable = "anonymous_enable"
        }

        public init(addCardEnabled: Bool?, aggregatorName: String?, anonymousEnable: Bool?, displayName: String, displayPriority: Int, list: [PaymentModeList]?, logo: String?, logoUrl: PaymentModeLogo?, name: String) {
            self.logoUrl = logoUrl

            self.name = name

            self.displayName = displayName

            self.aggregatorName = aggregatorName

            self.list = list

            self.addCardEnabled = addCardEnabled

            self.logo = logo

            self.displayPriority = displayPriority

            self.anonymousEnable = anonymousEnable
        }

        public func duplicate() -> RootPaymentMode {
            let dict = self.dictionary!
            let copy = RootPaymentMode(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)
        }
    }

    /*
         Model: PaymentOptions
         Used By: Payment
     */

    class PaymentOptions: Codable {
        public var paymentOption: [RootPaymentMode]

        public enum CodingKeys: String, CodingKey {
            case paymentOption = "payment_option"
        }

        public init(paymentOption: [RootPaymentMode]) {
            self.paymentOption = paymentOption
        }

        public func duplicate() -> PaymentOptions {
            let dict = self.dictionary!
            let copy = PaymentOptions(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentOption = try container.decode([RootPaymentMode].self, forKey: .paymentOption)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentOption, forKey: .paymentOption)
        }
    }

    /*
         Model: PaymentOptionsResponse
         Used By: Payment
     */

    class PaymentOptionsResponse: Codable {
        public var success: Bool

        public var paymentOptions: PaymentOptions

        public enum CodingKeys: String, CodingKey {
            case success

            case paymentOptions = "payment_options"
        }

        public init(paymentOptions: PaymentOptions, success: Bool) {
            self.success = success

            self.paymentOptions = paymentOptions
        }

        public func duplicate() -> PaymentOptionsResponse {
            let dict = self.dictionary!
            let copy = PaymentOptionsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            paymentOptions = try container.decode(PaymentOptions.self, forKey: .paymentOptions)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
        }
    }

    /*
         Model: PayoutsResponse
         Used By: Payment
     */

    class PayoutsResponse: Codable {
        public var moreAttributes: [String: Any]

        public var payoutsAggregators: [[String: Any]]

        public var transferType: String

        public var isDefault: Bool

        public var uniqueTransferNo: [String: Any]

        public var isActive: Bool

        public var customers: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case moreAttributes = "more_attributes"

            case payoutsAggregators = "payouts_aggregators"

            case transferType = "transfer_type"

            case isDefault = "is_default"

            case uniqueTransferNo = "unique_transfer_no"

            case isActive = "is_active"

            case customers
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            self.moreAttributes = moreAttributes

            self.payoutsAggregators = payoutsAggregators

            self.transferType = transferType

            self.isDefault = isDefault

            self.uniqueTransferNo = uniqueTransferNo

            self.isActive = isActive

            self.customers = customers
        }

        public func duplicate() -> PayoutsResponse {
            let dict = self.dictionary!
            let copy = PayoutsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)

            payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)

            transferType = try container.decode(String.self, forKey: .transferType)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            customers = try container.decode([String: Any].self, forKey: .customers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)

            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(customers, forKey: .customers)
        }
    }

    /*
         Model: PayoutBankDetails
         Used By: Payment
     */

    class PayoutBankDetails: Codable {
        public var pincode: Int?

        public var accountType: String

        public var accountNo: String?

        public var accountHolder: String?

        public var state: String?

        public var country: String?

        public var city: String?

        public var branchName: String?

        public var ifscCode: String

        public var bankName: String?

        public enum CodingKeys: String, CodingKey {
            case pincode

            case accountType = "account_type"

            case accountNo = "account_no"

            case accountHolder = "account_holder"

            case state

            case country

            case city

            case branchName = "branch_name"

            case ifscCode = "ifsc_code"

            case bankName = "bank_name"
        }

        public init(accountHolder: String?, accountNo: String?, accountType: String, bankName: String?, branchName: String?, city: String?, country: String?, ifscCode: String, pincode: Int?, state: String?) {
            self.pincode = pincode

            self.accountType = accountType

            self.accountNo = accountNo

            self.accountHolder = accountHolder

            self.state = state

            self.country = country

            self.city = city

            self.branchName = branchName

            self.ifscCode = ifscCode

            self.bankName = bankName
        }

        public func duplicate() -> PayoutBankDetails {
            let dict = self.dictionary!
            let copy = PayoutBankDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountType = try container.decode(String.self, forKey: .accountType)

            do {
                accountNo = try container.decode(String.self, forKey: .accountNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                accountHolder = try container.decode(String.self, forKey: .accountHolder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                bankName = try container.decode(String.self, forKey: .bankName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(accountType, forKey: .accountType)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
        }
    }

    /*
         Model: PayoutRequest
         Used By: Payment
     */

    class PayoutRequest: Codable {
        public var aggregator: String

        public var transferType: String

        public var isActive: Bool

        public var users: [String: Any]

        public var bankDetails: PayoutBankDetails

        public var uniqueExternalId: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case transferType = "transfer_type"

            case isActive = "is_active"

            case users

            case bankDetails = "bank_details"

            case uniqueExternalId = "unique_external_id"
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            self.aggregator = aggregator

            self.transferType = transferType

            self.isActive = isActive

            self.users = users

            self.bankDetails = bankDetails

            self.uniqueExternalId = uniqueExternalId
        }

        public func duplicate() -> PayoutRequest {
            let dict = self.dictionary!
            let copy = PayoutRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            transferType = try container.decode(String.self, forKey: .transferType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            users = try container.decode([String: Any].self, forKey: .users)

            bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
        }
    }

    /*
         Model: PayoutResponse
         Used By: Payment
     */

    class PayoutResponse: Codable {
        public var users: [String: Any]

        public var aggregator: String

        public var transferType: String

        public var uniqueTransferNo: String

        public var payouts: [String: Any]

        public var isActive: Bool

        public var paymentStatus: String

        public var created: Bool

        public var success: Bool

        public var bankDetails: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case users

            case aggregator

            case transferType = "transfer_type"

            case uniqueTransferNo = "unique_transfer_no"

            case payouts

            case isActive = "is_active"

            case paymentStatus = "payment_status"

            case created

            case success

            case bankDetails = "bank_details"
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            self.users = users

            self.aggregator = aggregator

            self.transferType = transferType

            self.uniqueTransferNo = uniqueTransferNo

            self.payouts = payouts

            self.isActive = isActive

            self.paymentStatus = paymentStatus

            self.created = created

            self.success = success

            self.bankDetails = bankDetails
        }

        public func duplicate() -> PayoutResponse {
            let dict = self.dictionary!
            let copy = PayoutResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            users = try container.decode([String: Any].self, forKey: .users)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            transferType = try container.decode(String.self, forKey: .transferType)

            uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)

            payouts = try container.decode([String: Any].self, forKey: .payouts)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            paymentStatus = try container.decode(String.self, forKey: .paymentStatus)

            created = try container.decode(Bool.self, forKey: .created)

            success = try container.decode(Bool.self, forKey: .success)

            bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(users, forKey: .users)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(transferType, forKey: .transferType)

            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)

            try? container.encodeIfPresent(payouts, forKey: .payouts)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
        }
    }

    /*
         Model: UpdatePayoutResponse
         Used By: Payment
     */

    class UpdatePayoutResponse: Codable {
        public var success: Bool

        public var isDefault: Bool

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case success

            case isDefault = "is_default"

            case isActive = "is_active"
        }

        public init(isActive: Bool, isDefault: Bool, success: Bool) {
            self.success = success

            self.isDefault = isDefault

            self.isActive = isActive
        }

        public func duplicate() -> UpdatePayoutResponse {
            let dict = self.dictionary!
            let copy = UpdatePayoutResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }

    /*
         Model: UpdatePayoutRequest
         Used By: Payment
     */

    class UpdatePayoutRequest: Codable {
        public var uniqueExternalId: String

        public var isActive: Bool

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case uniqueExternalId = "unique_external_id"

            case isActive = "is_active"

            case isDefault = "is_default"
        }

        public init(isActive: Bool, isDefault: Bool, uniqueExternalId: String) {
            self.uniqueExternalId = uniqueExternalId

            self.isActive = isActive

            self.isDefault = isDefault
        }

        public func duplicate() -> UpdatePayoutRequest {
            let dict = self.dictionary!
            let copy = UpdatePayoutRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }

    /*
         Model: DeletePayoutResponse
         Used By: Payment
     */

    class DeletePayoutResponse: Codable {
        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case success
        }

        public init(success: Bool) {
            self.success = success
        }

        public func duplicate() -> DeletePayoutResponse {
            let dict = self.dictionary!
            let copy = DeletePayoutResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }

    /*
         Model: SubscriptionPaymentMethodResponse
         Used By: Payment
     */

    class SubscriptionPaymentMethodResponse: Codable {
        public var success: Bool

        public var data: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: [[String: Any]], success: Bool) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> SubscriptionPaymentMethodResponse {
            let dict = self.dictionary!
            let copy = SubscriptionPaymentMethodResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode([[String: Any]].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: DeleteSubscriptionPaymentMethodResponse
         Used By: Payment
     */

    class DeleteSubscriptionPaymentMethodResponse: Codable {
        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case success
        }

        public init(success: Bool) {
            self.success = success
        }

        public func duplicate() -> DeleteSubscriptionPaymentMethodResponse {
            let dict = self.dictionary!
            let copy = DeleteSubscriptionPaymentMethodResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }

    /*
         Model: SubscriptionConfigResponse
         Used By: Payment
     */

    class SubscriptionConfigResponse: Codable {
        public var success: Bool

        public var aggregator: String

        public var config: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case success

            case aggregator

            case config
        }

        public init(aggregator: String, config: [String: Any], success: Bool) {
            self.success = success

            self.aggregator = aggregator

            self.config = config
        }

        public func duplicate() -> SubscriptionConfigResponse {
            let dict = self.dictionary!
            let copy = SubscriptionConfigResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            config = try container.decode([String: Any].self, forKey: .config)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(config, forKey: .config)
        }
    }

    /*
         Model: SaveSubscriptionSetupIntentRequest
         Used By: Payment
     */

    class SaveSubscriptionSetupIntentRequest: Codable {
        public var uniqueExternalId: String

        public enum CodingKeys: String, CodingKey {
            case uniqueExternalId = "unique_external_id"
        }

        public init(uniqueExternalId: String) {
            self.uniqueExternalId = uniqueExternalId
        }

        public func duplicate() -> SaveSubscriptionSetupIntentRequest {
            let dict = self.dictionary!
            let copy = SaveSubscriptionSetupIntentRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
        }
    }

    /*
         Model: SaveSubscriptionSetupIntentResponse
         Used By: Payment
     */

    class SaveSubscriptionSetupIntentResponse: Codable {
        public var success: Bool

        public var data: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case success

            case data
        }

        public init(data: [String: Any], success: Bool) {
            self.success = success

            self.data = data
        }

        public func duplicate() -> SaveSubscriptionSetupIntentResponse {
            let dict = self.dictionary!
            let copy = SaveSubscriptionSetupIntentResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            data = try container.decode([String: Any].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }

    /*
         Model: BeneficiaryModeDetails
         Used By: Payment
     */

    class BeneficiaryModeDetails: Codable {
        public var email: String

        public var address: String?

        public var accountNo: String

        public var wallet: String?

        public var accountHolder: String

        public var comment: String?

        public var mobile: String

        public var branchName: String

        public var bankName: String

        public var vpa: String?

        public var ifscCode: String

        public enum CodingKeys: String, CodingKey {
            case email

            case address

            case accountNo = "account_no"

            case wallet

            case accountHolder = "account_holder"

            case comment

            case mobile

            case branchName = "branch_name"

            case bankName = "bank_name"

            case vpa

            case ifscCode = "ifsc_code"
        }

        public init(accountHolder: String, accountNo: String, address: String?, bankName: String, branchName: String, comment: String?, email: String, ifscCode: String, mobile: String, vpa: String?, wallet: String?) {
            self.email = email

            self.address = address

            self.accountNo = accountNo

            self.wallet = wallet

            self.accountHolder = accountHolder

            self.comment = comment

            self.mobile = mobile

            self.branchName = branchName

            self.bankName = bankName

            self.vpa = vpa

            self.ifscCode = ifscCode
        }

        public func duplicate() -> BeneficiaryModeDetails {
            let dict = self.dictionary!
            let copy = BeneficiaryModeDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                wallet = try container.decode(String.self, forKey: .wallet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobile = try container.decode(String.self, forKey: .mobile)

            branchName = try container.decode(String.self, forKey: .branchName)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encode(wallet, forKey: .wallet)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
        }
    }

    /*
         Model: AddBeneficiaryDetailsRequest
         Used By: Payment
     */

    class AddBeneficiaryDetailsRequest: Codable {
        public var otp: String?

        public var orderId: String

        public var details: BeneficiaryModeDetails

        public var transferMode: String

        public var requestId: String?

        public var delights: Bool

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case otp

            case orderId = "order_id"

            case details

            case transferMode = "transfer_mode"

            case requestId = "request_id"

            case delights

            case shipmentId = "shipment_id"
        }

        public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String?, requestId: String?, shipmentId: String, transferMode: String) {
            self.otp = otp

            self.orderId = orderId

            self.details = details

            self.transferMode = transferMode

            self.requestId = requestId

            self.delights = delights

            self.shipmentId = shipmentId
        }

        public func duplicate() -> AddBeneficiaryDetailsRequest {
            let dict = self.dictionary!
            let copy = AddBeneficiaryDetailsRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                otp = try container.decode(String.self, forKey: .otp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            delights = try container.decode(Bool.self, forKey: .delights)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otp, forKey: .otp)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(delights, forKey: .delights)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }

    /*
         Model: RefundAccountResponse
         Used By: Payment
     */

    class RefundAccountResponse: Codable {
        public var success: Bool

        public var isVerifiedFlag: Bool?

        public var data: [String: Any]?

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case success

            case isVerifiedFlag = "is_verified_flag"

            case data

            case message
        }

        public init(data: [String: Any]?, isVerifiedFlag: Bool?, message: String, success: Bool) {
            self.success = success

            self.isVerifiedFlag = isVerifiedFlag

            self.data = data

            self.message = message
        }

        public func duplicate() -> RefundAccountResponse {
            let dict = self.dictionary!
            let copy = RefundAccountResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: NotFoundResourceError
         Used By: Payment
     */

    class NotFoundResourceError: Codable {
        public var success: Bool

        public var description: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case success

            case description

            case code
        }

        public init(code: String, description: String, success: Bool) {
            self.success = success

            self.description = description

            self.code = code
        }

        public func duplicate() -> NotFoundResourceError {
            let dict = self.dictionary!
            let copy = NotFoundResourceError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            description = try container.decode(String.self, forKey: .description)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }

    /*
         Model: IfscCodeResponse
         Used By: Payment
     */

    class IfscCodeResponse: Codable {
        public var success: Bool?

        public var branchName: String

        public var bankName: String

        public enum CodingKeys: String, CodingKey {
            case success

            case branchName = "branch_name"

            case bankName = "bank_name"
        }

        public init(bankName: String, branchName: String, success: Bool?) {
            self.success = success

            self.branchName = branchName

            self.bankName = bankName
        }

        public func duplicate() -> IfscCodeResponse {
            let dict = self.dictionary!
            let copy = IfscCodeResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            branchName = try container.decode(String.self, forKey: .branchName)

            bankName = try container.decode(String.self, forKey: .bankName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
        }
    }

    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var address: String

        public var accountHolder: String

        public var comment: Bool?

        public var mobile: Bool?

        public var bankName: String

        public var email: String

        public var accountNo: String

        public var modifiedOn: String

        public var createdOn: String

        public var beneficiaryId: String

        public var displayName: String

        public var title: String

        public var branchName: Bool?

        public var ifscCode: String

        public var delightsUserName: String?

        public var id: Int

        public var transferMode: String

        public var isActive: Bool

        public var subtitle: String

        public enum CodingKeys: String, CodingKey {
            case address

            case accountHolder = "account_holder"

            case comment

            case mobile

            case bankName = "bank_name"

            case email

            case accountNo = "account_no"

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case beneficiaryId = "beneficiary_id"

            case displayName = "display_name"

            case title

            case branchName = "branch_name"

            case ifscCode = "ifsc_code"

            case delightsUserName = "delights_user_name"

            case id

            case transferMode = "transfer_mode"

            case isActive = "is_active"

            case subtitle
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool?, comment: Bool?, createdOn: String, delightsUserName: String?, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool?, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.address = address

            self.accountHolder = accountHolder

            self.comment = comment

            self.mobile = mobile

            self.bankName = bankName

            self.email = email

            self.accountNo = accountNo

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.beneficiaryId = beneficiaryId

            self.displayName = displayName

            self.title = title

            self.branchName = branchName

            self.ifscCode = ifscCode

            self.delightsUserName = delightsUserName

            self.id = id

            self.transferMode = transferMode

            self.isActive = isActive

            self.subtitle = subtitle
        }

        public func duplicate() -> OrderBeneficiaryDetails {
            let dict = self.dictionary!
            let copy = OrderBeneficiaryDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            email = try container.decode(String.self, forKey: .email)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            displayName = try container.decode(String.self, forKey: .displayName)

            title = try container.decode(String.self, forKey: .title)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            subtitle = try container.decode(String.self, forKey: .subtitle)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
        }
    }

    /*
         Model: OrderBeneficiaryResponse
         Used By: Payment
     */

    class OrderBeneficiaryResponse: Codable {
        public var showBeneficiaryDetails: Bool?

        public var beneficiaries: [OrderBeneficiaryDetails]?

        public enum CodingKeys: String, CodingKey {
            case showBeneficiaryDetails = "show_beneficiary_details"

            case beneficiaries
        }

        public init(beneficiaries: [OrderBeneficiaryDetails]?, showBeneficiaryDetails: Bool?) {
            self.showBeneficiaryDetails = showBeneficiaryDetails

            self.beneficiaries = beneficiaries
        }

        public func duplicate() -> OrderBeneficiaryResponse {
            let dict = self.dictionary!
            let copy = OrderBeneficiaryResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                showBeneficiaryDetails = try container.decode(Bool.self, forKey: .showBeneficiaryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                beneficiaries = try container.decode([OrderBeneficiaryDetails].self, forKey: .beneficiaries)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(showBeneficiaryDetails, forKey: .showBeneficiaryDetails)

            try? container.encode(beneficiaries, forKey: .beneficiaries)
        }
    }

    /*
         Model: PaymentConfirmationMode
         Used By: Payment
     */

    class PaymentConfirmationMode: Codable {
        public var name: String?

        public var amount: Double

        public var mode: String

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case name

            case amount

            case mode

            case meta
        }

        public init(amount: Double, meta: [String: Any]?, mode: String, name: String?) {
            self.name = name

            self.amount = amount

            self.mode = mode

            self.meta = meta
        }

        public func duplicate() -> PaymentConfirmationMode {
            let dict = self.dictionary!
            let copy = PaymentConfirmationMode(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Double.self, forKey: .amount)

            mode = try container.decode(String.self, forKey: .mode)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }

    /*
         Model: PaymentConfirmationRequest
         Used By: Payment
     */

    class PaymentConfirmationRequest: Codable {
        public var orderId: String

        public var paymentMethods: [PaymentConfirmationMode]

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case paymentMethods = "payment_methods"
        }

        public init(orderId: String, paymentMethods: [PaymentConfirmationMode]) {
            self.orderId = orderId

            self.paymentMethods = paymentMethods
        }

        public func duplicate() -> PaymentConfirmationRequest {
            let dict = self.dictionary!
            let copy = PaymentConfirmationRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            paymentMethods = try container.decode([PaymentConfirmationMode].self, forKey: .paymentMethods)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
        }
    }

    /*
         Model: PaymentConfirmationResponse
         Used By: Payment
     */

    class PaymentConfirmationResponse: Codable {
        public var success: Bool

        public var orderId: String

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case success

            case orderId = "order_id"

            case message
        }

        public init(message: String, orderId: String, success: Bool) {
            self.success = success

            self.orderId = orderId

            self.message = message
        }

        public func duplicate() -> PaymentConfirmationResponse {
            let dict = self.dictionary!
            let copy = PaymentConfirmationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            orderId = try container.decode(String.self, forKey: .orderId)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
