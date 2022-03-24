import Foundation


import Foundation
public extension PlatformClient {
    
    /*
        Model: PaymentGatewayConfigResponse
        Used By: Payment
    */

    class PaymentGatewayConfigResponse: Codable {
        
        
        public var displayFields: [String]
        
        public var created: Bool
        
        public var aggregators: [[String: Any]]?
        
        public var excludedFields: [String]
        
        public var appId: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case displayFields = "display_fields"
            
            case created = "created"
            
            case aggregators = "aggregators"
            
            case excludedFields = "excluded_fields"
            
            case appId = "app_id"
            
            case success = "success"
            
        }

        public init(aggregators: [[String: Any]]?, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            
            self.displayFields = displayFields
            
            self.created = created
            
            self.aggregators = aggregators
            
            self.excludedFields = excludedFields
            
            self.appId = appId
            
            self.success = success
            
        }

        public func duplicate() -> PaymentGatewayConfigResponse {
            let dict = self.dictionary!
            let copy = PaymentGatewayConfigResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                displayFields = try container.decode([String].self, forKey: .displayFields)
                
            
            
            
                created = try container.decode(Bool.self, forKey: .created)
                
            
            
            
                do {
                    aggregators = try container.decode([[String: Any]].self, forKey: .aggregators)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                excludedFields = try container.decode([String].self, forKey: .excludedFields)
                
            
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(displayFields, forKey: .displayFields)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
            
            
            
            
            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
    /*
        Model: ErrorCodeDescription
        Used By: Payment
    */

    class ErrorCodeDescription: Codable {
        
        
        public var description: String
        
        public var code: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case code = "code"
            
            case success = "success"
            
        }

        public init(code: String, description: String, success: Bool) {
            
            self.description = description
            
            self.code = code
            
            self.success = success
            
        }

        public func duplicate() -> ErrorCodeDescription {
            let dict = self.dictionary!
            let copy = ErrorCodeDescription(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
    /*
        Model: PaymentGatewayConfig
        Used By: Payment
    */

    class PaymentGatewayConfig: Codable {
        
        
        public var key: String
        
        public var secret: String
        
        public var configType: String
        
        public var merchantSalt: String
        
        public var isActive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case secret = "secret"
            
            case configType = "config_type"
            
            case merchantSalt = "merchant_salt"
            
            case isActive = "is_active"
            
        }

        public init(configType: String, isActive: Bool?, key: String, merchantSalt: String, secret: String) {
            
            self.key = key
            
            self.secret = secret
            
            self.configType = configType
            
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
                
            
            
            
                secret = try container.decode(String.self, forKey: .secret)
                
            
            
            
                configType = try container.decode(String.self, forKey: .configType)
                
            
            
            
                merchantSalt = try container.decode(String.self, forKey: .merchantSalt)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            
            
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            
            
            
            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)
            
            
            
            
            try? container.encode(isActive, forKey: .isActive)
            
            
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
        
        public var code: String?
        
        public var packageName: String?
        
        public var logos: PaymentModeLogo?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case code = "code"
            
            case packageName = "package_name"
            
            case logos = "logos"
            
        }

        public init(code: String?, displayName: String?, logos: PaymentModeLogo?, packageName: String?) {
            
            self.displayName = displayName
            
            self.code = code
            
            self.packageName = packageName
            
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
                    logos = try container.decode(PaymentModeLogo.self, forKey: .logos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(displayName, forKey: .displayName)
            
            
            
            
            try? container.encode(code, forKey: .code)
            
            
            
            
            try? container.encode(packageName, forKey: .packageName)
            
            
            
            
            try? container.encode(logos, forKey: .logos)
            
            
        }
        
    }
    
    /*
        Model: PaymentModeList
        Used By: Payment
    */

    class PaymentModeList: Codable {
        
        
        public var displayName: String?
        
        public var cardBrand: String?
        
        public var cardName: String?
        
        public var cardReference: String?
        
        public var cardIssuer: String?
        
        public var cardToken: String?
        
        public var displayPriority: Int?
        
        public var cardBrandImage: String?
        
        public var cardIsin: String?
        
        public var intentAppErrorDictList: [IntentAppErrorList]?
        
        public var code: String?
        
        public var retryCount: Int?
        
        public var intentAppErrorList: [String]?
        
        public var intentFlow: Bool?
        
        public var cardType: String?
        
        public var nickname: String?
        
        public var intentApp: [IntentApp]?
        
        public var expMonth: Int?
        
        public var timeout: Int?
        
        public var expired: Bool?
        
        public var merchantCode: String?
        
        public var name: String?
        
        public var expYear: Int?
        
        public var aggregatorName: String
        
        public var cardNumber: String?
        
        public var cardId: String?
        
        public var fyndVpa: String?
        
        public var cardFingerprint: String?
        
        public var logoUrl: PaymentModeLogo?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case cardBrand = "card_brand"
            
            case cardName = "card_name"
            
            case cardReference = "card_reference"
            
            case cardIssuer = "card_issuer"
            
            case cardToken = "card_token"
            
            case displayPriority = "display_priority"
            
            case cardBrandImage = "card_brand_image"
            
            case cardIsin = "card_isin"
            
            case intentAppErrorDictList = "intent_app_error_dict_list"
            
            case code = "code"
            
            case retryCount = "retry_count"
            
            case intentAppErrorList = "intent_app_error_list"
            
            case intentFlow = "intent_flow"
            
            case cardType = "card_type"
            
            case nickname = "nickname"
            
            case intentApp = "intent_app"
            
            case expMonth = "exp_month"
            
            case timeout = "timeout"
            
            case expired = "expired"
            
            case merchantCode = "merchant_code"
            
            case name = "name"
            
            case expYear = "exp_year"
            
            case aggregatorName = "aggregator_name"
            
            case cardNumber = "card_number"
            
            case cardId = "card_id"
            
            case fyndVpa = "fynd_vpa"
            
            case cardFingerprint = "card_fingerprint"
            
            case logoUrl = "logo_url"
            
        }

        public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, fyndVpa: String?, intentApp: [IntentApp]?, intentAppErrorDictList: [IntentAppErrorList]?, intentAppErrorList: [String]?, intentFlow: Bool?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?, retryCount: Int?, timeout: Int?) {
            
            self.displayName = displayName
            
            self.cardBrand = cardBrand
            
            self.cardName = cardName
            
            self.cardReference = cardReference
            
            self.cardIssuer = cardIssuer
            
            self.cardToken = cardToken
            
            self.displayPriority = displayPriority
            
            self.cardBrandImage = cardBrandImage
            
            self.cardIsin = cardIsin
            
            self.intentAppErrorDictList = intentAppErrorDictList
            
            self.code = code
            
            self.retryCount = retryCount
            
            self.intentAppErrorList = intentAppErrorList
            
            self.intentFlow = intentFlow
            
            self.cardType = cardType
            
            self.nickname = nickname
            
            self.intentApp = intentApp
            
            self.expMonth = expMonth
            
            self.timeout = timeout
            
            self.expired = expired
            
            self.merchantCode = merchantCode
            
            self.name = name
            
            self.expYear = expYear
            
            self.aggregatorName = aggregatorName
            
            self.cardNumber = cardNumber
            
            self.cardId = cardId
            
            self.fyndVpa = fyndVpa
            
            self.cardFingerprint = cardFingerprint
            
            self.logoUrl = logoUrl
            
        }

        public func duplicate() -> PaymentModeList {
            let dict = self.dictionary!
            let copy = PaymentModeList(dictionary: dict)!
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
                    cardBrand = try container.decode(String.self, forKey: .cardBrand)
                
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
                    cardToken = try container.decode(String.self, forKey: .cardToken)
                
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
                    cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)
                
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
                    intentAppErrorDictList = try container.decode([IntentAppErrorList].self, forKey: .intentAppErrorDictList)
                
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
                    retryCount = try container.decode(Int.self, forKey: .retryCount)
                
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
                    intentFlow = try container.decode(Bool.self, forKey: .intentFlow)
                
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
                    expMonth = try container.decode(Int.self, forKey: .expMonth)
                
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
                    expired = try container.decode(Bool.self, forKey: .expired)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                
            
            
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
            
            
            
                do {
                    cardNumber = try container.decode(String.self, forKey: .cardNumber)
                
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
                    fyndVpa = try container.decode(String.self, forKey: .fyndVpa)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(displayName, forKey: .displayName)
            
            
            
            
            try? container.encode(cardBrand, forKey: .cardBrand)
            
            
            
            
            try? container.encode(cardName, forKey: .cardName)
            
            
            
            
            try? container.encode(cardReference, forKey: .cardReference)
            
            
            
            
            try? container.encode(cardIssuer, forKey: .cardIssuer)
            
            
            
            
            try? container.encode(cardToken, forKey: .cardToken)
            
            
            
            
            try? container.encode(displayPriority, forKey: .displayPriority)
            
            
            
            
            try? container.encode(cardBrandImage, forKey: .cardBrandImage)
            
            
            
            
            try? container.encode(cardIsin, forKey: .cardIsin)
            
            
            
            
            try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)
            
            
            
            
            try? container.encode(code, forKey: .code)
            
            
            
            
            try? container.encode(retryCount, forKey: .retryCount)
            
            
            
            
            try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)
            
            
            
            
            try? container.encode(intentFlow, forKey: .intentFlow)
            
            
            
            
            try? container.encode(cardType, forKey: .cardType)
            
            
            
            
            try? container.encode(nickname, forKey: .nickname)
            
            
            
            
            try? container.encode(intentApp, forKey: .intentApp)
            
            
            
            
            try? container.encode(expMonth, forKey: .expMonth)
            
            
            
            
            try? container.encode(timeout, forKey: .timeout)
            
            
            
            
            try? container.encode(expired, forKey: .expired)
            
            
            
            
            try? container.encode(merchantCode, forKey: .merchantCode)
            
            
            
            
            try? container.encode(name, forKey: .name)
            
            
            
            
            try? container.encode(expYear, forKey: .expYear)
            
            
            
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            
            
            
            try? container.encode(cardNumber, forKey: .cardNumber)
            
            
            
            
            try? container.encode(cardId, forKey: .cardId)
            
            
            
            
            try? container.encode(fyndVpa, forKey: .fyndVpa)
            
            
            
            
            try? container.encode(cardFingerprint, forKey: .cardFingerprint)
            
            
            
            
            try? container.encode(logoUrl, forKey: .logoUrl)
            
            
        }
        
    }
    
    /*
        Model: RootPaymentMode
        Used By: Payment
    */

    class RootPaymentMode: Codable {
        
        
        public var displayName: String
        
        public var aggregatorName: String?
        
        public var list: [PaymentModeList]?
        
        public var addCardEnabled: Bool?
        
        public var logo: String?
        
        public var anonymousEnable: Bool?
        
        public var name: String
        
        public var displayPriority: Int
        
        public var logoUrl: PaymentModeLogo?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case aggregatorName = "aggregator_name"
            
            case list = "list"
            
            case addCardEnabled = "add_card_enabled"
            
            case logo = "logo"
            
            case anonymousEnable = "anonymous_enable"
            
            case name = "name"
            
            case displayPriority = "display_priority"
            
            case logoUrl = "logo_url"
            
        }

        public init(addCardEnabled: Bool?, aggregatorName: String?, anonymousEnable: Bool?, displayName: String, displayPriority: Int, list: [PaymentModeList]?, logo: String?, logoUrl: PaymentModeLogo?, name: String) {
            
            self.displayName = displayName
            
            self.aggregatorName = aggregatorName
            
            self.list = list
            
            self.addCardEnabled = addCardEnabled
            
            self.logo = logo
            
            self.anonymousEnable = anonymousEnable
            
            self.name = name
            
            self.displayPriority = displayPriority
            
            self.logoUrl = logoUrl
            
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
                    aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
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
                
            
            
                do {
                    addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
            
            
            
                do {
                    logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encode(aggregatorName, forKey: .aggregatorName)
            
            
            
            
            try? container.encodeIfPresent(list, forKey: .list)
            
            
            
            
            try? container.encode(addCardEnabled, forKey: .addCardEnabled)
            
            
            
            
            try? container.encode(logo, forKey: .logo)
            
            
            
            
            try? container.encode(anonymousEnable, forKey: .anonymousEnable)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
            
            
            
            
            try? container.encode(logoUrl, forKey: .logoUrl)
            
            
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
        
        
        public var moreAttributes: [String: Any]
        
        public var isDefault: Bool
        
        public var uniqueTransferNo: [String: Any]
        
        public var payoutsAggregators: [[String: Any]]
        
        public var transferType: String
        
        public var isActive: Bool
        
        public var customers: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case moreAttributes = "more_attributes"
            
            case isDefault = "is_default"
            
            case uniqueTransferNo = "unique_transfer_no"
            
            case payoutsAggregators = "payouts_aggregators"
            
            case transferType = "transfer_type"
            
            case isActive = "is_active"
            
            case customers = "customers"
            
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            
            self.moreAttributes = moreAttributes
            
            self.isDefault = isDefault
            
            self.uniqueTransferNo = uniqueTransferNo
            
            self.payoutsAggregators = payoutsAggregators
            
            self.transferType = transferType
            
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
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)
                
            
            
            
                payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)
                
            
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                customers = try container.decode([String: Any].self, forKey: .customers)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            
            
            
            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)
            
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(customers, forKey: .customers)
            
            
        }
        
    }
    
    /*
        Model: PayoutBankDetails
        Used By: Payment
    */

    class PayoutBankDetails: Codable {
        
        
        public var city: String?
        
        public var accountType: String
        
        public var bankName: String?
        
        public var branchName: String?
        
        public var accountHolder: String?
        
        public var pincode: Int?
        
        public var state: String?
        
        public var ifscCode: String
        
        public var accountNo: String?
        
        public var country: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case city = "city"
            
            case accountType = "account_type"
            
            case bankName = "bank_name"
            
            case branchName = "branch_name"
            
            case accountHolder = "account_holder"
            
            case pincode = "pincode"
            
            case state = "state"
            
            case ifscCode = "ifsc_code"
            
            case accountNo = "account_no"
            
            case country = "country"
            
        }

        public init(accountHolder: String?, accountNo: String?, accountType: String, bankName: String?, branchName: String?, city: String?, country: String?, ifscCode: String, pincode: Int?, state: String?) {
            
            self.city = city
            
            self.accountType = accountType
            
            self.bankName = bankName
            
            self.branchName = branchName
            
            self.accountHolder = accountHolder
            
            self.pincode = pincode
            
            self.state = state
            
            self.ifscCode = ifscCode
            
            self.accountNo = accountNo
            
            self.country = country
            
        }

        public func duplicate() -> PayoutBankDetails {
            let dict = self.dictionary!
            let copy = PayoutBankDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                accountType = try container.decode(String.self, forKey: .accountType)
                
            
            
            
                do {
                    bankName = try container.decode(String.self, forKey: .bankName)
                
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
                
            
            
                do {
                    accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
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
                
            
            
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
            
            
            
                do {
                    accountNo = try container.decode(String.self, forKey: .accountNo)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(accountType, forKey: .accountType)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
        }
        
    }
    
    /*
        Model: PayoutRequest
        Used By: Payment
    */

    class PayoutRequest: Codable {
        
        
        public var aggregator: String
        
        public var bankDetails: PayoutBankDetails
        
        public var uniqueExternalId: String
        
        public var transferType: String
        
        public var isActive: Bool
        
        public var users: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case bankDetails = "bank_details"
            
            case uniqueExternalId = "unique_external_id"
            
            case transferType = "transfer_type"
            
            case isActive = "is_active"
            
            case users = "users"
            
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            
            self.aggregator = aggregator
            
            self.bankDetails = bankDetails
            
            self.uniqueExternalId = uniqueExternalId
            
            self.transferType = transferType
            
            self.isActive = isActive
            
            self.users = users
            
        }

        public func duplicate() -> PayoutRequest {
            let dict = self.dictionary!
            let copy = PayoutRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)
                
            
            
            
                uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
                
            
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                users = try container.decode([String: Any].self, forKey: .users)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
            
            
            
            
            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
            
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(users, forKey: .users)
            
            
        }
        
    }
    
    /*
        Model: PayoutResponse
        Used By: Payment
    */

    class PayoutResponse: Codable {
        
        
        public var paymentStatus: String
        
        public var payouts: [String: Any]
        
        public var bankDetails: [String: Any]
        
        public var aggregator: String
        
        public var created: Bool
        
        public var uniqueTransferNo: String
        
        public var transferType: String
        
        public var isActive: Bool
        
        public var success: Bool
        
        public var users: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentStatus = "payment_status"
            
            case payouts = "payouts"
            
            case bankDetails = "bank_details"
            
            case aggregator = "aggregator"
            
            case created = "created"
            
            case uniqueTransferNo = "unique_transfer_no"
            
            case transferType = "transfer_type"
            
            case isActive = "is_active"
            
            case success = "success"
            
            case users = "users"
            
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            
            self.paymentStatus = paymentStatus
            
            self.payouts = payouts
            
            self.bankDetails = bankDetails
            
            self.aggregator = aggregator
            
            self.created = created
            
            self.uniqueTransferNo = uniqueTransferNo
            
            self.transferType = transferType
            
            self.isActive = isActive
            
            self.success = success
            
            self.users = users
            
        }

        public func duplicate() -> PayoutResponse {
            let dict = self.dictionary!
            let copy = PayoutResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentStatus = try container.decode(String.self, forKey: .paymentStatus)
                
            
            
            
                payouts = try container.decode([String: Any].self, forKey: .payouts)
                
            
            
            
                bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                created = try container.decode(Bool.self, forKey: .created)
                
            
            
            
                uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
                
            
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                users = try container.decode([String: Any].self, forKey: .users)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)
            
            
            
            
            try? container.encodeIfPresent(payouts, forKey: .payouts)
            
            
            
            
            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(users, forKey: .users)
            
            
        }
        
    }
    
    /*
        Model: UpdatePayoutResponse
        Used By: Payment
    */

    class UpdatePayoutResponse: Codable {
        
        
        public var isDefault: Bool
        
        public var isActive: Bool
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefault = "is_default"
            
            case isActive = "is_active"
            
            case success = "success"
            
        }

        public init(isActive: Bool, isDefault: Bool, success: Bool) {
            
            self.isDefault = isDefault
            
            self.isActive = isActive
            
            self.success = success
            
        }

        public func duplicate() -> UpdatePayoutResponse {
            let dict = self.dictionary!
            let copy = UpdatePayoutResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
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
        
        public var success: Bool
        
        public var config: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case success = "success"
            
            case config = "config"
            
        }

        public init(aggregator: String, config: [String: Any], success: Bool) {
            
            self.aggregator = aggregator
            
            self.success = success
            
            self.config = config
            
        }

        public func duplicate() -> SubscriptionConfigResponse {
            let dict = self.dictionary!
            let copy = SubscriptionConfigResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                config = try container.decode([String: Any].self, forKey: .config)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
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
        
        
        public var vpa: String?
        
        public var wallet: String?
        
        public var bankName: String
        
        public var branchName: String
        
        public var accountHolder: String
        
        public var comment: String?
        
        public var email: String
        
        public var mobile: String
        
        public var address: String?
        
        public var accountNo: String
        
        public var ifscCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case vpa = "vpa"
            
            case wallet = "wallet"
            
            case bankName = "bank_name"
            
            case branchName = "branch_name"
            
            case accountHolder = "account_holder"
            
            case comment = "comment"
            
            case email = "email"
            
            case mobile = "mobile"
            
            case address = "address"
            
            case accountNo = "account_no"
            
            case ifscCode = "ifsc_code"
            
        }

        public init(accountHolder: String, accountNo: String, address: String?, bankName: String, branchName: String, comment: String?, email: String, ifscCode: String, mobile: String, vpa: String?, wallet: String?) {
            
            self.vpa = vpa
            
            self.wallet = wallet
            
            self.bankName = bankName
            
            self.branchName = branchName
            
            self.accountHolder = accountHolder
            
            self.comment = comment
            
            self.email = email
            
            self.mobile = mobile
            
            self.address = address
            
            self.accountNo = accountNo
            
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
                
            
            
                bankName = try container.decode(String.self, forKey: .bankName)
                
            
            
            
                branchName = try container.decode(String.self, forKey: .branchName)
                
            
            
            
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
            
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                mobile = try container.decode(String.self, forKey: .mobile)
                
            
            
            
                do {
                    address = try container.decode(String.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
            
            
            
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(vpa, forKey: .vpa)
            
            
            
            
            try? container.encode(wallet, forKey: .wallet)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
        }
        
    }
    
    /*
        Model: AddBeneficiaryDetailsRequest
        Used By: Payment
    */

    class AddBeneficiaryDetailsRequest: Codable {
        
        
        public var orderId: String
        
        public var transferMode: String
        
        public var delights: Bool
        
        public var details: BeneficiaryModeDetails
        
        public var requestId: String?
        
        public var shipmentId: String
        
        public var otp: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
            case transferMode = "transfer_mode"
            
            case delights = "delights"
            
            case details = "details"
            
            case requestId = "request_id"
            
            case shipmentId = "shipment_id"
            
            case otp = "otp"
            
        }

        public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String?, requestId: String?, shipmentId: String, transferMode: String) {
            
            self.orderId = orderId
            
            self.transferMode = transferMode
            
            self.delights = delights
            
            self.details = details
            
            self.requestId = requestId
            
            self.shipmentId = shipmentId
            
            self.otp = otp
            
        }

        public func duplicate() -> AddBeneficiaryDetailsRequest {
            let dict = self.dictionary!
            let copy = AddBeneficiaryDetailsRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
            
            
            
                delights = try container.decode(Bool.self, forKey: .delights)
                
            
            
            
                details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)
                
            
            
            
                do {
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(delights, forKey: .delights)
            
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
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
        
        public var success: Bool
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case isVerifiedFlag = "is_verified_flag"
            
            case success = "success"
            
            case message = "message"
            
        }

        public init(data: [String: Any]?, isVerifiedFlag: Bool?, message: String, success: Bool) {
            
            self.data = data
            
            self.isVerifiedFlag = isVerifiedFlag
            
            self.success = success
            
            self.message = message
            
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
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
    /*
        Model: NotFoundResourceError
        Used By: Payment
    */

    class NotFoundResourceError: Codable {
        
        
        public var description: String
        
        public var code: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case code = "code"
            
            case success = "success"
            
        }

        public init(code: String, description: String, success: Bool) {
            
            self.description = description
            
            self.code = code
            
            self.success = success
            
        }

        public func duplicate() -> NotFoundResourceError {
            let dict = self.dictionary!
            let copy = NotFoundResourceError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
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
        
        
        public var modifiedOn: String
        
        public var displayName: String
        
        public var branchName: Bool?
        
        public var accountHolder: String
        
        public var beneficiaryId: String
        
        public var id: Int
        
        public var delightsUserName: String?
        
        public var address: String
        
        public var email: String
        
        public var accountNo: String
        
        public var title: String
        
        public var transferMode: String
        
        public var bankName: String
        
        public var comment: Bool?
        
        public var mobile: Bool?
        
        public var isActive: Bool
        
        public var createdOn: String
        
        public var ifscCode: String
        
        public var subtitle: String
        

        public enum CodingKeys: String, CodingKey {
            
            case modifiedOn = "modified_on"
            
            case displayName = "display_name"
            
            case branchName = "branch_name"
            
            case accountHolder = "account_holder"
            
            case beneficiaryId = "beneficiary_id"
            
            case id = "id"
            
            case delightsUserName = "delights_user_name"
            
            case address = "address"
            
            case email = "email"
            
            case accountNo = "account_no"
            
            case title = "title"
            
            case transferMode = "transfer_mode"
            
            case bankName = "bank_name"
            
            case comment = "comment"
            
            case mobile = "mobile"
            
            case isActive = "is_active"
            
            case createdOn = "created_on"
            
            case ifscCode = "ifsc_code"
            
            case subtitle = "subtitle"
            
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool?, comment: Bool?, createdOn: String, delightsUserName: String?, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool?, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            
            self.modifiedOn = modifiedOn
            
            self.displayName = displayName
            
            self.branchName = branchName
            
            self.accountHolder = accountHolder
            
            self.beneficiaryId = beneficiaryId
            
            self.id = id
            
            self.delightsUserName = delightsUserName
            
            self.address = address
            
            self.email = email
            
            self.accountNo = accountNo
            
            self.title = title
            
            self.transferMode = transferMode
            
            self.bankName = bankName
            
            self.comment = comment
            
            self.mobile = mobile
            
            self.isActive = isActive
            
            self.createdOn = createdOn
            
            self.ifscCode = ifscCode
            
            self.subtitle = subtitle
            
        }

        public func duplicate() -> OrderBeneficiaryDetails {
            let dict = self.dictionary!
            let copy = OrderBeneficiaryDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                do {
                    branchName = try container.decode(Bool.self, forKey: .branchName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
            
            
            
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
            
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
            
                do {
                    delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
            
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
            
            
            
                bankName = try container.decode(String.self, forKey: .bankName)
                
            
            
            
                do {
                    comment = try container.decode(Bool.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mobile = try container.decode(Bool.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
            
            
            
                subtitle = try container.decode(String.self, forKey: .subtitle)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encode(delightsUserName, forKey: .delightsUserName)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
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
        
        public var mode: String
        
        public var name: String?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case mode = "mode"
            
            case name = "name"
            
            case meta = "meta"
            
        }

        public init(amount: Double, meta: [String: Any]?, mode: String, name: String?) {
            
            self.amount = amount
            
            self.mode = mode
            
            self.name = name
            
            self.meta = meta
            
        }

        public func duplicate() -> PaymentConfirmationMode {
            let dict = self.dictionary!
            let copy = PaymentConfirmationMode(dictionary: dict)!
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
        
        public var orderId: String
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case orderId = "order_id"
            
            case message = "message"
            
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
