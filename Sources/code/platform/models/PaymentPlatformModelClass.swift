import Foundation


import Foundation
public extension PlatformClient {
    
    /*
        Model: PaymentGatewayConfigResponse
        Used By: Payment
    */

    class PaymentGatewayConfigResponse: Codable {
        
        
        public var excludedFields: [String]
        
        public var created: Bool
        
        public var appId: String
        
        public var success: Bool
        
        public var aggregators: [[String: Any]]?
        
        public var displayFields: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case excludedFields = "excluded_fields"
            
            case created = "created"
            
            case appId = "app_id"
            
            case success = "success"
            
            case aggregators = "aggregators"
            
            case displayFields = "display_fields"
            
        }

        public init(aggregators: [[String: Any]]?, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            
            self.excludedFields = excludedFields
            
            self.created = created
            
            self.appId = appId
            
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
            
            
                excludedFields = try container.decode([String].self, forKey: .excludedFields)
                
            
            
            
                created = try container.decode(Bool.self, forKey: .created)
                
            
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
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
        
        public var code: String
        
        public var description: String
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case code = "code"
            
            case description = "description"
            
        }

        public init(code: String, description: String, success: Bool) {
            
            self.success = success
            
            self.code = code
            
            self.description = description
            
        }

        public func duplicate() -> ErrorCodeDescription {
            let dict = self.dictionary!
            let copy = ErrorCodeDescription(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
        }
        
    }
    
    /*
        Model: PaymentGatewayConfig
        Used By: Payment
    */

    class PaymentGatewayConfig: Codable {
        
        
        public var isActive: Bool?
        
        public var configType: String
        
        public var merchantSalt: String
        
        public var secret: String
        
        public var key: String
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case configType = "config_type"
            
            case merchantSalt = "merchant_salt"
            
            case secret = "secret"
            
            case key = "key"
            
        }

        public init(configType: String, isActive: Bool?, key: String, merchantSalt: String, secret: String) {
            
            self.isActive = isActive
            
            self.configType = configType
            
            self.merchantSalt = merchantSalt
            
            self.secret = secret
            
            self.key = key
            
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
                
            
            
            
                merchantSalt = try container.decode(String.self, forKey: .merchantSalt)
                
            
            
            
                secret = try container.decode(String.self, forKey: .secret)
                
            
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            
            
            
            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)
            
            
            
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
        }
        
    }
    
    /*
        Model: PaymentGatewayConfigRequest
        Used By: Payment
    */

    class PaymentGatewayConfigRequest: Codable {
        
        
        public var aggregatorName: PaymentGatewayConfig?
        
        public var isActive: Bool?
        
        public var appId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregatorName = "aggregator_name"
            
            case isActive = "is_active"
            
            case appId = "app_id"
            
        }

        public init(aggregatorName: PaymentGatewayConfig?, appId: String, isActive: Bool?) {
            
            self.aggregatorName = aggregatorName
            
            self.isActive = isActive
            
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
                    aggregatorName = try container.decode(PaymentGatewayConfig.self, forKey: .aggregatorName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            
            
            
            try? container.encode(isActive, forKey: .isActive)
            
            
            
            
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
        Model: IntentApp
        Used By: Payment
    */

    class IntentApp: Codable {
        
        
        public var displayName: String?
        
        public var logos: PaymentModeLogo?
        
        public var code: String?
        
        public var packageName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case logos = "logos"
            
            case code = "code"
            
            case packageName = "package_name"
            
        }

        public init(code: String?, displayName: String?, logos: PaymentModeLogo?, packageName: String?) {
            
            self.displayName = displayName
            
            self.logos = logos
            
            self.code = code
            
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
            
            
            
            try? container.encode(displayName, forKey: .displayName)
            
            
            
            
            try? container.encode(logos, forKey: .logos)
            
            
            
            
            try? container.encode(code, forKey: .code)
            
            
            
            
            try? container.encode(packageName, forKey: .packageName)
            
            
        }
        
    }
    
    /*
        Model: PaymentModeList
        Used By: Payment
    */

    class PaymentModeList: Codable {
        
        
        public var cardName: String?
        
        public var cardId: String?
        
        public var expMonth: Int?
        
        public var name: String?
        
        public var cardBrandImage: String?
        
        public var cardNumber: String?
        
        public var expired: Bool?
        
        public var intentAppErrorDictList: [IntentAppErrorList]?
        
        public var cardToken: String?
        
        public var expYear: Int?
        
        public var aggregatorName: String
        
        public var code: String?
        
        public var fyndVpa: String?
        
        public var displayName: String?
        
        public var timeout: Int?
        
        public var intentFlow: Bool?
        
        public var cardFingerprint: String?
        
        public var cardIsin: String?
        
        public var cardReference: String?
        
        public var logoUrl: PaymentModeLogo?
        
        public var cardIssuer: String?
        
        public var merchantCode: String?
        
        public var cardBrand: String?
        
        public var intentApp: [IntentApp]?
        
        public var retryCount: Int?
        
        public var displayPriority: Int?
        
        public var nickname: String?
        
        public var intentAppErrorList: [String]?
        
        public var cardType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case cardName = "card_name"
            
            case cardId = "card_id"
            
            case expMonth = "exp_month"
            
            case name = "name"
            
            case cardBrandImage = "card_brand_image"
            
            case cardNumber = "card_number"
            
            case expired = "expired"
            
            case intentAppErrorDictList = "intent_app_error_dict_list"
            
            case cardToken = "card_token"
            
            case expYear = "exp_year"
            
            case aggregatorName = "aggregator_name"
            
            case code = "code"
            
            case fyndVpa = "fynd_vpa"
            
            case displayName = "display_name"
            
            case timeout = "timeout"
            
            case intentFlow = "intent_flow"
            
            case cardFingerprint = "card_fingerprint"
            
            case cardIsin = "card_isin"
            
            case cardReference = "card_reference"
            
            case logoUrl = "logo_url"
            
            case cardIssuer = "card_issuer"
            
            case merchantCode = "merchant_code"
            
            case cardBrand = "card_brand"
            
            case intentApp = "intent_app"
            
            case retryCount = "retry_count"
            
            case displayPriority = "display_priority"
            
            case nickname = "nickname"
            
            case intentAppErrorList = "intent_app_error_list"
            
            case cardType = "card_type"
            
        }

        public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, fyndVpa: String?, intentApp: [IntentApp]?, intentAppErrorDictList: [IntentAppErrorList]?, intentAppErrorList: [String]?, intentFlow: Bool?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?, retryCount: Int?, timeout: Int?) {
            
            self.cardName = cardName
            
            self.cardId = cardId
            
            self.expMonth = expMonth
            
            self.name = name
            
            self.cardBrandImage = cardBrandImage
            
            self.cardNumber = cardNumber
            
            self.expired = expired
            
            self.intentAppErrorDictList = intentAppErrorDictList
            
            self.cardToken = cardToken
            
            self.expYear = expYear
            
            self.aggregatorName = aggregatorName
            
            self.code = code
            
            self.fyndVpa = fyndVpa
            
            self.displayName = displayName
            
            self.timeout = timeout
            
            self.intentFlow = intentFlow
            
            self.cardFingerprint = cardFingerprint
            
            self.cardIsin = cardIsin
            
            self.cardReference = cardReference
            
            self.logoUrl = logoUrl
            
            self.cardIssuer = cardIssuer
            
            self.merchantCode = merchantCode
            
            self.cardBrand = cardBrand
            
            self.intentApp = intentApp
            
            self.retryCount = retryCount
            
            self.displayPriority = displayPriority
            
            self.nickname = nickname
            
            self.intentAppErrorList = intentAppErrorList
            
            self.cardType = cardType
            
        }

        public func duplicate() -> PaymentModeList {
            let dict = self.dictionary!
            let copy = PaymentModeList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cardName = try container.decode(String.self, forKey: .cardName)
                
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
                    expMonth = try container.decode(Int.self, forKey: .expMonth)
                
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
                    cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)
                
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
                    expired = try container.decode(Bool.self, forKey: .expired)
                
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
                    cardToken = try container.decode(String.self, forKey: .cardToken)
                
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
                    code = try container.decode(String.self, forKey: .code)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                    intentFlow = try container.decode(Bool.self, forKey: .intentFlow)
                
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
                    logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)
                
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
                    intentApp = try container.decode([IntentApp].self, forKey: .intentApp)
                
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
                    displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
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
                    cardType = try container.decode(String.self, forKey: .cardType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(cardName, forKey: .cardName)
            
            
            
            
            try? container.encode(cardId, forKey: .cardId)
            
            
            
            
            try? container.encode(expMonth, forKey: .expMonth)
            
            
            
            
            try? container.encode(name, forKey: .name)
            
            
            
            
            try? container.encode(cardBrandImage, forKey: .cardBrandImage)
            
            
            
            
            try? container.encode(cardNumber, forKey: .cardNumber)
            
            
            
            
            try? container.encode(expired, forKey: .expired)
            
            
            
            
            try? container.encode(intentAppErrorDictList, forKey: .intentAppErrorDictList)
            
            
            
            
            try? container.encode(cardToken, forKey: .cardToken)
            
            
            
            
            try? container.encode(expYear, forKey: .expYear)
            
            
            
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            
            
            
            try? container.encode(code, forKey: .code)
            
            
            
            
            try? container.encode(fyndVpa, forKey: .fyndVpa)
            
            
            
            
            try? container.encode(displayName, forKey: .displayName)
            
            
            
            
            try? container.encode(timeout, forKey: .timeout)
            
            
            
            
            try? container.encode(intentFlow, forKey: .intentFlow)
            
            
            
            
            try? container.encode(cardFingerprint, forKey: .cardFingerprint)
            
            
            
            
            try? container.encode(cardIsin, forKey: .cardIsin)
            
            
            
            
            try? container.encode(cardReference, forKey: .cardReference)
            
            
            
            
            try? container.encode(logoUrl, forKey: .logoUrl)
            
            
            
            
            try? container.encode(cardIssuer, forKey: .cardIssuer)
            
            
            
            
            try? container.encode(merchantCode, forKey: .merchantCode)
            
            
            
            
            try? container.encode(cardBrand, forKey: .cardBrand)
            
            
            
            
            try? container.encode(intentApp, forKey: .intentApp)
            
            
            
            
            try? container.encode(retryCount, forKey: .retryCount)
            
            
            
            
            try? container.encode(displayPriority, forKey: .displayPriority)
            
            
            
            
            try? container.encode(nickname, forKey: .nickname)
            
            
            
            
            try? container.encode(intentAppErrorList, forKey: .intentAppErrorList)
            
            
            
            
            try? container.encode(cardType, forKey: .cardType)
            
            
        }
        
    }
    
    /*
        Model: RootPaymentMode
        Used By: Payment
    */

    class RootPaymentMode: Codable {
        
        
        public var logo: String?
        
        public var addCardEnabled: Bool?
        
        public var logoUrl: PaymentModeLogo?
        
        public var aggregatorName: String?
        
        public var list: [PaymentModeList]?
        
        public var name: String
        
        public var displayPriority: Int
        
        public var displayName: String
        
        public var anonymousEnable: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case logo = "logo"
            
            case addCardEnabled = "add_card_enabled"
            
            case logoUrl = "logo_url"
            
            case aggregatorName = "aggregator_name"
            
            case list = "list"
            
            case name = "name"
            
            case displayPriority = "display_priority"
            
            case displayName = "display_name"
            
            case anonymousEnable = "anonymous_enable"
            
        }

        public init(addCardEnabled: Bool?, aggregatorName: String?, anonymousEnable: Bool?, displayName: String, displayPriority: Int, list: [PaymentModeList]?, logo: String?, logoUrl: PaymentModeLogo?, name: String) {
            
            self.logo = logo
            
            self.addCardEnabled = addCardEnabled
            
            self.logoUrl = logoUrl
            
            self.aggregatorName = aggregatorName
            
            self.list = list
            
            self.name = name
            
            self.displayPriority = displayPriority
            
            self.displayName = displayName
            
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
                    logo = try container.decode(String.self, forKey: .logo)
                
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
                
            
            
                do {
                    list = try container.decode([PaymentModeList].self, forKey: .list)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                do {
                    anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(logo, forKey: .logo)
            
            
            
            
            try? container.encode(addCardEnabled, forKey: .addCardEnabled)
            
            
            
            
            try? container.encode(logoUrl, forKey: .logoUrl)
            
            
            
            
            try? container.encode(aggregatorName, forKey: .aggregatorName)
            
            
            
            
            try? container.encodeIfPresent(list, forKey: .list)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
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
        
        
        public var payoutsAggregators: [[String: Any]]
        
        public var transferType: String
        
        public var isActive: Bool
        
        public var moreAttributes: [String: Any]
        
        public var isDefault: Bool
        
        public var customers: [String: Any]
        
        public var uniqueTransferNo: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case payoutsAggregators = "payouts_aggregators"
            
            case transferType = "transfer_type"
            
            case isActive = "is_active"
            
            case moreAttributes = "more_attributes"
            
            case isDefault = "is_default"
            
            case customers = "customers"
            
            case uniqueTransferNo = "unique_transfer_no"
            
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            
            self.payoutsAggregators = payoutsAggregators
            
            self.transferType = transferType
            
            self.isActive = isActive
            
            self.moreAttributes = moreAttributes
            
            self.isDefault = isDefault
            
            self.customers = customers
            
            self.uniqueTransferNo = uniqueTransferNo
            
        }

        public func duplicate() -> PayoutsResponse {
            let dict = self.dictionary!
            let copy = PayoutsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)
                
            
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                customers = try container.decode([String: Any].self, forKey: .customers)
                
            
            
            
                uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)
            
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(customers, forKey: .customers)
            
            
            
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            
        }
        
    }
    
    /*
        Model: PayoutBankDetails
        Used By: Payment
    */

    class PayoutBankDetails: Codable {
        
        
        public var state: String?
        
        public var country: String?
        
        public var accountType: String
        
        public var accountHolder: String?
        
        public var pincode: Int?
        
        public var ifscCode: String
        
        public var branchName: String?
        
        public var city: String?
        
        public var accountNo: String?
        
        public var bankName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case state = "state"
            
            case country = "country"
            
            case accountType = "account_type"
            
            case accountHolder = "account_holder"
            
            case pincode = "pincode"
            
            case ifscCode = "ifsc_code"
            
            case branchName = "branch_name"
            
            case city = "city"
            
            case accountNo = "account_no"
            
            case bankName = "bank_name"
            
        }

        public init(accountHolder: String?, accountNo: String?, accountType: String, bankName: String?, branchName: String?, city: String?, country: String?, ifscCode: String, pincode: Int?, state: String?) {
            
            self.state = state
            
            self.country = country
            
            self.accountType = accountType
            
            self.accountHolder = accountHolder
            
            self.pincode = pincode
            
            self.ifscCode = ifscCode
            
            self.branchName = branchName
            
            self.city = city
            
            self.accountNo = accountNo
            
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
                    state = try container.decode(String.self, forKey: .state)
                
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
                
            
            
                accountType = try container.decode(String.self, forKey: .accountType)
                
            
            
            
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
                
            
            
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
            
            
            
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
                    accountNo = try container.decode(String.self, forKey: .accountNo)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(accountType, forKey: .accountType)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
        }
        
    }
    
    /*
        Model: PayoutRequest
        Used By: Payment
    */

    class PayoutRequest: Codable {
        
        
        public var transferType: String
        
        public var isActive: Bool
        
        public var aggregator: String
        
        public var users: [String: Any]
        
        public var bankDetails: PayoutBankDetails
        
        public var uniqueExternalId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case transferType = "transfer_type"
            
            case isActive = "is_active"
            
            case aggregator = "aggregator"
            
            case users = "users"
            
            case bankDetails = "bank_details"
            
            case uniqueExternalId = "unique_external_id"
            
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            
            self.transferType = transferType
            
            self.isActive = isActive
            
            self.aggregator = aggregator
            
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
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                users = try container.decode([String: Any].self, forKey: .users)
                
            
            
            
                bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)
                
            
            
            
                uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
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
        
        
        public var paymentStatus: String
        
        public var transferType: String
        
        public var isActive: Bool
        
        public var payouts: [String: Any]
        
        public var created: Bool
        
        public var aggregator: String
        
        public var success: Bool
        
        public var uniqueTransferNo: String
        
        public var bankDetails: [String: Any]
        
        public var users: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentStatus = "payment_status"
            
            case transferType = "transfer_type"
            
            case isActive = "is_active"
            
            case payouts = "payouts"
            
            case created = "created"
            
            case aggregator = "aggregator"
            
            case success = "success"
            
            case uniqueTransferNo = "unique_transfer_no"
            
            case bankDetails = "bank_details"
            
            case users = "users"
            
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            
            self.paymentStatus = paymentStatus
            
            self.transferType = transferType
            
            self.isActive = isActive
            
            self.payouts = payouts
            
            self.created = created
            
            self.aggregator = aggregator
            
            self.success = success
            
            self.uniqueTransferNo = uniqueTransferNo
            
            self.bankDetails = bankDetails
            
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
                
            
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                payouts = try container.decode([String: Any].self, forKey: .payouts)
                
            
            
            
                created = try container.decode(Bool.self, forKey: .created)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
                
            
            
            
                bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)
                
            
            
            
                users = try container.decode([String: Any].self, forKey: .users)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)
            
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(payouts, forKey: .payouts)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            
            
            
            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
            
            
            
            
            try? container.encodeIfPresent(users, forKey: .users)
            
            
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
        
        public var mobile: String
        
        public var accountHolder: String
        
        public var email: String
        
        public var vpa: String?
        
        public var branchName: String
        
        public var comment: String?
        
        public var ifscCode: String
        
        public var wallet: String?
        
        public var accountNo: String
        
        public var bankName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
            case mobile = "mobile"
            
            case accountHolder = "account_holder"
            
            case email = "email"
            
            case vpa = "vpa"
            
            case branchName = "branch_name"
            
            case comment = "comment"
            
            case ifscCode = "ifsc_code"
            
            case wallet = "wallet"
            
            case accountNo = "account_no"
            
            case bankName = "bank_name"
            
        }

        public init(accountHolder: String, accountNo: String, address: String?, bankName: String, branchName: String, comment: String?, email: String, ifscCode: String, mobile: String, vpa: String?, wallet: String?) {
            
            self.address = address
            
            self.mobile = mobile
            
            self.accountHolder = accountHolder
            
            self.email = email
            
            self.vpa = vpa
            
            self.branchName = branchName
            
            self.comment = comment
            
            self.ifscCode = ifscCode
            
            self.wallet = wallet
            
            self.accountNo = accountNo
            
            self.bankName = bankName
            
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
                
            
            
                mobile = try container.decode(String.self, forKey: .mobile)
                
            
            
            
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
            
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                branchName = try container.decode(String.self, forKey: .branchName)
                
            
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
            
            
            
                do {
                    wallet = try container.decode(String.self, forKey: .wallet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
            
            
            
                bankName = try container.decode(String.self, forKey: .bankName)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encode(vpa, forKey: .vpa)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encode(wallet, forKey: .wallet)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
        }
        
    }
    
    /*
        Model: AddBeneficiaryDetailsRequest
        Used By: Payment
    */

    class AddBeneficiaryDetailsRequest: Codable {
        
        
        public var delights: Bool
        
        public var otp: String?
        
        public var orderId: String
        
        public var transferMode: String
        
        public var details: BeneficiaryModeDetails
        
        public var shipmentId: String
        
        public var requestId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case delights = "delights"
            
            case otp = "otp"
            
            case orderId = "order_id"
            
            case transferMode = "transfer_mode"
            
            case details = "details"
            
            case shipmentId = "shipment_id"
            
            case requestId = "request_id"
            
        }

        public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String?, requestId: String?, shipmentId: String, transferMode: String) {
            
            self.delights = delights
            
            self.otp = otp
            
            self.orderId = orderId
            
            self.transferMode = transferMode
            
            self.details = details
            
            self.shipmentId = shipmentId
            
            self.requestId = requestId
            
        }

        public func duplicate() -> AddBeneficiaryDetailsRequest {
            let dict = self.dictionary!
            let copy = AddBeneficiaryDetailsRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                delights = try container.decode(Bool.self, forKey: .delights)
                
            
            
            
                do {
                    otp = try container.decode(String.self, forKey: .otp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
            
            
            
                details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)
                
            
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(delights, forKey: .delights)
            
            
            
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
        }
        
    }
    
    /*
        Model: RefundAccountResponse
        Used By: Payment
    */

    class RefundAccountResponse: Codable {
        
        
        public var success: Bool
        
        public var data: [String: Any]?
        
        public var message: String
        
        public var isVerifiedFlag: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case data = "data"
            
            case message = "message"
            
            case isVerifiedFlag = "is_verified_flag"
            
        }

        public init(data: [String: Any]?, isVerifiedFlag: Bool?, message: String, success: Bool) {
            
            self.success = success
            
            self.data = data
            
            self.message = message
            
            self.isVerifiedFlag = isVerifiedFlag
            
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
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
            
            
        }
        
    }
    
    /*
        Model: NotFoundResourceError
        Used By: Payment
    */

    class NotFoundResourceError: Codable {
        
        
        public var success: Bool
        
        public var code: String
        
        public var description: String
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case code = "code"
            
            case description = "description"
            
        }

        public init(code: String, description: String, success: Bool) {
            
            self.success = success
            
            self.code = code
            
            self.description = description
            
        }

        public func duplicate() -> NotFoundResourceError {
            let dict = self.dictionary!
            let copy = NotFoundResourceError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
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
            
            case success = "success"
            
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
                } catch {
                    
                }
                
            
            
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
        
        
        public var isActive: Bool
        
        public var transferMode: String
        
        public var modifiedOn: String
        
        public var accountNo: String
        
        public var displayName: String
        
        public var id: Int
        
        public var createdOn: String
        
        public var bankName: String
        
        public var subtitle: String
        
        public var accountHolder: String
        
        public var email: String
        
        public var beneficiaryId: String
        
        public var mobile: Bool?
        
        public var address: String
        
        public var title: String
        
        public var ifscCode: String
        
        public var branchName: Bool?
        
        public var comment: Bool?
        
        public var delightsUserName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case transferMode = "transfer_mode"
            
            case modifiedOn = "modified_on"
            
            case accountNo = "account_no"
            
            case displayName = "display_name"
            
            case id = "id"
            
            case createdOn = "created_on"
            
            case bankName = "bank_name"
            
            case subtitle = "subtitle"
            
            case accountHolder = "account_holder"
            
            case email = "email"
            
            case beneficiaryId = "beneficiary_id"
            
            case mobile = "mobile"
            
            case address = "address"
            
            case title = "title"
            
            case ifscCode = "ifsc_code"
            
            case branchName = "branch_name"
            
            case comment = "comment"
            
            case delightsUserName = "delights_user_name"
            
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool?, comment: Bool?, createdOn: String, delightsUserName: String?, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool?, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            
            self.isActive = isActive
            
            self.transferMode = transferMode
            
            self.modifiedOn = modifiedOn
            
            self.accountNo = accountNo
            
            self.displayName = displayName
            
            self.id = id
            
            self.createdOn = createdOn
            
            self.bankName = bankName
            
            self.subtitle = subtitle
            
            self.accountHolder = accountHolder
            
            self.email = email
            
            self.beneficiaryId = beneficiaryId
            
            self.mobile = mobile
            
            self.address = address
            
            self.title = title
            
            self.ifscCode = ifscCode
            
            self.branchName = branchName
            
            self.comment = comment
            
            self.delightsUserName = delightsUserName
            
        }

        public func duplicate() -> OrderBeneficiaryDetails {
            let dict = self.dictionary!
            let copy = OrderBeneficiaryDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                bankName = try container.decode(String.self, forKey: .bankName)
                
            
            
            
                subtitle = try container.decode(String.self, forKey: .subtitle)
                
            
            
            
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
            
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
            
            
            
                do {
                    mobile = try container.decode(Bool.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
            
            
            
                do {
                    branchName = try container.decode(Bool.self, forKey: .branchName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encode(delightsUserName, forKey: .delightsUserName)
            
            
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
            
            case beneficiaries = "beneficiaries"
            
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
                } catch {
                    
                }
                
            
            
                do {
                    beneficiaries = try container.decode([OrderBeneficiaryDetails].self, forKey: .beneficiaries)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
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
        
        
        public var meta: [String: Any]?
        
        public var mode: String
        
        public var name: String?
        
        public var amount: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case mode = "mode"
            
            case name = "name"
            
            case amount = "amount"
            
        }

        public init(amount: Double, meta: [String: Any]?, mode: String, name: String?) {
            
            self.meta = meta
            
            self.mode = mode
            
            self.name = name
            
            self.amount = amount
            
        }

        public func duplicate() -> PaymentConfirmationMode {
            let dict = self.dictionary!
            let copy = PaymentConfirmationMode(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
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
