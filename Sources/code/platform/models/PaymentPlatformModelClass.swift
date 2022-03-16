import Foundation


import Foundation
public extension PlatformClient {
    
    /*
        Model: PaymentGatewayConfigResponse
        Used By: Payment
    */

    class PaymentGatewayConfigResponse: Codable {
        
        
        public var created: Bool
        
        public var appId: String
        
        public var excludedFields: [String]
        
        public var success: Bool
        
        public var aggregators: [[String: Any]]?
        
        public var displayFields: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case created = "created"
            
            case appId = "app_id"
            
            case excludedFields = "excluded_fields"
            
            case success = "success"
            
            case aggregators = "aggregators"
            
            case displayFields = "display_fields"
            
        }

        public init(aggregators: [[String: Any]]?, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            
            self.created = created
            
            self.appId = appId
            
            self.excludedFields = excludedFields
            
            self.success = success
            
            self.aggregators = aggregators
            
            self.displayFields = displayFields
            
        }

        public func duplicate() -> PaymentGatewayConfigResponse {
            let dict = self.dictionary!
            let copy = PaymentGatewayConfigResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                created = try container.decode(Bool.self, forKey: .created)
                
            
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                excludedFields = try container.decode([String].self, forKey: .excludedFields)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    aggregators = try container.decode([[String: Any]].self, forKey: .aggregators)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayFields = try container.decode([String].self, forKey: .displayFields)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
            
            
            
            
            try? container.encodeIfPresent(displayFields, forKey: .displayFields)
            
            
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
            
            case success = "success"
            
            case description = "description"
            
            case code = "code"
            
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
        
        
        public var merchantSalt: String
        
        public var isActive: Bool?
        
        public var secret: String
        
        public var configType: String
        
        public var key: String
        

        public enum CodingKeys: String, CodingKey {
            
            case merchantSalt = "merchant_salt"
            
            case isActive = "is_active"
            
            case secret = "secret"
            
            case configType = "config_type"
            
            case key = "key"
            
        }

        public init(configType: String, isActive: Bool?, key: String, merchantSalt: String, secret: String) {
            
            self.merchantSalt = merchantSalt
            
            self.isActive = isActive
            
            self.secret = secret
            
            self.configType = configType
            
            self.key = key
            
        }

        public func duplicate() -> PaymentGatewayConfig {
            let dict = self.dictionary!
            let copy = PaymentGatewayConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                merchantSalt = try container.decode(String.self, forKey: .merchantSalt)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                secret = try container.decode(String.self, forKey: .secret)
                
            
            
            
                configType = try container.decode(String.self, forKey: .configType)
                
            
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)
            
            
            
            
            try? container.encode(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            
            
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
        }
        
    }
    
    /*
        Model: PaymentGatewayConfigRequest
        Used By: Payment
    */

    class PaymentGatewayConfigRequest: Codable {
        
        
        public var isActive: Bool?
        
        public var aggregatorName: PaymentGatewayConfig?
        
        public var appId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case aggregatorName = "aggregator_name"
            
            case appId = "app_id"
            
        }

        public init(aggregatorName: PaymentGatewayConfig?, appId: String, isActive: Bool?) {
            
            self.isActive = isActive
            
            self.aggregatorName = aggregatorName
            
            self.appId = appId
            
        }

        public func duplicate() -> PaymentGatewayConfigRequest {
            let dict = self.dictionary!
            let copy = PaymentGatewayConfigRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregatorName = try container.decode(PaymentGatewayConfig.self, forKey: .aggregatorName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
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
            
            case success = "success"
            
            case aggregator = "aggregator"
            
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
            
            case description = "description"
            
            case code = "code"
            
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
            
            case success = "success"
            
            case error = "error"
            
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
            
            case large = "large"
            
            case small = "small"
            
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
        
        public var logos: PaymentModeLogo?
        
        public var code: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case packageName = "package_name"
            
            case logos = "logos"
            
            case code = "code"
            
        }

        public init(code: String?, displayName: String?, logos: PaymentModeLogo?, packageName: String?) {
            
            self.displayName = displayName
            
            self.packageName = packageName
            
            self.logos = logos
            
            self.code = code
            
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
                } catch {
                    
                }
                
            
            
                do {
                    packageName = try container.decode(String.self, forKey: .packageName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logos = try container.decode(PaymentModeLogo.self, forKey: .logos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(displayName, forKey: .displayName)
            
            
            
            
            try? container.encode(packageName, forKey: .packageName)
            
            
            
            
            try? container.encode(logos, forKey: .logos)
            
            
            
            
            try? container.encode(code, forKey: .code)
            
            
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
            
            case code = "code"
            
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
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
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
        
        
        public var logoUrl: PaymentModeLogo?
        
        public var retryCount: Int?
        
        public var cardType: String?
        
        public var cardToken: String?
        
        public var expired: Bool?
        
        public var nickname: String?
        
        public var intentApp: [IntentApp]?
        
        public var cardName: String?
        
        public var displayName: String?
        
        public var cardIssuer: String?
        
        public var timeout: Int?
        
        public var code: String?
        
        public var cardId: String?
        
        public var expYear: Int?
        
        public var merchantCode: String?
        
        public var cardBrand: String?
        
        public var intentAppErrorDictList: [IntentAppErrorList]?
        
        public var aggregatorName: String
        
        public var intentAppErrorList: [String]?
        
        public var expMonth: Int?
        
        public var cardNumber: String?
        
        public var cardFingerprint: String?
        
        public var cardBrandImage: String?
        
        public var intentFlow: Bool?
        
        public var displayPriority: Int?
        
        public var cardIsin: String?
        
        public var cardReference: String?
        
        public var name: String?
        
        public var fyndVpa: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case logoUrl = "logo_url"
            
            case retryCount = "retry_count"
            
            case cardType = "card_type"
            
            case cardToken = "card_token"
            
            case expired = "expired"
            
            case nickname = "nickname"
            
            case intentApp = "intent_app"
            
            case cardName = "card_name"
            
            case displayName = "display_name"
            
            case cardIssuer = "card_issuer"
            
            case timeout = "timeout"
            
            case code = "code"
            
            case cardId = "card_id"
            
            case expYear = "exp_year"
            
            case merchantCode = "merchant_code"
            
            case cardBrand = "card_brand"
            
            case intentAppErrorDictList = "intent_app_error_dict_list"
            
            case aggregatorName = "aggregator_name"
            
            case intentAppErrorList = "intent_app_error_list"
            
            case expMonth = "exp_month"
            
            case cardNumber = "card_number"
            
            case cardFingerprint = "card_fingerprint"
            
            case cardBrandImage = "card_brand_image"
            
            case intentFlow = "intent_flow"
            
            case displayPriority = "display_priority"
            
            case cardIsin = "card_isin"
            
            case cardReference = "card_reference"
            
            case name = "name"
            
            case fyndVpa = "fynd_vpa"
            
        }

        public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, fyndVpa: String?, intentApp: [IntentApp]?, intentAppErrorDictList: [IntentAppErrorList]?, intentAppErrorList: [String]?, intentFlow: Bool?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?, retryCount: Int?, timeout: Int?) {
            
            self.logoUrl = logoUrl
            
            self.retryCount = retryCount
            
            self.cardType = cardType
            
            self.cardToken = cardToken
            
            self.expired = expired
            
            self.nickname = nickname
            
            self.intentApp = intentApp
            
            self.cardName = cardName
            
            self.displayName = displayName
            
            self.cardIssuer = cardIssuer
            
            self.timeout = timeout
            
            self.code = code
            
            self.cardId = cardId
            
            self.expYear = expYear
            
            self.merchantCode = merchantCode
            
            self.cardBrand = cardBrand
            
            self.intentAppErrorDictList = intentAppErrorDictList
            
            self.aggregatorName = aggregatorName
            
            self.intentAppErrorList = intentAppErrorList
            
            self.expMonth = expMonth
            
            self.cardNumber = cardNumber
            
            self.cardFingerprint = cardFingerprint
            
            self.cardBrandImage = cardBrandImage
            
            self.intentFlow = intentFlow
            
            self.displayPriority = displayPriority
            
            self.cardIsin = cardIsin
            
            self.cardReference = cardReference
            
            self.name = name
            
            self.fyndVpa = fyndVpa
            
        }

        public func duplicate() -> PaymentModeList {
            let dict = self.dictionary!
            let copy = PaymentModeList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    retryCount = try container.decode(Int.self, forKey: .retryCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cardType = try container.decode(String.self, forKey: .cardType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cardToken = try container.decode(String.self, forKey: .cardToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    expired = try container.decode(Bool.self, forKey: .expired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nickname = try container.decode(String.self, forKey: .nickname)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    intentApp = try container.decode([IntentApp].self, forKey: .intentApp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cardName = try container.decode(String.self, forKey: .cardName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cardIssuer = try container.decode(String.self, forKey: .cardIssuer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cardId = try container.decode(String.self, forKey: .cardId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    expYear = try container.decode(Int.self, forKey: .expYear)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cardBrand = try container.decode(String.self, forKey: .cardBrand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    intentAppErrorDictList = try container.decode([IntentAppErrorList].self, forKey: .intentAppErrorDictList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
            
            
            
                do {
                    intentAppErrorList = try container.decode([String].self, forKey: .intentAppErrorList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    expMonth = try container.decode(Int.self, forKey: .expMonth)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cardNumber = try container.decode(String.self, forKey: .cardNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    intentFlow = try container.decode(Bool.self, forKey: .intentFlow)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cardIsin = try container.decode(String.self, forKey: .cardIsin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cardReference = try container.decode(String.self, forKey: .cardReference)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndVpa = try container.decode(String.self, forKey: .fyndVpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(logoUrl, forKey: .logoUrl)
            
            
            
            
            try? container.encode(retryCount, forKey: .retryCount)
            
            
            
            
            try? container.encode(cardType, forKey: .cardType)
            
            
            
            
            try? container.encode(cardToken, forKey: .cardToken)
            
            
            
            
            try? container.encode(expired, forKey: .expired)
            
            
            
            
            try? container.encode(nickname, forKey: .nickname)
            
            
            
            
            try? container.encode(intentApp, forKey: .intentApp)
            
            
            
            
            try? container.encode(cardName, forKey: .cardName)
            
            
            
            
            try? container.encode(displayName, forKey: .displayName)
            
            
            
            
            try? container.encode(cardIssuer, forKey: .cardIssuer)
            
            
            
            
            try? container.encode(timeout, forKey: .timeout)
            
            
            
            
            try? container.encode(code, forKey: .code)
            
            
            
            
            try? container.encode(cardId, forKey: .cardId)
            
            
            
            
            try? container.encode(expYear, forKey: .expYear)
            
            
            
            
            try? container.encode(merchantCode, forKey: .merchantCode)
            
            
            
            
            try? container.encode(cardBrand, forKey: .cardBrand)
            
            
            
            
            try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)
            
            
            
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            
            
            
            try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)
            
            
            
            
            try? container.encode(expMonth, forKey: .expMonth)
            
            
            
            
            try? container.encode(cardNumber, forKey: .cardNumber)
            
            
            
            
            try? container.encode(cardFingerprint, forKey: .cardFingerprint)
            
            
            
            
            try? container.encode(cardBrandImage, forKey: .cardBrandImage)
            
            
            
            
            try? container.encode(intentFlow, forKey: .intentFlow)
            
            
            
            
            try? container.encode(displayPriority, forKey: .displayPriority)
            
            
            
            
            try? container.encode(cardIsin, forKey: .cardIsin)
            
            
            
            
            try? container.encode(cardReference, forKey: .cardReference)
            
            
            
            
            try? container.encode(name, forKey: .name)
            
            
            
            
            try? container.encode(fyndVpa, forKey: .fyndVpa)
            
            
        }
        
    }
    
    /*
        Model: RootPaymentMode
        Used By: Payment
    */

    class RootPaymentMode: Codable {
        
        
        public var displayName: String
        
        public var displayPriority: Int
        
        public var addCardEnabled: Bool?
        
        public var list: [PaymentModeList]?
        
        public var name: String
        
        public var anonymousEnable: Bool?
        
        public var aggregatorName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case displayPriority = "display_priority"
            
            case addCardEnabled = "add_card_enabled"
            
            case list = "list"
            
            case name = "name"
            
            case anonymousEnable = "anonymous_enable"
            
            case aggregatorName = "aggregator_name"
            
        }

        public init(addCardEnabled: Bool?, aggregatorName: String?, anonymousEnable: Bool?, displayName: String, displayPriority: Int, list: [PaymentModeList]?, name: String) {
            
            self.displayName = displayName
            
            self.displayPriority = displayPriority
            
            self.addCardEnabled = addCardEnabled
            
            self.list = list
            
            self.name = name
            
            self.anonymousEnable = anonymousEnable
            
            self.aggregatorName = aggregatorName
            
        }

        public func duplicate() -> RootPaymentMode {
            let dict = self.dictionary!
            let copy = RootPaymentMode(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
            
            
            
                do {
                    addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    list = try container.decode([PaymentModeList].self, forKey: .list)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
            
            
            
            
            try? container.encode(addCardEnabled, forKey: .addCardEnabled)
            
            
            
            
            try? container.encodeIfPresent(list, forKey: .list)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encode(anonymousEnable, forKey: .anonymousEnable)
            
            
            
            
            try? container.encode(aggregatorName, forKey: .aggregatorName)
            
            
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
            
            case success = "success"
            
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
        
        
        public var isActive: Bool
        
        public var customers: [String: Any]
        
        public var payoutsAggregators: [[String: Any]]
        
        public var isDefault: Bool
        
        public var uniqueTransferNo: [String: Any]
        
        public var moreAttributes: [String: Any]
        
        public var transferType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case customers = "customers"
            
            case payoutsAggregators = "payouts_aggregators"
            
            case isDefault = "is_default"
            
            case uniqueTransferNo = "unique_transfer_no"
            
            case moreAttributes = "more_attributes"
            
            case transferType = "transfer_type"
            
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            
            self.isActive = isActive
            
            self.customers = customers
            
            self.payoutsAggregators = payoutsAggregators
            
            self.isDefault = isDefault
            
            self.uniqueTransferNo = uniqueTransferNo
            
            self.moreAttributes = moreAttributes
            
            self.transferType = transferType
            
        }

        public func duplicate() -> PayoutsResponse {
            let dict = self.dictionary!
            let copy = PayoutsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                customers = try container.decode([String: Any].self, forKey: .customers)
                
            
            
            
                payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)
                
            
            
            
                moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)
                
            
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(customers, forKey: .customers)
            
            
            
            
            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            
            
            
            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)
            
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
        }
        
    }
    
    /*
        Model: PayoutBankDetails
        Used By: Payment
    */

    class PayoutBankDetails: Codable {
        
        
        public var branchName: String?
        
        public var city: String?
        
        public var pincode: Int?
        
        public var accountHolder: String?
        
        public var state: String?
        
        public var ifscCode: String
        
        public var bankName: String?
        
        public var accountType: String
        
        public var country: String?
        
        public var accountNo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case branchName = "branch_name"
            
            case city = "city"
            
            case pincode = "pincode"
            
            case accountHolder = "account_holder"
            
            case state = "state"
            
            case ifscCode = "ifsc_code"
            
            case bankName = "bank_name"
            
            case accountType = "account_type"
            
            case country = "country"
            
            case accountNo = "account_no"
            
        }

        public init(accountHolder: String?, accountNo: String?, accountType: String, bankName: String?, branchName: String?, city: String?, country: String?, ifscCode: String, pincode: Int?, state: String?) {
            
            self.branchName = branchName
            
            self.city = city
            
            self.pincode = pincode
            
            self.accountHolder = accountHolder
            
            self.state = state
            
            self.ifscCode = ifscCode
            
            self.bankName = bankName
            
            self.accountType = accountType
            
            self.country = country
            
            self.accountNo = accountNo
            
        }

        public func duplicate() -> PayoutBankDetails {
            let dict = self.dictionary!
            let copy = PayoutBankDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    branchName = try container.decode(String.self, forKey: .branchName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
            
            
            
                do {
                    bankName = try container.decode(String.self, forKey: .bankName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                accountType = try container.decode(String.self, forKey: .accountType)
                
            
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    accountNo = try container.decode(String.self, forKey: .accountNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(accountType, forKey: .accountType)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
        }
        
    }
    
    /*
        Model: PayoutRequest
        Used By: Payment
    */

    class PayoutRequest: Codable {
        
        
        public var isActive: Bool
        
        public var uniqueExternalId: String
        
        public var users: [String: Any]
        
        public var bankDetails: PayoutBankDetails
        
        public var aggregator: String
        
        public var transferType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case uniqueExternalId = "unique_external_id"
            
            case users = "users"
            
            case bankDetails = "bank_details"
            
            case aggregator = "aggregator"
            
            case transferType = "transfer_type"
            
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            
            self.isActive = isActive
            
            self.uniqueExternalId = uniqueExternalId
            
            self.users = users
            
            self.bankDetails = bankDetails
            
            self.aggregator = aggregator
            
            self.transferType = transferType
            
        }

        public func duplicate() -> PayoutRequest {
            let dict = self.dictionary!
            let copy = PayoutRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
                
            
            
            
                users = try container.decode([String: Any].self, forKey: .users)
                
            
            
            
                bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
            
            
            
            
            try? container.encodeIfPresent(users, forKey: .users)
            
            
            
            
            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
        }
        
    }
    
    /*
        Model: PayoutResponse
        Used By: Payment
    */

    class PayoutResponse: Codable {
        
        
        public var created: Bool
        
        public var isActive: Bool
        
        public var users: [String: Any]
        
        public var paymentStatus: String
        
        public var bankDetails: [String: Any]
        
        public var payouts: [String: Any]
        
        public var uniqueTransferNo: String
        
        public var success: Bool
        
        public var aggregator: String
        
        public var transferType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case created = "created"
            
            case isActive = "is_active"
            
            case users = "users"
            
            case paymentStatus = "payment_status"
            
            case bankDetails = "bank_details"
            
            case payouts = "payouts"
            
            case uniqueTransferNo = "unique_transfer_no"
            
            case success = "success"
            
            case aggregator = "aggregator"
            
            case transferType = "transfer_type"
            
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            
            self.created = created
            
            self.isActive = isActive
            
            self.users = users
            
            self.paymentStatus = paymentStatus
            
            self.bankDetails = bankDetails
            
            self.payouts = payouts
            
            self.uniqueTransferNo = uniqueTransferNo
            
            self.success = success
            
            self.aggregator = aggregator
            
            self.transferType = transferType
            
        }

        public func duplicate() -> PayoutResponse {
            let dict = self.dictionary!
            let copy = PayoutResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                created = try container.decode(Bool.self, forKey: .created)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                users = try container.decode([String: Any].self, forKey: .users)
                
            
            
            
                paymentStatus = try container.decode(String.self, forKey: .paymentStatus)
                
            
            
            
                bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)
                
            
            
            
                payouts = try container.decode([String: Any].self, forKey: .payouts)
                
            
            
            
                uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(users, forKey: .users)
            
            
            
            
            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)
            
            
            
            
            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
            
            
            
            
            try? container.encodeIfPresent(payouts, forKey: .payouts)
            
            
            
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
        }
        
    }
    
    /*
        Model: UpdatePayoutResponse
        Used By: Payment
    */

    class UpdatePayoutResponse: Codable {
        
        
        public var success: Bool
        
        public var isActive: Bool
        
        public var isDefault: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case isActive = "is_active"
            
            case isDefault = "is_default"
            
        }

        public init(isActive: Bool, isDefault: Bool, success: Bool) {
            
            self.success = success
            
            self.isActive = isActive
            
            self.isDefault = isDefault
            
        }

        public func duplicate() -> UpdatePayoutResponse {
            let dict = self.dictionary!
            let copy = UpdatePayoutResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
        }
        
    }
    
    /*
        Model: UpdatePayoutRequest
        Used By: Payment
    */

    class UpdatePayoutRequest: Codable {
        
        
        public var isActive: Bool
        
        public var uniqueExternalId: String
        
        public var isDefault: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case uniqueExternalId = "unique_external_id"
            
            case isDefault = "is_default"
            
        }

        public init(isActive: Bool, isDefault: Bool, uniqueExternalId: String) {
            
            self.isActive = isActive
            
            self.uniqueExternalId = uniqueExternalId
            
            self.isDefault = isDefault
            
        }

        public func duplicate() -> UpdatePayoutRequest {
            let dict = self.dictionary!
            let copy = UpdatePayoutRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
            
            
            
            
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
            
            case success = "success"
            
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
            
            case success = "success"
            
            case data = "data"
            
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
            
            case success = "success"
            
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
            
            case success = "success"
            
            case aggregator = "aggregator"
            
            case config = "config"
            
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
            
            case success = "success"
            
            case data = "data"
            
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
        
        
        public var address: String?
        
        public var branchName: String
        
        public var vpa: String?
        
        public var accountHolder: String
        
        public var wallet: String?
        
        public var email: String
        
        public var ifscCode: String
        
        public var comment: String?
        
        public var bankName: String
        
        public var mobile: String
        
        public var accountNo: String
        

        public enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
            case branchName = "branch_name"
            
            case vpa = "vpa"
            
            case accountHolder = "account_holder"
            
            case wallet = "wallet"
            
            case email = "email"
            
            case ifscCode = "ifsc_code"
            
            case comment = "comment"
            
            case bankName = "bank_name"
            
            case mobile = "mobile"
            
            case accountNo = "account_no"
            
        }

        public init(accountHolder: String, accountNo: String, address: String?, bankName: String, branchName: String, comment: String?, email: String, ifscCode: String, mobile: String, vpa: String?, wallet: String?) {
            
            self.address = address
            
            self.branchName = branchName
            
            self.vpa = vpa
            
            self.accountHolder = accountHolder
            
            self.wallet = wallet
            
            self.email = email
            
            self.ifscCode = ifscCode
            
            self.comment = comment
            
            self.bankName = bankName
            
            self.mobile = mobile
            
            self.accountNo = accountNo
            
        }

        public func duplicate() -> BeneficiaryModeDetails {
            let dict = self.dictionary!
            let copy = BeneficiaryModeDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    address = try container.decode(String.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                branchName = try container.decode(String.self, forKey: .branchName)
                
            
            
            
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
            
            
            
                do {
                    wallet = try container.decode(String.self, forKey: .wallet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
            
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                bankName = try container.decode(String.self, forKey: .bankName)
                
            
            
            
                mobile = try container.decode(String.self, forKey: .mobile)
                
            
            
            
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encode(vpa, forKey: .vpa)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encode(wallet, forKey: .wallet)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
        }
        
    }
    
    /*
        Model: AddBeneficiaryDetailsRequest
        Used By: Payment
    */

    class AddBeneficiaryDetailsRequest: Codable {
        
        
        public var orderId: String
        
        public var details: BeneficiaryModeDetails
        
        public var otp: String?
        
        public var shipmentId: String
        
        public var transferMode: String
        
        public var delights: Bool
        
        public var requestId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
            case details = "details"
            
            case otp = "otp"
            
            case shipmentId = "shipment_id"
            
            case transferMode = "transfer_mode"
            
            case delights = "delights"
            
            case requestId = "request_id"
            
        }

        public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String?, requestId: String?, shipmentId: String, transferMode: String) {
            
            self.orderId = orderId
            
            self.details = details
            
            self.otp = otp
            
            self.shipmentId = shipmentId
            
            self.transferMode = transferMode
            
            self.delights = delights
            
            self.requestId = requestId
            
        }

        public func duplicate() -> AddBeneficiaryDetailsRequest {
            let dict = self.dictionary!
            let copy = AddBeneficiaryDetailsRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)
                
            
            
            
                do {
                    otp = try container.decode(String.self, forKey: .otp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
            
            
            
                delights = try container.decode(Bool.self, forKey: .delights)
                
            
            
            
                do {
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
            
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(delights, forKey: .delights)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
        }
        
    }
    
    /*
        Model: RefundAccountResponse
        Used By: Payment
    */

    class RefundAccountResponse: Codable {
        
        
        public var success: Bool
        
        public var isVerifiedFlag: Bool?
        
        public var message: String
        
        public var data: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case isVerifiedFlag = "is_verified_flag"
            
            case message = "message"
            
            case data = "data"
            
        }

        public init(data: [String: Any]?, isVerifiedFlag: Bool?, message: String, success: Bool) {
            
            self.success = success
            
            self.isVerifiedFlag = isVerifiedFlag
            
            self.message = message
            
            self.data = data
            
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
                } catch {
                    
                }
                
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
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
            
            case success = "success"
            
            case description = "description"
            
            case code = "code"
            
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
        
        
        public var branchName: String
        
        public var success: Bool?
        
        public var bankName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case branchName = "branch_name"
            
            case success = "success"
            
            case bankName = "bank_name"
            
        }

        public init(bankName: String, branchName: String, success: Bool?) {
            
            self.branchName = branchName
            
            self.success = success
            
            self.bankName = bankName
            
        }

        public func duplicate() -> IfscCodeResponse {
            let dict = self.dictionary!
            let copy = IfscCodeResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                branchName = try container.decode(String.self, forKey: .branchName)
                
            
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                bankName = try container.decode(String.self, forKey: .bankName)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
        }
        
    }
    
    /*
        Model: OrderBeneficiaryDetails
        Used By: Payment
    */

    class OrderBeneficiaryDetails: Codable {
        
        
        public var branchName: Bool?
        
        public var address: String
        
        public var accountHolder: String
        
        public var beneficiaryId: String
        
        public var createdOn: String
        
        public var displayName: String
        
        public var title: String
        
        public var ifscCode: String
        
        public var subtitle: String
        
        public var bankName: String
        
        public var mobile: Bool?
        
        public var delightsUserName: String?
        
        public var accountNo: String
        
        public var isActive: Bool
        
        public var id: Int
        
        public var transferMode: String
        
        public var modifiedOn: String
        
        public var email: String
        
        public var comment: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case branchName = "branch_name"
            
            case address = "address"
            
            case accountHolder = "account_holder"
            
            case beneficiaryId = "beneficiary_id"
            
            case createdOn = "created_on"
            
            case displayName = "display_name"
            
            case title = "title"
            
            case ifscCode = "ifsc_code"
            
            case subtitle = "subtitle"
            
            case bankName = "bank_name"
            
            case mobile = "mobile"
            
            case delightsUserName = "delights_user_name"
            
            case accountNo = "account_no"
            
            case isActive = "is_active"
            
            case id = "id"
            
            case transferMode = "transfer_mode"
            
            case modifiedOn = "modified_on"
            
            case email = "email"
            
            case comment = "comment"
            
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool?, comment: Bool?, createdOn: String, delightsUserName: String?, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool?, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            
            self.branchName = branchName
            
            self.address = address
            
            self.accountHolder = accountHolder
            
            self.beneficiaryId = beneficiaryId
            
            self.createdOn = createdOn
            
            self.displayName = displayName
            
            self.title = title
            
            self.ifscCode = ifscCode
            
            self.subtitle = subtitle
            
            self.bankName = bankName
            
            self.mobile = mobile
            
            self.delightsUserName = delightsUserName
            
            self.accountNo = accountNo
            
            self.isActive = isActive
            
            self.id = id
            
            self.transferMode = transferMode
            
            self.modifiedOn = modifiedOn
            
            self.email = email
            
            self.comment = comment
            
        }

        public func duplicate() -> OrderBeneficiaryDetails {
            let dict = self.dictionary!
            let copy = OrderBeneficiaryDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    branchName = try container.decode(Bool.self, forKey: .branchName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
            
            
            
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
            
            
            
                subtitle = try container.decode(String.self, forKey: .subtitle)
                
            
            
            
                bankName = try container.decode(String.self, forKey: .bankName)
                
            
            
            
                do {
                    mobile = try container.decode(Bool.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
            
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                do {
                    comment = try container.decode(Bool.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encode(delightsUserName, forKey: .delightsUserName)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
        }
        
    }
    
    /*
        Model: OrderBeneficiaryResponse
        Used By: Payment
    */

    class OrderBeneficiaryResponse: Codable {
        
        
        public var beneficiaries: [OrderBeneficiaryDetails]?
        
        public var showBeneficiaryDetails: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case beneficiaries = "beneficiaries"
            
            case showBeneficiaryDetails = "show_beneficiary_details"
            
        }

        public init(beneficiaries: [OrderBeneficiaryDetails]?, showBeneficiaryDetails: Bool?) {
            
            self.beneficiaries = beneficiaries
            
            self.showBeneficiaryDetails = showBeneficiaryDetails
            
        }

        public func duplicate() -> OrderBeneficiaryResponse {
            let dict = self.dictionary!
            let copy = OrderBeneficiaryResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    beneficiaries = try container.decode([OrderBeneficiaryDetails].self, forKey: .beneficiaries)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    showBeneficiaryDetails = try container.decode(Bool.self, forKey: .showBeneficiaryDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(beneficiaries, forKey: .beneficiaries)
            
            
            
            
            try? container.encodeIfPresent(showBeneficiaryDetails, forKey: .showBeneficiaryDetails)
            
            
        }
        
    }
    
    /*
        Model: PaymentConfirmationMode
        Used By: Payment
    */

    class PaymentConfirmationMode: Codable {
        
        
        public var mode: String
        
        public var amount: Double
        
        public var meta: [String: Any]?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case mode = "mode"
            
            case amount = "amount"
            
            case meta = "meta"
            
            case name = "name"
            
        }

        public init(amount: Double, meta: [String: Any]?, mode: String, name: String?) {
            
            self.mode = mode
            
            self.amount = amount
            
            self.meta = meta
            
            self.name = name
            
        }

        public func duplicate() -> PaymentConfirmationMode {
            let dict = self.dictionary!
            let copy = PaymentConfirmationMode(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
    
    /*
        Model: PaymentConfirmationRequest
        Used By: Payment
    */

    class PaymentConfirmationRequest: Codable {
        
        
        public var paymentMethods: [PaymentConfirmationMode]
        
        public var orderId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentMethods = "payment_methods"
            
            case orderId = "order_id"
            
        }

        public init(orderId: String, paymentMethods: [PaymentConfirmationMode]) {
            
            self.paymentMethods = paymentMethods
            
            self.orderId = orderId
            
        }

        public func duplicate() -> PaymentConfirmationRequest {
            let dict = self.dictionary!
            let copy = PaymentConfirmationRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentMethods = try container.decode([PaymentConfirmationMode].self, forKey: .paymentMethods)
                
            
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
        }
        
    }
    
    /*
        Model: PaymentConfirmationResponse
        Used By: Payment
    */

    class PaymentConfirmationResponse: Codable {
        
        
        public var success: Bool
        
        public var message: String
        
        public var orderId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
            case orderId = "order_id"
            
        }

        public init(message: String, orderId: String, success: Bool) {
            
            self.success = success
            
            self.message = message
            
            self.orderId = orderId
            
        }

        public func duplicate() -> PaymentConfirmationResponse {
            let dict = self.dictionary!
            let copy = PaymentConfirmationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
        }
        
    }
    
}
