import Foundation


import Foundation
public extension PlatformClient {
    
    /*
        Model: PaymentGatewayConfigResponse
        Used By: Payment
    */

    class PaymentGatewayConfigResponse: Codable {
        
        
        public var displayFields: [String]
        
        public var excludedFields: [String]
        
        public var aggregators: [[String: Any]]?
        
        public var success: Bool
        
        public var appId: String
        
        public var created: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case displayFields = "display_fields"
            
            case excludedFields = "excluded_fields"
            
            case aggregators = "aggregators"
            
            case success = "success"
            
            case appId = "app_id"
            
            case created = "created"
            
        }

        public init(aggregators: [[String: Any]]?, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            
            self.displayFields = displayFields
            
            self.excludedFields = excludedFields
            
            self.aggregators = aggregators
            
            self.success = success
            
            self.appId = appId
            
            self.created = created
            
        }

        public func duplicate() -> PaymentGatewayConfigResponse {
            let dict = self.dictionary!
            let copy = PaymentGatewayConfigResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                displayFields = try container.decode([String].self, forKey: .displayFields)
                
            
            
            
                excludedFields = try container.decode([String].self, forKey: .excludedFields)
                
            
            
            
                do {
                    aggregators = try container.decode([[String: Any]].self, forKey: .aggregators)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                created = try container.decode(Bool.self, forKey: .created)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(displayFields, forKey: .displayFields)
            
            
            
            
            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)
            
            
            
            
            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
        }
        
    }
    
    /*
        Model: ErrorCodeDescription
        Used By: Payment
    */

    class ErrorCodeDescription: Codable {
        
        
        public var description: String
        
        public var success: Bool
        
        public var code: String
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case success = "success"
            
            case code = "code"
            
        }

        public init(code: String, description: String, success: Bool) {
            
            self.description = description
            
            self.success = success
            
            self.code = code
            
        }

        public func duplicate() -> ErrorCodeDescription {
            let dict = self.dictionary!
            let copy = ErrorCodeDescription(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
        }
        
    }
    
    /*
        Model: PaymentGatewayConfig
        Used By: Payment
    */

    class PaymentGatewayConfig: Codable {
        
        
        public var isActive: Bool?
        
        public var configType: String
        
        public var key: String
        
        public var merchantSalt: String
        
        public var secret: String
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case configType = "config_type"
            
            case key = "key"
            
            case merchantSalt = "merchant_salt"
            
            case secret = "secret"
            
        }

        public init(configType: String, isActive: Bool?, key: String, merchantSalt: String, secret: String) {
            
            self.isActive = isActive
            
            self.configType = configType
            
            self.key = key
            
            self.merchantSalt = merchantSalt
            
            self.secret = secret
            
        }

        public func duplicate() -> PaymentGatewayConfig {
            let dict = self.dictionary!
            let copy = PaymentGatewayConfig(dictionary: dict)!
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
                
            
            
                configType = try container.decode(String.self, forKey: .configType)
                
            
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
            
                merchantSalt = try container.decode(String.self, forKey: .merchantSalt)
                
            
            
            
                secret = try container.decode(String.self, forKey: .secret)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)
            
            
            
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            
        }
        
    }
    
    /*
        Model: PaymentGatewayConfigRequest
        Used By: Payment
    */

    class PaymentGatewayConfigRequest: Codable {
        
        
        public var appId: String
        
        public var isActive: Bool?
        
        public var aggregatorName: PaymentGatewayConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case isActive = "is_active"
            
            case aggregatorName = "aggregator_name"
            
        }

        public init(aggregatorName: PaymentGatewayConfig?, appId: String, isActive: Bool?) {
            
            self.appId = appId
            
            self.isActive = isActive
            
            self.aggregatorName = aggregatorName
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encode(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            
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
        
        
        public var error: ErrorCodeAndDescription
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
            case success = "success"
            
        }

        public init(error: ErrorCodeAndDescription, success: Bool) {
            
            self.error = error
            
            self.success = success
            
        }

        public func duplicate() -> HttpErrorCodeAndResponse {
            let dict = self.dictionary!
            let copy = HttpErrorCodeAndResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                error = try container.decode(ErrorCodeAndDescription.self, forKey: .error)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
    /*
        Model: PaymentModeLogo
        Used By: Payment
    */

    class PaymentModeLogo: Codable {
        
        
        public var small: String
        
        public var large: String
        

        public enum CodingKeys: String, CodingKey {
            
            case small = "small"
            
            case large = "large"
            
        }

        public init(large: String, small: String) {
            
            self.small = small
            
            self.large = large
            
        }

        public func duplicate() -> PaymentModeLogo {
            let dict = self.dictionary!
            let copy = PaymentModeLogo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                small = try container.decode(String.self, forKey: .small)
                
            
            
            
                large = try container.decode(String.self, forKey: .large)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(small, forKey: .small)
            
            
            
            
            try? container.encodeIfPresent(large, forKey: .large)
            
            
        }
        
    }
    
    /*
        Model: IntentApp
        Used By: Payment
    */

    class IntentApp: Codable {
        
        
        public var logos: PaymentModeLogo?
        
        public var code: String?
        
        public var displayName: String?
        
        public var packageName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case logos = "logos"
            
            case code = "code"
            
            case displayName = "display_name"
            
            case packageName = "package_name"
            
        }

        public init(code: String?, displayName: String?, logos: PaymentModeLogo?, packageName: String?) {
            
            self.logos = logos
            
            self.code = code
            
            self.displayName = displayName
            
            self.packageName = packageName
            
        }

        public func duplicate() -> IntentApp {
            let dict = self.dictionary!
            let copy = IntentApp(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(logos, forKey: .logos)
            
            
            
            
            try? container.encode(code, forKey: .code)
            
            
            
            
            try? container.encode(displayName, forKey: .displayName)
            
            
            
            
            try? container.encode(packageName, forKey: .packageName)
            
            
        }
        
    }
    
    /*
        Model: IntentAppErrorList
        Used By: Payment
    */

    class IntentAppErrorList: Codable {
        
        
        public var code: String?
        
        public var packageName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case packageName = "package_name"
            
        }

        public init(code: String?, packageName: String?) {
            
            self.code = code
            
            self.packageName = packageName
            
        }

        public func duplicate() -> IntentAppErrorList {
            let dict = self.dictionary!
            let copy = IntentAppErrorList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(code, forKey: .code)
            
            
            
            
            try? container.encode(packageName, forKey: .packageName)
            
            
        }
        
    }
    
    /*
        Model: PaymentModeList
        Used By: Payment
    */

    class PaymentModeList: Codable {
        
        
        public var timeout: Int?
        
        public var code: String?
        
        public var cardBrand: String?
        
        public var intentAppErrorList: [String]?
        
        public var retryCount: Int?
        
        public var cardId: String?
        
        public var cardName: String?
        
        public var fyndVpa: String?
        
        public var displayPriority: Int?
        
        public var intentApp: [IntentApp]?
        
        public var displayName: String?
        
        public var intentFlow: Bool?
        
        public var merchantCode: String?
        
        public var intentAppErrorDictList: [IntentAppErrorList]?
        
        public var cardBrandImage: String?
        
        public var cardFingerprint: String?
        
        public var logoUrl: PaymentModeLogo?
        
        public var nickname: String?
        
        public var expired: Bool?
        
        public var expMonth: Int?
        
        public var cardToken: String?
        
        public var cardReference: String?
        
        public var cardIsin: String?
        
        public var cardIssuer: String?
        
        public var cardNumber: String?
        
        public var expYear: Int?
        
        public var cardType: String?
        
        public var name: String?
        
        public var aggregatorName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case timeout = "timeout"
            
            case code = "code"
            
            case cardBrand = "card_brand"
            
            case intentAppErrorList = "intent_app_error_list"
            
            case retryCount = "retry_count"
            
            case cardId = "card_id"
            
            case cardName = "card_name"
            
            case fyndVpa = "fynd_vpa"
            
            case displayPriority = "display_priority"
            
            case intentApp = "intent_app"
            
            case displayName = "display_name"
            
            case intentFlow = "intent_flow"
            
            case merchantCode = "merchant_code"
            
            case intentAppErrorDictList = "intent_app_error_dict_list"
            
            case cardBrandImage = "card_brand_image"
            
            case cardFingerprint = "card_fingerprint"
            
            case logoUrl = "logo_url"
            
            case nickname = "nickname"
            
            case expired = "expired"
            
            case expMonth = "exp_month"
            
            case cardToken = "card_token"
            
            case cardReference = "card_reference"
            
            case cardIsin = "card_isin"
            
            case cardIssuer = "card_issuer"
            
            case cardNumber = "card_number"
            
            case expYear = "exp_year"
            
            case cardType = "card_type"
            
            case name = "name"
            
            case aggregatorName = "aggregator_name"
            
        }

        public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, fyndVpa: String?, intentApp: [IntentApp]?, intentAppErrorDictList: [IntentAppErrorList]?, intentAppErrorList: [String]?, intentFlow: Bool?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?, retryCount: Int?, timeout: Int?) {
            
            self.timeout = timeout
            
            self.code = code
            
            self.cardBrand = cardBrand
            
            self.intentAppErrorList = intentAppErrorList
            
            self.retryCount = retryCount
            
            self.cardId = cardId
            
            self.cardName = cardName
            
            self.fyndVpa = fyndVpa
            
            self.displayPriority = displayPriority
            
            self.intentApp = intentApp
            
            self.displayName = displayName
            
            self.intentFlow = intentFlow
            
            self.merchantCode = merchantCode
            
            self.intentAppErrorDictList = intentAppErrorDictList
            
            self.cardBrandImage = cardBrandImage
            
            self.cardFingerprint = cardFingerprint
            
            self.logoUrl = logoUrl
            
            self.nickname = nickname
            
            self.expired = expired
            
            self.expMonth = expMonth
            
            self.cardToken = cardToken
            
            self.cardReference = cardReference
            
            self.cardIsin = cardIsin
            
            self.cardIssuer = cardIssuer
            
            self.cardNumber = cardNumber
            
            self.expYear = expYear
            
            self.cardType = cardType
            
            self.name = name
            
            self.aggregatorName = aggregatorName
            
        }

        public func duplicate() -> PaymentModeList {
            let dict = self.dictionary!
            let copy = PaymentModeList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    cardBrand = try container.decode(String.self, forKey: .cardBrand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    intentAppErrorList = try container.decode([String].self, forKey: .intentAppErrorList)
                
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
                    cardId = try container.decode(String.self, forKey: .cardId)
                
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
                    fyndVpa = try container.decode(String.self, forKey: .fyndVpa)
                
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
                    intentApp = try container.decode([IntentApp].self, forKey: .intentApp)
                
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
                    intentFlow = try container.decode(Bool.self, forKey: .intentFlow)
                
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
                    intentAppErrorDictList = try container.decode([IntentAppErrorList].self, forKey: .intentAppErrorDictList)
                
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
                    cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)
                
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
                    expired = try container.decode(Bool.self, forKey: .expired)
                
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
                    cardToken = try container.decode(String.self, forKey: .cardToken)
                
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
                    cardIsin = try container.decode(String.self, forKey: .cardIsin)
                
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
                    cardNumber = try container.decode(String.self, forKey: .cardNumber)
                
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
                    cardType = try container.decode(String.self, forKey: .cardType)
                
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
                
            
            
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(timeout, forKey: .timeout)
            
            
            
            
            try? container.encode(code, forKey: .code)
            
            
            
            
            try? container.encode(cardBrand, forKey: .cardBrand)
            
            
            
            
            try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)
            
            
            
            
            try? container.encode(retryCount, forKey: .retryCount)
            
            
            
            
            try? container.encode(cardId, forKey: .cardId)
            
            
            
            
            try? container.encode(cardName, forKey: .cardName)
            
            
            
            
            try? container.encode(fyndVpa, forKey: .fyndVpa)
            
            
            
            
            try? container.encode(displayPriority, forKey: .displayPriority)
            
            
            
            
            try? container.encode(intentApp, forKey: .intentApp)
            
            
            
            
            try? container.encode(displayName, forKey: .displayName)
            
            
            
            
            try? container.encode(intentFlow, forKey: .intentFlow)
            
            
            
            
            try? container.encode(merchantCode, forKey: .merchantCode)
            
            
            
            
            try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)
            
            
            
            
            try? container.encode(cardBrandImage, forKey: .cardBrandImage)
            
            
            
            
            try? container.encode(cardFingerprint, forKey: .cardFingerprint)
            
            
            
            
            try? container.encode(logoUrl, forKey: .logoUrl)
            
            
            
            
            try? container.encode(nickname, forKey: .nickname)
            
            
            
            
            try? container.encode(expired, forKey: .expired)
            
            
            
            
            try? container.encode(expMonth, forKey: .expMonth)
            
            
            
            
            try? container.encode(cardToken, forKey: .cardToken)
            
            
            
            
            try? container.encode(cardReference, forKey: .cardReference)
            
            
            
            
            try? container.encode(cardIsin, forKey: .cardIsin)
            
            
            
            
            try? container.encode(cardIssuer, forKey: .cardIssuer)
            
            
            
            
            try? container.encode(cardNumber, forKey: .cardNumber)
            
            
            
            
            try? container.encode(expYear, forKey: .expYear)
            
            
            
            
            try? container.encode(cardType, forKey: .cardType)
            
            
            
            
            try? container.encode(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            
        }
        
    }
    
    /*
        Model: RootPaymentMode
        Used By: Payment
    */

    class RootPaymentMode: Codable {
        
        
        public var list: [PaymentModeList]?
        
        public var displayPriority: Int
        
        public var anonymousEnable: Bool?
        
        public var displayName: String
        
        public var name: String
        
        public var aggregatorName: String?
        
        public var addCardEnabled: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case list = "list"
            
            case displayPriority = "display_priority"
            
            case anonymousEnable = "anonymous_enable"
            
            case displayName = "display_name"
            
            case name = "name"
            
            case aggregatorName = "aggregator_name"
            
            case addCardEnabled = "add_card_enabled"
            
        }

        public init(addCardEnabled: Bool?, aggregatorName: String?, anonymousEnable: Bool?, displayName: String, displayPriority: Int, list: [PaymentModeList]?, name: String) {
            
            self.list = list
            
            self.displayPriority = displayPriority
            
            self.anonymousEnable = anonymousEnable
            
            self.displayName = displayName
            
            self.name = name
            
            self.aggregatorName = aggregatorName
            
            self.addCardEnabled = addCardEnabled
            
        }

        public func duplicate() -> RootPaymentMode {
            let dict = self.dictionary!
            let copy = RootPaymentMode(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    list = try container.decode([PaymentModeList].self, forKey: .list)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
            
            
            
                do {
                    anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(list, forKey: .list)
            
            
            
            
            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
            
            
            
            
            try? container.encode(anonymousEnable, forKey: .anonymousEnable)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encode(aggregatorName, forKey: .aggregatorName)
            
            
            
            
            try? container.encode(addCardEnabled, forKey: .addCardEnabled)
            
            
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
        
        
        public var transferType: String
        
        public var payoutsAggregators: [[String: Any]]
        
        public var isActive: Bool
        
        public var isDefault: Bool
        
        public var customers: [String: Any]
        
        public var uniqueTransferNo: [String: Any]
        
        public var moreAttributes: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case transferType = "transfer_type"
            
            case payoutsAggregators = "payouts_aggregators"
            
            case isActive = "is_active"
            
            case isDefault = "is_default"
            
            case customers = "customers"
            
            case uniqueTransferNo = "unique_transfer_no"
            
            case moreAttributes = "more_attributes"
            
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            
            self.transferType = transferType
            
            self.payoutsAggregators = payoutsAggregators
            
            self.isActive = isActive
            
            self.isDefault = isDefault
            
            self.customers = customers
            
            self.uniqueTransferNo = uniqueTransferNo
            
            self.moreAttributes = moreAttributes
            
        }

        public func duplicate() -> PayoutsResponse {
            let dict = self.dictionary!
            let copy = PayoutsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
                
            
            
            
                payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                customers = try container.decode([String: Any].self, forKey: .customers)
                
            
            
            
                uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)
                
            
            
            
                moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
            
            
            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(customers, forKey: .customers)
            
            
            
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            
            
            
            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)
            
            
        }
        
    }
    
    /*
        Model: PayoutBankDetails
        Used By: Payment
    */

    class PayoutBankDetails: Codable {
        
        
        public var accountNo: String?
        
        public var accountHolder: String?
        
        public var country: String?
        
        public var ifscCode: String
        
        public var accountType: String
        
        public var city: String?
        
        public var bankName: String?
        
        public var pincode: Int?
        
        public var state: String?
        
        public var branchName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case accountNo = "account_no"
            
            case accountHolder = "account_holder"
            
            case country = "country"
            
            case ifscCode = "ifsc_code"
            
            case accountType = "account_type"
            
            case city = "city"
            
            case bankName = "bank_name"
            
            case pincode = "pincode"
            
            case state = "state"
            
            case branchName = "branch_name"
            
        }

        public init(accountHolder: String?, accountNo: String?, accountType: String, bankName: String?, branchName: String?, city: String?, country: String?, ifscCode: String, pincode: Int?, state: String?) {
            
            self.accountNo = accountNo
            
            self.accountHolder = accountHolder
            
            self.country = country
            
            self.ifscCode = ifscCode
            
            self.accountType = accountType
            
            self.city = city
            
            self.bankName = bankName
            
            self.pincode = pincode
            
            self.state = state
            
            self.branchName = branchName
            
        }

        public func duplicate() -> PayoutBankDetails {
            let dict = self.dictionary!
            let copy = PayoutBankDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    accountNo = try container.decode(String.self, forKey: .accountNo)
                
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
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
            
            
            
                accountType = try container.decode(String.self, forKey: .accountType)
                
            
            
            
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bankName = try container.decode(String.self, forKey: .bankName)
                
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
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    branchName = try container.decode(String.self, forKey: .branchName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(accountType, forKey: .accountType)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
        }
        
    }
    
    /*
        Model: PayoutRequest
        Used By: Payment
    */

    class PayoutRequest: Codable {
        
        
        public var transferType: String
        
        public var bankDetails: PayoutBankDetails
        
        public var uniqueExternalId: String
        
        public var isActive: Bool
        
        public var users: [String: Any]
        
        public var aggregator: String
        

        public enum CodingKeys: String, CodingKey {
            
            case transferType = "transfer_type"
            
            case bankDetails = "bank_details"
            
            case uniqueExternalId = "unique_external_id"
            
            case isActive = "is_active"
            
            case users = "users"
            
            case aggregator = "aggregator"
            
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            
            self.transferType = transferType
            
            self.bankDetails = bankDetails
            
            self.uniqueExternalId = uniqueExternalId
            
            self.isActive = isActive
            
            self.users = users
            
            self.aggregator = aggregator
            
        }

        public func duplicate() -> PayoutRequest {
            let dict = self.dictionary!
            let copy = PayoutRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
                
            
            
            
                bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)
                
            
            
            
                uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                users = try container.decode([String: Any].self, forKey: .users)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
            
            
            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
            
            
            
            
            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(users, forKey: .users)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
        }
        
    }
    
    /*
        Model: PayoutResponse
        Used By: Payment
    */

    class PayoutResponse: Codable {
        
        
        public var bankDetails: [String: Any]
        
        public var transferType: String
        
        public var isActive: Bool
        
        public var payouts: [String: Any]
        
        public var paymentStatus: String
        
        public var users: [String: Any]
        
        public var aggregator: String
        
        public var uniqueTransferNo: String
        
        public var success: Bool
        
        public var created: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case bankDetails = "bank_details"
            
            case transferType = "transfer_type"
            
            case isActive = "is_active"
            
            case payouts = "payouts"
            
            case paymentStatus = "payment_status"
            
            case users = "users"
            
            case aggregator = "aggregator"
            
            case uniqueTransferNo = "unique_transfer_no"
            
            case success = "success"
            
            case created = "created"
            
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            
            self.bankDetails = bankDetails
            
            self.transferType = transferType
            
            self.isActive = isActive
            
            self.payouts = payouts
            
            self.paymentStatus = paymentStatus
            
            self.users = users
            
            self.aggregator = aggregator
            
            self.uniqueTransferNo = uniqueTransferNo
            
            self.success = success
            
            self.created = created
            
        }

        public func duplicate() -> PayoutResponse {
            let dict = self.dictionary!
            let copy = PayoutResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)
                
            
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                payouts = try container.decode([String: Any].self, forKey: .payouts)
                
            
            
            
                paymentStatus = try container.decode(String.self, forKey: .paymentStatus)
                
            
            
            
                users = try container.decode([String: Any].self, forKey: .users)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                created = try container.decode(Bool.self, forKey: .created)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
            
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(payouts, forKey: .payouts)
            
            
            
            
            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)
            
            
            
            
            try? container.encodeIfPresent(users, forKey: .users)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
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
            
            case success = "success"
            
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
        
        public var isDefault: Bool
        
        public var isActive: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueExternalId = "unique_external_id"
            
            case isDefault = "is_default"
            
            case isActive = "is_active"
            
        }

        public init(isActive: Bool, isDefault: Bool, uniqueExternalId: String) {
            
            self.uniqueExternalId = uniqueExternalId
            
            self.isDefault = isDefault
            
            self.isActive = isActive
            
        }

        public func duplicate() -> UpdatePayoutRequest {
            let dict = self.dictionary!
            let copy = UpdatePayoutRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
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
        
        
        public var data: [[String: Any]]
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case success = "success"
            
        }

        public init(data: [[String: Any]], success: Bool) {
            
            self.data = data
            
            self.success = success
            
        }

        public func duplicate() -> SubscriptionPaymentMethodResponse {
            let dict = self.dictionary!
            let copy = SubscriptionPaymentMethodResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                data = try container.decode([[String: Any]].self, forKey: .data)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
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
        
        
        public var data: [String: Any]
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case success = "success"
            
        }

        public init(data: [String: Any], success: Bool) {
            
            self.data = data
            
            self.success = success
            
        }

        public func duplicate() -> SaveSubscriptionSetupIntentResponse {
            let dict = self.dictionary!
            let copy = SaveSubscriptionSetupIntentResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                data = try container.decode([String: Any].self, forKey: .data)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
    /*
        Model: BeneficiaryModeDetails
        Used By: Payment
    */

    class BeneficiaryModeDetails: Codable {
        
        
        public var accountNo: String
        
        public var accountHolder: String
        
        public var ifscCode: String
        
        public var wallet: String?
        
        public var email: String
        
        public var comment: String?
        
        public var branchName: String
        
        public var bankName: String
        
        public var vpa: String?
        
        public var mobile: String
        
        public var address: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case accountNo = "account_no"
            
            case accountHolder = "account_holder"
            
            case ifscCode = "ifsc_code"
            
            case wallet = "wallet"
            
            case email = "email"
            
            case comment = "comment"
            
            case branchName = "branch_name"
            
            case bankName = "bank_name"
            
            case vpa = "vpa"
            
            case mobile = "mobile"
            
            case address = "address"
            
        }

        public init(accountHolder: String, accountNo: String, address: String?, bankName: String, branchName: String, comment: String?, email: String, ifscCode: String, mobile: String, vpa: String?, wallet: String?) {
            
            self.accountNo = accountNo
            
            self.accountHolder = accountHolder
            
            self.ifscCode = ifscCode
            
            self.wallet = wallet
            
            self.email = email
            
            self.comment = comment
            
            self.branchName = branchName
            
            self.bankName = bankName
            
            self.vpa = vpa
            
            self.mobile = mobile
            
            self.address = address
            
        }

        public func duplicate() -> BeneficiaryModeDetails {
            let dict = self.dictionary!
            let copy = BeneficiaryModeDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
            
            
            
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
            
            
            
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
            
            
            
                do {
                    wallet = try container.decode(String.self, forKey: .wallet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                branchName = try container.decode(String.self, forKey: .branchName)
                
            
            
            
                bankName = try container.decode(String.self, forKey: .bankName)
                
            
            
            
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                mobile = try container.decode(String.self, forKey: .mobile)
                
            
            
            
                do {
                    address = try container.decode(String.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encode(wallet, forKey: .wallet)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encode(vpa, forKey: .vpa)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
        }
        
    }
    
    /*
        Model: AddBeneficiaryDetailsRequest
        Used By: Payment
    */

    class AddBeneficiaryDetailsRequest: Codable {
        
        
        public var shipmentId: String
        
        public var otp: String?
        
        public var orderId: String
        
        public var delights: Bool
        
        public var transferMode: String
        
        public var details: BeneficiaryModeDetails
        
        public var requestId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentId = "shipment_id"
            
            case otp = "otp"
            
            case orderId = "order_id"
            
            case delights = "delights"
            
            case transferMode = "transfer_mode"
            
            case details = "details"
            
            case requestId = "request_id"
            
        }

        public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String?, requestId: String?, shipmentId: String, transferMode: String) {
            
            self.shipmentId = shipmentId
            
            self.otp = otp
            
            self.orderId = orderId
            
            self.delights = delights
            
            self.transferMode = transferMode
            
            self.details = details
            
            self.requestId = requestId
            
        }

        public func duplicate() -> AddBeneficiaryDetailsRequest {
            let dict = self.dictionary!
            let copy = AddBeneficiaryDetailsRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                do {
                    otp = try container.decode(String.self, forKey: .otp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                delights = try container.decode(Bool.self, forKey: .delights)
                
            
            
            
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
            
            
            
                details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(delights, forKey: .delights)
            
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
        }
        
    }
    
    /*
        Model: RefundAccountResponse
        Used By: Payment
    */

    class RefundAccountResponse: Codable {
        
        
        public var message: String
        
        public var data: [String: Any]?
        
        public var success: Bool
        
        public var isVerifiedFlag: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case data = "data"
            
            case success = "success"
            
            case isVerifiedFlag = "is_verified_flag"
            
        }

        public init(data: [String: Any]?, isVerifiedFlag: Bool?, message: String, success: Bool) {
            
            self.message = message
            
            self.data = data
            
            self.success = success
            
            self.isVerifiedFlag = isVerifiedFlag
            
        }

        public func duplicate() -> RefundAccountResponse {
            let dict = self.dictionary!
            let copy = RefundAccountResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
            
            
        }
        
    }
    
    /*
        Model: NotFoundResourceError
        Used By: Payment
    */

    class NotFoundResourceError: Codable {
        
        
        public var description: String
        
        public var success: Bool
        
        public var code: String
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case success = "success"
            
            case code = "code"
            
        }

        public init(code: String, description: String, success: Bool) {
            
            self.description = description
            
            self.success = success
            
            self.code = code
            
        }

        public func duplicate() -> NotFoundResourceError {
            let dict = self.dictionary!
            let copy = NotFoundResourceError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
        }
        
    }
    
    /*
        Model: IfscCodeResponse
        Used By: Payment
    */

    class IfscCodeResponse: Codable {
        
        
        public var bankName: String
        
        public var branchName: String
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case bankName = "bank_name"
            
            case branchName = "branch_name"
            
            case success = "success"
            
        }

        public init(bankName: String, branchName: String, success: Bool?) {
            
            self.bankName = bankName
            
            self.branchName = branchName
            
            self.success = success
            
        }

        public func duplicate() -> IfscCodeResponse {
            let dict = self.dictionary!
            let copy = IfscCodeResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                bankName = try container.decode(String.self, forKey: .bankName)
                
            
            
            
                branchName = try container.decode(String.self, forKey: .branchName)
                
            
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
    /*
        Model: OrderBeneficiaryDetails
        Used By: Payment
    */

    class OrderBeneficiaryDetails: Codable {
        
        
        public var ifscCode: String
        
        public var createdOn: String
        
        public var address: String
        
        public var subtitle: String
        
        public var isActive: Bool
        
        public var modifiedOn: String
        
        public var comment: Bool?
        
        public var id: Int
        
        public var bankName: String
        
        public var displayName: String
        
        public var branchName: Bool?
        
        public var accountNo: String
        
        public var accountHolder: String
        
        public var delightsUserName: String?
        
        public var email: String
        
        public var title: String
        
        public var beneficiaryId: String
        
        public var transferMode: String
        
        public var mobile: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case ifscCode = "ifsc_code"
            
            case createdOn = "created_on"
            
            case address = "address"
            
            case subtitle = "subtitle"
            
            case isActive = "is_active"
            
            case modifiedOn = "modified_on"
            
            case comment = "comment"
            
            case id = "id"
            
            case bankName = "bank_name"
            
            case displayName = "display_name"
            
            case branchName = "branch_name"
            
            case accountNo = "account_no"
            
            case accountHolder = "account_holder"
            
            case delightsUserName = "delights_user_name"
            
            case email = "email"
            
            case title = "title"
            
            case beneficiaryId = "beneficiary_id"
            
            case transferMode = "transfer_mode"
            
            case mobile = "mobile"
            
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool?, comment: Bool?, createdOn: String, delightsUserName: String?, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool?, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            
            self.ifscCode = ifscCode
            
            self.createdOn = createdOn
            
            self.address = address
            
            self.subtitle = subtitle
            
            self.isActive = isActive
            
            self.modifiedOn = modifiedOn
            
            self.comment = comment
            
            self.id = id
            
            self.bankName = bankName
            
            self.displayName = displayName
            
            self.branchName = branchName
            
            self.accountNo = accountNo
            
            self.accountHolder = accountHolder
            
            self.delightsUserName = delightsUserName
            
            self.email = email
            
            self.title = title
            
            self.beneficiaryId = beneficiaryId
            
            self.transferMode = transferMode
            
            self.mobile = mobile
            
        }

        public func duplicate() -> OrderBeneficiaryDetails {
            let dict = self.dictionary!
            let copy = OrderBeneficiaryDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
                subtitle = try container.decode(String.self, forKey: .subtitle)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                do {
                    comment = try container.decode(Bool.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
            
                bankName = try container.decode(String.self, forKey: .bankName)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                do {
                    branchName = try container.decode(Bool.self, forKey: .branchName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
            
            
            
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
            
            
            
                do {
                    delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
            
            
            
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
            
            
            
                do {
                    mobile = try container.decode(Bool.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encode(delightsUserName, forKey: .delightsUserName)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
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
        Model: MultiTenderPaymentMeta
        Used By: Payment
    */

    class MultiTenderPaymentMeta: Codable {
        
        
        public var paymentGateway: String?
        
        public var currentStatus: String?
        
        public var extraMeta: [String: Any]?
        
        public var paymentId: String?
        
        public var orderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentGateway = "payment_gateway"
            
            case currentStatus = "current_status"
            
            case extraMeta = "extra_meta"
            
            case paymentId = "payment_id"
            
            case orderId = "order_id"
            
        }

        public init(currentStatus: String?, extraMeta: [String: Any]?, orderId: String?, paymentGateway: String?, paymentId: String?) {
            
            self.paymentGateway = paymentGateway
            
            self.currentStatus = currentStatus
            
            self.extraMeta = extraMeta
            
            self.paymentId = paymentId
            
            self.orderId = orderId
            
        }

        public func duplicate() -> MultiTenderPaymentMeta {
            let dict = self.dictionary!
            let copy = MultiTenderPaymentMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentGateway = try container.decode(String.self, forKey: .paymentGateway)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentStatus = try container.decode(String.self, forKey: .currentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentId = try container.decode(String.self, forKey: .paymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encode(extraMeta, forKey: .extraMeta)
            
            
            
            
            try? container.encodeIfPresent(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
        }
        
    }
    
    /*
        Model: MultiTenderPaymentMethod
        Used By: Payment
    */

    class MultiTenderPaymentMethod: Codable {
        
        
        public var amount: Double
        
        public var mode: String
        
        public var name: String?
        
        public var meta: MultiTenderPaymentMeta?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case mode = "mode"
            
            case name = "name"
            
            case meta = "meta"
            
        }

        public init(amount: Double, meta: MultiTenderPaymentMeta?, mode: String, name: String?) {
            
            self.amount = amount
            
            self.mode = mode
            
            self.name = name
            
            self.meta = meta
            
        }

        public func duplicate() -> MultiTenderPaymentMethod {
            let dict = self.dictionary!
            let copy = MultiTenderPaymentMethod(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(MultiTenderPaymentMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
    
    /*
        Model: PaymentConfirmationRequest
        Used By: Payment
    */

    class PaymentConfirmationRequest: Codable {
        
        
        public var orderId: String
        
        public var paymentMethods: [MultiTenderPaymentMethod]
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
            case paymentMethods = "payment_methods"
            
        }

        public init(orderId: String, paymentMethods: [MultiTenderPaymentMethod]) {
            
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
                
            
            
            
                paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)
                
            
            
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
        
        
        public var message: String
        
        public var orderId: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case orderId = "order_id"
            
            case success = "success"
            
        }

        public init(message: String, orderId: String, success: Bool) {
            
            self.message = message
            
            self.orderId = orderId
            
            self.success = success
            
        }

        public func duplicate() -> PaymentConfirmationResponse {
            let dict = self.dictionary!
            let copy = PaymentConfirmationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
}
