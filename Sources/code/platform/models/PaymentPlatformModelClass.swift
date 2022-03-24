import Foundation


import Foundation
public extension PlatformClient {
    
    /*
        Model: PaymentGatewayConfigResponse
        Used By: Payment
    */

    class PaymentGatewayConfigResponse: Codable {
        
        
        public var excludedFields: [String]
        
        public var appId: String
        
        public var displayFields: [String]
        
        public var created: Bool
        
        public var success: Bool
        
        public var aggregators: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case excludedFields = "excluded_fields"
            
            case appId = "app_id"
            
            case displayFields = "display_fields"
            
            case created = "created"
            
            case success = "success"
            
            case aggregators = "aggregators"
            
        }

        public init(aggregators: [[String: Any]]?, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            
            self.excludedFields = excludedFields
            
            self.appId = appId
            
            self.displayFields = displayFields
            
            self.created = created
            
            self.success = success
            
            self.aggregators = aggregators
            
        }

        public func duplicate() -> PaymentGatewayConfigResponse {
            let dict = self.dictionary!
            let copy = PaymentGatewayConfigResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                excludedFields = try container.decode([String].self, forKey: .excludedFields)
                
            
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                displayFields = try container.decode([String].self, forKey: .displayFields)
                
            
            
            
                created = try container.decode(Bool.self, forKey: .created)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    aggregators = try container.decode([[String: Any]].self, forKey: .aggregators)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(displayFields, forKey: .displayFields)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
            
            
        }
        
    }
    
    /*
        Model: ErrorCodeDescription
        Used By: Payment
    */

    class ErrorCodeDescription: Codable {
        
        
        public var code: String
        
        public var description: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case description = "description"
            
            case success = "success"
            
        }

        public init(code: String, description: String, success: Bool) {
            
            self.code = code
            
            self.description = description
            
            self.success = success
            
        }

        public func duplicate() -> ErrorCodeDescription {
            let dict = self.dictionary!
            let copy = ErrorCodeDescription(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
    /*
        Model: PaymentGatewayConfig
        Used By: Payment
    */

    class PaymentGatewayConfig: Codable {
        
        
        public var key: String
        
        public var isActive: Bool?
        
        public var secret: String
        
        public var merchantSalt: String
        
        public var configType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case isActive = "is_active"
            
            case secret = "secret"
            
            case merchantSalt = "merchant_salt"
            
            case configType = "config_type"
            
        }

        public init(configType: String, isActive: Bool?, key: String, merchantSalt: String, secret: String) {
            
            self.key = key
            
            self.isActive = isActive
            
            self.secret = secret
            
            self.merchantSalt = merchantSalt
            
            self.configType = configType
            
        }

        public func duplicate() -> PaymentGatewayConfig {
            let dict = self.dictionary!
            let copy = PaymentGatewayConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                secret = try container.decode(String.self, forKey: .secret)
                
            
            
            
                merchantSalt = try container.decode(String.self, forKey: .merchantSalt)
                
            
            
            
                configType = try container.decode(String.self, forKey: .configType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encode(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            
            
            
            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)
            
            
            
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            
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
        
        
        public var aggregator: [String]
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case success = "success"
            
        }

        public init(aggregator: [String], success: Bool) {
            
            self.aggregator = aggregator
            
            self.success = success
            
        }

        public func duplicate() -> PaymentGatewayToBeReviewed {
            let dict = self.dictionary!
            let copy = PaymentGatewayToBeReviewed(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                aggregator = try container.decode([String].self, forKey: .aggregator)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
    /*
        Model: ErrorCodeAndDescription
        Used By: Payment
    */

    class ErrorCodeAndDescription: Codable {
        
        
        public var code: String
        
        public var description: String
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case description = "description"
            
        }

        public init(code: String, description: String) {
            
            self.code = code
            
            self.description = description
            
        }

        public func duplicate() -> ErrorCodeAndDescription {
            let dict = self.dictionary!
            let copy = ErrorCodeAndDescription(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
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
        
        
        public var logos: PaymentModeLogo?
        
        public var code: String?
        
        public var packageName: String?
        
        public var displayName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case logos = "logos"
            
            case code = "code"
            
            case packageName = "package_name"
            
            case displayName = "display_name"
            
        }

        public init(code: String?, displayName: String?, logos: PaymentModeLogo?, packageName: String?) {
            
            self.logos = logos
            
            self.code = code
            
            self.packageName = packageName
            
            self.displayName = displayName
            
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
                    packageName = try container.decode(String.self, forKey: .packageName)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(logos, forKey: .logos)
            
            
            
            
            try? container.encode(code, forKey: .code)
            
            
            
            
            try? container.encode(packageName, forKey: .packageName)
            
            
            
            
            try? container.encode(displayName, forKey: .displayName)
            
            
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
        
        
        public var cardId: String?
        
        public var intentApp: [IntentApp]?
        
        public var expYear: Int?
        
        public var intentFlow: Bool?
        
        public var code: String?
        
        public var name: String?
        
        public var expMonth: Int?
        
        public var aggregatorName: String
        
        public var expired: Bool?
        
        public var displayName: String?
        
        public var cardType: String?
        
        public var cardIsin: String?
        
        public var cardBrandImage: String?
        
        public var cardBrand: String?
        
        public var cardFingerprint: String?
        
        public var cardName: String?
        
        public var intentAppErrorDictList: [IntentAppErrorList]?
        
        public var nickname: String?
        
        public var intentAppErrorList: [String]?
        
        public var displayPriority: Int?
        
        public var merchantCode: String?
        
        public var fyndVpa: String?
        
        public var cardReference: String?
        
        public var cardIssuer: String?
        
        public var cardNumber: String?
        
        public var logoUrl: PaymentModeLogo?
        
        public var retryCount: Int?
        
        public var cardToken: String?
        
        public var timeout: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case cardId = "card_id"
            
            case intentApp = "intent_app"
            
            case expYear = "exp_year"
            
            case intentFlow = "intent_flow"
            
            case code = "code"
            
            case name = "name"
            
            case expMonth = "exp_month"
            
            case aggregatorName = "aggregator_name"
            
            case expired = "expired"
            
            case displayName = "display_name"
            
            case cardType = "card_type"
            
            case cardIsin = "card_isin"
            
            case cardBrandImage = "card_brand_image"
            
            case cardBrand = "card_brand"
            
            case cardFingerprint = "card_fingerprint"
            
            case cardName = "card_name"
            
            case intentAppErrorDictList = "intent_app_error_dict_list"
            
            case nickname = "nickname"
            
            case intentAppErrorList = "intent_app_error_list"
            
            case displayPriority = "display_priority"
            
            case merchantCode = "merchant_code"
            
            case fyndVpa = "fynd_vpa"
            
            case cardReference = "card_reference"
            
            case cardIssuer = "card_issuer"
            
            case cardNumber = "card_number"
            
            case logoUrl = "logo_url"
            
            case retryCount = "retry_count"
            
            case cardToken = "card_token"
            
            case timeout = "timeout"
            
        }

        public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, fyndVpa: String?, intentApp: [IntentApp]?, intentAppErrorDictList: [IntentAppErrorList]?, intentAppErrorList: [String]?, intentFlow: Bool?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?, retryCount: Int?, timeout: Int?) {
            
            self.cardId = cardId
            
            self.intentApp = intentApp
            
            self.expYear = expYear
            
            self.intentFlow = intentFlow
            
            self.code = code
            
            self.name = name
            
            self.expMonth = expMonth
            
            self.aggregatorName = aggregatorName
            
            self.expired = expired
            
            self.displayName = displayName
            
            self.cardType = cardType
            
            self.cardIsin = cardIsin
            
            self.cardBrandImage = cardBrandImage
            
            self.cardBrand = cardBrand
            
            self.cardFingerprint = cardFingerprint
            
            self.cardName = cardName
            
            self.intentAppErrorDictList = intentAppErrorDictList
            
            self.nickname = nickname
            
            self.intentAppErrorList = intentAppErrorList
            
            self.displayPriority = displayPriority
            
            self.merchantCode = merchantCode
            
            self.fyndVpa = fyndVpa
            
            self.cardReference = cardReference
            
            self.cardIssuer = cardIssuer
            
            self.cardNumber = cardNumber
            
            self.logoUrl = logoUrl
            
            self.retryCount = retryCount
            
            self.cardToken = cardToken
            
            self.timeout = timeout
            
        }

        public func duplicate() -> PaymentModeList {
            let dict = self.dictionary!
            let copy = PaymentModeList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cardId = try container.decode(String.self, forKey: .cardId)
                
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
                    expYear = try container.decode(Int.self, forKey: .expYear)
                
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
                    code = try container.decode(String.self, forKey: .code)
                
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
                    expMonth = try container.decode(Int.self, forKey: .expMonth)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
            
            
            
                do {
                    expired = try container.decode(Bool.self, forKey: .expired)
                
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
                    cardType = try container.decode(String.self, forKey: .cardType)
                
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
                    cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)
                
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
                    cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)
                
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
                    intentAppErrorDictList = try container.decode([IntentAppErrorList].self, forKey: .intentAppErrorDictList)
                
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
                    intentAppErrorList = try container.decode([String].self, forKey: .intentAppErrorList)
                
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
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
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
                    cardReference = try container.decode(String.self, forKey: .cardReference)
                
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
                    cardToken = try container.decode(String.self, forKey: .cardToken)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(cardId, forKey: .cardId)
            
            
            
            
            try? container.encode(intentApp, forKey: .intentApp)
            
            
            
            
            try? container.encode(expYear, forKey: .expYear)
            
            
            
            
            try? container.encode(intentFlow, forKey: .intentFlow)
            
            
            
            
            try? container.encode(code, forKey: .code)
            
            
            
            
            try? container.encode(name, forKey: .name)
            
            
            
            
            try? container.encode(expMonth, forKey: .expMonth)
            
            
            
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            
            
            
            try? container.encode(expired, forKey: .expired)
            
            
            
            
            try? container.encode(displayName, forKey: .displayName)
            
            
            
            
            try? container.encode(cardType, forKey: .cardType)
            
            
            
            
            try? container.encode(cardIsin, forKey: .cardIsin)
            
            
            
            
            try? container.encode(cardBrandImage, forKey: .cardBrandImage)
            
            
            
            
            try? container.encode(cardBrand, forKey: .cardBrand)
            
            
            
            
            try? container.encode(cardFingerprint, forKey: .cardFingerprint)
            
            
            
            
            try? container.encode(cardName, forKey: .cardName)
            
            
            
            
            try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)
            
            
            
            
            try? container.encode(nickname, forKey: .nickname)
            
            
            
            
            try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)
            
            
            
            
            try? container.encode(displayPriority, forKey: .displayPriority)
            
            
            
            
            try? container.encode(merchantCode, forKey: .merchantCode)
            
            
            
            
            try? container.encode(fyndVpa, forKey: .fyndVpa)
            
            
            
            
            try? container.encode(cardReference, forKey: .cardReference)
            
            
            
            
            try? container.encode(cardIssuer, forKey: .cardIssuer)
            
            
            
            
            try? container.encode(cardNumber, forKey: .cardNumber)
            
            
            
            
            try? container.encode(logoUrl, forKey: .logoUrl)
            
            
            
            
            try? container.encode(retryCount, forKey: .retryCount)
            
            
            
            
            try? container.encode(cardToken, forKey: .cardToken)
            
            
            
            
            try? container.encode(timeout, forKey: .timeout)
            
            
        }
        
    }
    
    /*
        Model: RootPaymentMode
        Used By: Payment
    */

    class RootPaymentMode: Codable {
        
        
        public var displayName: String
        
        public var logo: String?
        
        public var anonymousEnable: Bool?
        
        public var displayPriority: Int
        
        public var list: [PaymentModeList]?
        
        public var name: String
        
        public var addCardEnabled: Bool?
        
        public var logoUrl: PaymentModeLogo?
        
        public var aggregatorName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case logo = "logo"
            
            case anonymousEnable = "anonymous_enable"
            
            case displayPriority = "display_priority"
            
            case list = "list"
            
            case name = "name"
            
            case addCardEnabled = "add_card_enabled"
            
            case logoUrl = "logo_url"
            
            case aggregatorName = "aggregator_name"
            
        }

        public init(addCardEnabled: Bool?, aggregatorName: String?, anonymousEnable: Bool?, displayName: String, displayPriority: Int, list: [PaymentModeList]?, logo: String?, logoUrl: PaymentModeLogo?, name: String) {
            
            self.displayName = displayName
            
            self.logo = logo
            
            self.anonymousEnable = anonymousEnable
            
            self.displayPriority = displayPriority
            
            self.list = list
            
            self.name = name
            
            self.addCardEnabled = addCardEnabled
            
            self.logoUrl = logoUrl
            
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
                
            
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
            
            
            
                do {
                    list = try container.decode([PaymentModeList].self, forKey: .list)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)
                
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
            
            
            
            
            try? container.encode(logo, forKey: .logo)
            
            
            
            
            try? container.encode(anonymousEnable, forKey: .anonymousEnable)
            
            
            
            
            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
            
            
            
            
            try? container.encodeIfPresent(list, forKey: .list)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encode(addCardEnabled, forKey: .addCardEnabled)
            
            
            
            
            try? container.encode(logoUrl, forKey: .logoUrl)
            
            
            
            
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
        
        
        public var paymentOptions: PaymentOptions
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentOptions = "payment_options"
            
            case success = "success"
            
        }

        public init(paymentOptions: PaymentOptions, success: Bool) {
            
            self.paymentOptions = paymentOptions
            
            self.success = success
            
        }

        public func duplicate() -> PaymentOptionsResponse {
            let dict = self.dictionary!
            let copy = PaymentOptionsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentOptions = try container.decode(PaymentOptions.self, forKey: .paymentOptions)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
    /*
        Model: PayoutsResponse
        Used By: Payment
    */

    class PayoutsResponse: Codable {
        
        
        public var uniqueTransferNo: [String: Any]
        
        public var moreAttributes: [String: Any]
        
        public var isActive: Bool
        
        public var transferType: String
        
        public var payoutsAggregators: [[String: Any]]
        
        public var customers: [String: Any]
        
        public var isDefault: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueTransferNo = "unique_transfer_no"
            
            case moreAttributes = "more_attributes"
            
            case isActive = "is_active"
            
            case transferType = "transfer_type"
            
            case payoutsAggregators = "payouts_aggregators"
            
            case customers = "customers"
            
            case isDefault = "is_default"
            
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            
            self.uniqueTransferNo = uniqueTransferNo
            
            self.moreAttributes = moreAttributes
            
            self.isActive = isActive
            
            self.transferType = transferType
            
            self.payoutsAggregators = payoutsAggregators
            
            self.customers = customers
            
            self.isDefault = isDefault
            
        }

        public func duplicate() -> PayoutsResponse {
            let dict = self.dictionary!
            let copy = PayoutsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)
                
            
            
            
                moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
                
            
            
            
                payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)
                
            
            
            
                customers = try container.decode([String: Any].self, forKey: .customers)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            
            
            
            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
            
            
            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)
            
            
            
            
            try? container.encodeIfPresent(customers, forKey: .customers)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
        }
        
    }
    
    /*
        Model: PayoutBankDetails
        Used By: Payment
    */

    class PayoutBankDetails: Codable {
        
        
        public var state: String?
        
        public var pincode: Int?
        
        public var accountType: String
        
        public var accountHolder: String?
        
        public var country: String?
        
        public var bankName: String?
        
        public var accountNo: String?
        
        public var branchName: String?
        
        public var ifscCode: String
        
        public var city: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case state = "state"
            
            case pincode = "pincode"
            
            case accountType = "account_type"
            
            case accountHolder = "account_holder"
            
            case country = "country"
            
            case bankName = "bank_name"
            
            case accountNo = "account_no"
            
            case branchName = "branch_name"
            
            case ifscCode = "ifsc_code"
            
            case city = "city"
            
        }

        public init(accountHolder: String?, accountNo: String?, accountType: String, bankName: String?, branchName: String?, city: String?, country: String?, ifscCode: String, pincode: Int?, state: String?) {
            
            self.state = state
            
            self.pincode = pincode
            
            self.accountType = accountType
            
            self.accountHolder = accountHolder
            
            self.country = country
            
            self.bankName = bankName
            
            self.accountNo = accountNo
            
            self.branchName = branchName
            
            self.ifscCode = ifscCode
            
            self.city = city
            
        }

        public func duplicate() -> PayoutBankDetails {
            let dict = self.dictionary!
            let copy = PayoutBankDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    state = try container.decode(String.self, forKey: .state)
                
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
                
            
            
                accountType = try container.decode(String.self, forKey: .accountType)
                
            
            
            
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
                
            
            
                do {
                    bankName = try container.decode(String.self, forKey: .bankName)
                
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
                
            
            
                do {
                    branchName = try container.decode(String.self, forKey: .branchName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
            
            
            
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(accountType, forKey: .accountType)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
        }
        
    }
    
    /*
        Model: PayoutRequest
        Used By: Payment
    */

    class PayoutRequest: Codable {
        
        
        public var uniqueExternalId: String
        
        public var users: [String: Any]
        
        public var transferType: String
        
        public var isActive: Bool
        
        public var aggregator: String
        
        public var bankDetails: PayoutBankDetails
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueExternalId = "unique_external_id"
            
            case users = "users"
            
            case transferType = "transfer_type"
            
            case isActive = "is_active"
            
            case aggregator = "aggregator"
            
            case bankDetails = "bank_details"
            
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            
            self.uniqueExternalId = uniqueExternalId
            
            self.users = users
            
            self.transferType = transferType
            
            self.isActive = isActive
            
            self.aggregator = aggregator
            
            self.bankDetails = bankDetails
            
        }

        public func duplicate() -> PayoutRequest {
            let dict = self.dictionary!
            let copy = PayoutRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
                
            
            
            
                users = try container.decode([String: Any].self, forKey: .users)
                
            
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
            
            
            
            
            try? container.encodeIfPresent(users, forKey: .users)
            
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
            
            
        }
        
    }
    
    /*
        Model: PayoutResponse
        Used By: Payment
    */

    class PayoutResponse: Codable {
        
        
        public var users: [String: Any]
        
        public var uniqueTransferNo: String
        
        public var isActive: Bool
        
        public var transferType: String
        
        public var created: Bool
        
        public var success: Bool
        
        public var payouts: [String: Any]
        
        public var aggregator: String
        
        public var paymentStatus: String
        
        public var bankDetails: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case users = "users"
            
            case uniqueTransferNo = "unique_transfer_no"
            
            case isActive = "is_active"
            
            case transferType = "transfer_type"
            
            case created = "created"
            
            case success = "success"
            
            case payouts = "payouts"
            
            case aggregator = "aggregator"
            
            case paymentStatus = "payment_status"
            
            case bankDetails = "bank_details"
            
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            
            self.users = users
            
            self.uniqueTransferNo = uniqueTransferNo
            
            self.isActive = isActive
            
            self.transferType = transferType
            
            self.created = created
            
            self.success = success
            
            self.payouts = payouts
            
            self.aggregator = aggregator
            
            self.paymentStatus = paymentStatus
            
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
                
            
            
            
                uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
                
            
            
            
                created = try container.decode(Bool.self, forKey: .created)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                payouts = try container.decode([String: Any].self, forKey: .payouts)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                paymentStatus = try container.decode(String.self, forKey: .paymentStatus)
                
            
            
            
                bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(users, forKey: .users)
            
            
            
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(payouts, forKey: .payouts)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)
            
            
            
            
            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
            
            
        }
        
    }
    
    /*
        Model: UpdatePayoutResponse
        Used By: Payment
    */

    class UpdatePayoutResponse: Codable {
        
        
        public var isActive: Bool
        
        public var isDefault: Bool
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case isDefault = "is_default"
            
            case success = "success"
            
        }

        public init(isActive: Bool, isDefault: Bool, success: Bool) {
            
            self.isActive = isActive
            
            self.isDefault = isDefault
            
            self.success = success
            
        }

        public func duplicate() -> UpdatePayoutResponse {
            let dict = self.dictionary!
            let copy = UpdatePayoutResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
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
        
        
        public var aggregator: String
        
        public var config: [String: Any]
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case config = "config"
            
            case success = "success"
            
        }

        public init(aggregator: String, config: [String: Any], success: Bool) {
            
            self.aggregator = aggregator
            
            self.config = config
            
            self.success = success
            
        }

        public func duplicate() -> SubscriptionConfigResponse {
            let dict = self.dictionary!
            let copy = SubscriptionConfigResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                config = try container.decode([String: Any].self, forKey: .config)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
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
        
        
        public var address: String?
        
        public var comment: String?
        
        public var accountHolder: String
        
        public var bankName: String
        
        public var accountNo: String
        
        public var vpa: String?
        
        public var wallet: String?
        
        public var email: String
        
        public var mobile: String
        
        public var branchName: String
        
        public var ifscCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
            case comment = "comment"
            
            case accountHolder = "account_holder"
            
            case bankName = "bank_name"
            
            case accountNo = "account_no"
            
            case vpa = "vpa"
            
            case wallet = "wallet"
            
            case email = "email"
            
            case mobile = "mobile"
            
            case branchName = "branch_name"
            
            case ifscCode = "ifsc_code"
            
        }

        public init(accountHolder: String, accountNo: String, address: String?, bankName: String, branchName: String, comment: String?, email: String, ifscCode: String, mobile: String, vpa: String?, wallet: String?) {
            
            self.address = address
            
            self.comment = comment
            
            self.accountHolder = accountHolder
            
            self.bankName = bankName
            
            self.accountNo = accountNo
            
            self.vpa = vpa
            
            self.wallet = wallet
            
            self.email = email
            
            self.mobile = mobile
            
            self.branchName = branchName
            
            self.ifscCode = ifscCode
            
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
                
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
            
            
            
                bankName = try container.decode(String.self, forKey: .bankName)
                
            
            
            
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
            
            
            
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    wallet = try container.decode(String.self, forKey: .wallet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                mobile = try container.decode(String.self, forKey: .mobile)
                
            
            
            
                branchName = try container.decode(String.self, forKey: .branchName)
                
            
            
            
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encode(vpa, forKey: .vpa)
            
            
            
            
            try? container.encode(wallet, forKey: .wallet)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
        }
        
    }
    
    /*
        Model: AddBeneficiaryDetailsRequest
        Used By: Payment
    */

    class AddBeneficiaryDetailsRequest: Codable {
        
        
        public var transferMode: String
        
        public var requestId: String?
        
        public var delights: Bool
        
        public var shipmentId: String
        
        public var orderId: String
        
        public var details: BeneficiaryModeDetails
        
        public var otp: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case transferMode = "transfer_mode"
            
            case requestId = "request_id"
            
            case delights = "delights"
            
            case shipmentId = "shipment_id"
            
            case orderId = "order_id"
            
            case details = "details"
            
            case otp = "otp"
            
        }

        public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String?, requestId: String?, shipmentId: String, transferMode: String) {
            
            self.transferMode = transferMode
            
            self.requestId = requestId
            
            self.delights = delights
            
            self.shipmentId = shipmentId
            
            self.orderId = orderId
            
            self.details = details
            
            self.otp = otp
            
        }

        public func duplicate() -> AddBeneficiaryDetailsRequest {
            let dict = self.dictionary!
            let copy = AddBeneficiaryDetailsRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
            
            
            
                do {
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                delights = try container.decode(Bool.self, forKey: .delights)
                
            
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)
                
            
            
            
                do {
                    otp = try container.decode(String.self, forKey: .otp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            
            try? container.encodeIfPresent(delights, forKey: .delights)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
            
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            
        }
        
    }
    
    /*
        Model: RefundAccountResponse
        Used By: Payment
    */

    class RefundAccountResponse: Codable {
        
        
        public var data: [String: Any]?
        
        public var isVerifiedFlag: Bool?
        
        public var message: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case isVerifiedFlag = "is_verified_flag"
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(data: [String: Any]?, isVerifiedFlag: Bool?, message: String, success: Bool) {
            
            self.data = data
            
            self.isVerifiedFlag = isVerifiedFlag
            
            self.message = message
            
            self.success = success
            
        }

        public func duplicate() -> RefundAccountResponse {
            let dict = self.dictionary!
            let copy = RefundAccountResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
    /*
        Model: NotFoundResourceError
        Used By: Payment
    */

    class NotFoundResourceError: Codable {
        
        
        public var code: String
        
        public var description: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case description = "description"
            
            case success = "success"
            
        }

        public init(code: String, description: String, success: Bool) {
            
            self.code = code
            
            self.description = description
            
            self.success = success
            
        }

        public func duplicate() -> NotFoundResourceError {
            let dict = self.dictionary!
            let copy = NotFoundResourceError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
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
        
        
        public var address: String
        
        public var transferMode: String
        
        public var comment: Bool?
        
        public var delightsUserName: String?
        
        public var modifiedOn: String
        
        public var isActive: Bool
        
        public var branchName: Bool?
        
        public var ifscCode: String
        
        public var displayName: String
        
        public var subtitle: String
        
        public var accountHolder: String
        
        public var mobile: Bool?
        
        public var id: Int
        
        public var beneficiaryId: String
        
        public var title: String
        
        public var createdOn: String
        
        public var bankName: String
        
        public var accountNo: String
        
        public var email: String
        

        public enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
            case transferMode = "transfer_mode"
            
            case comment = "comment"
            
            case delightsUserName = "delights_user_name"
            
            case modifiedOn = "modified_on"
            
            case isActive = "is_active"
            
            case branchName = "branch_name"
            
            case ifscCode = "ifsc_code"
            
            case displayName = "display_name"
            
            case subtitle = "subtitle"
            
            case accountHolder = "account_holder"
            
            case mobile = "mobile"
            
            case id = "id"
            
            case beneficiaryId = "beneficiary_id"
            
            case title = "title"
            
            case createdOn = "created_on"
            
            case bankName = "bank_name"
            
            case accountNo = "account_no"
            
            case email = "email"
            
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool?, comment: Bool?, createdOn: String, delightsUserName: String?, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool?, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            
            self.address = address
            
            self.transferMode = transferMode
            
            self.comment = comment
            
            self.delightsUserName = delightsUserName
            
            self.modifiedOn = modifiedOn
            
            self.isActive = isActive
            
            self.branchName = branchName
            
            self.ifscCode = ifscCode
            
            self.displayName = displayName
            
            self.subtitle = subtitle
            
            self.accountHolder = accountHolder
            
            self.mobile = mobile
            
            self.id = id
            
            self.beneficiaryId = beneficiaryId
            
            self.title = title
            
            self.createdOn = createdOn
            
            self.bankName = bankName
            
            self.accountNo = accountNo
            
            self.email = email
            
        }

        public func duplicate() -> OrderBeneficiaryDetails {
            let dict = self.dictionary!
            let copy = OrderBeneficiaryDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
            
            
            
                do {
                    comment = try container.decode(Bool.self, forKey: .comment)
                
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
                
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    branchName = try container.decode(Bool.self, forKey: .branchName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                subtitle = try container.decode(String.self, forKey: .subtitle)
                
            
            
            
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
            
            
            
                do {
                    mobile = try container.decode(Bool.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
            
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
            
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                bankName = try container.decode(String.self, forKey: .bankName)
                
            
            
            
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
            
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encode(delightsUserName, forKey: .delightsUserName)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
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
        
        
        public var amount: Double
        
        public var name: String?
        
        public var meta: [String: Any]?
        
        public var mode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case name = "name"
            
            case meta = "meta"
            
            case mode = "mode"
            
        }

        public init(amount: Double, meta: [String: Any]?, mode: String, name: String?) {
            
            self.amount = amount
            
            self.name = name
            
            self.meta = meta
            
            self.mode = mode
            
        }

        public func duplicate() -> PaymentConfirmationMode {
            let dict = self.dictionary!
            let copy = PaymentConfirmationMode(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
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
