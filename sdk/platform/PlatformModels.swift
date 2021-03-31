public extension PlatformClient {
    
    
    /*
        Model: PaymentGatewayConfigResponse
        Used By: Payment
    */

    struct PaymentGatewayConfigResponse: Codable {
        
        
        public var created: Bool
        
        public var aggregators: [[String: Any]]?
        
        public var appId: String
        
        public var success: Bool
        
        public var displayFields: [String]
        
        public var excludedFields: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case created = "created"
            
            case aggregators = "aggregators"
            
            case appId = "app_id"
            
            case success = "success"
            
            case displayFields = "display_fields"
            
            case excludedFields = "excluded_fields"
            
        }

        public init(aggregators: [[String: Any]]?, appId: String, created: Bool, displayFields: [String], excludedFields: [String], success: Bool) {
            
            self.created = created
            
            self.aggregators = aggregators
            
            self.appId = appId
            
            self.success = success
            
            self.displayFields = displayFields
            
            self.excludedFields = excludedFields
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                created = try container.decode(Bool.self, forKey: .created)
            
            
            
                do {
                    aggregators = try container.decode([[String: Any]].self, forKey: .aggregators)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                appId = try container.decode(String.self, forKey: .appId)
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
            
            
            
                displayFields = try container.decode([String].self, forKey: .displayFields)
            
            
            
                excludedFields = try container.decode([String].self, forKey: .excludedFields)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(displayFields, forKey: .displayFields)
            
            try? container.encodeIfPresent(excludedFields, forKey: .excludedFields)
            
        }
        
    }
    
    /*
        Model: ErrorCodeDescription
        Used By: Payment
    */

    struct ErrorCodeDescription: Codable {
        
        
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

        public init(from decoder: Decoder) throws {
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

    struct PaymentGatewayConfig: Codable {
        
        
        public var merchantSalt: String
        
        public var key: String
        
        public var isActive: Bool?
        
        public var secret: String
        
        public var configType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case merchantSalt = "merchant_salt"
            
            case key = "key"
            
            case isActive = "is_active"
            
            case secret = "secret"
            
            case configType = "config_type"
            
        }

        public init(configType: String, isActive: Bool?, key: String, merchantSalt: String, secret: String) {
            
            self.merchantSalt = merchantSalt
            
            self.key = key
            
            self.isActive = isActive
            
            self.secret = secret
            
            self.configType = configType
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                merchantSalt = try container.decode(String.self, forKey: .merchantSalt)
            
            
            
                key = try container.decode(String.self, forKey: .key)
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                secret = try container.decode(String.self, forKey: .secret)
            
            
            
                configType = try container.decode(String.self, forKey: .configType)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
        }
        
    }
    
    /*
        Model: PaymentGatewayConfigRequest
        Used By: Payment
    */

    struct PaymentGatewayConfigRequest: Codable {
        
        
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

        public init(from decoder: Decoder) throws {
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
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
        }
        
    }
    
    /*
        Model: PaymentGatewayToBeReviewed
        Used By: Payment
    */

    struct PaymentGatewayToBeReviewed: Codable {
        
        
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

        public init(from decoder: Decoder) throws {
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

    struct ErrorCodeAndDescription: Codable {
        
        
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

        public init(from decoder: Decoder) throws {
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

    struct HttpErrorCodeAndResponse: Codable {
        
        
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

        public init(from decoder: Decoder) throws {
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

    struct PaymentModeLogo: Codable {
        
        
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

        public init(from decoder: Decoder) throws {
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
        Model: PaymentModeList
        Used By: Payment
    */

    struct PaymentModeList: Codable {
        
        
        public var cardIsin: String?
        
        public var fyndVpa: String?
        
        public var intentAppErrorList: [String]?
        
        public var cardIssuer: String?
        
        public var cardBrand: String?
        
        public var cardNumber: String?
        
        public var code: String?
        
        public var intentFlow: String?
        
        public var expired: Bool?
        
        public var merchantCode: String?
        
        public var nickname: String?
        
        public var cardName: String?
        
        public var aggregatorName: String
        
        public var name: String?
        
        public var displayPriority: Int?
        
        public var timeout: Int?
        
        public var cardToken: String?
        
        public var cardFingerprint: String?
        
        public var cardReference: String?
        
        public var expMonth: Int?
        
        public var retryCount: Int?
        
        public var cardBrandImage: String?
        
        public var cardId: String?
        
        public var cardType: String?
        
        public var expYear: Int?
        
        public var logoUrl: PaymentModeLogo?
        
        public var displayName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case cardIsin = "card_isin"
            
            case fyndVpa = "fynd_vpa"
            
            case intentAppErrorList = "intent_app_error_list"
            
            case cardIssuer = "card_issuer"
            
            case cardBrand = "card_brand"
            
            case cardNumber = "card_number"
            
            case code = "code"
            
            case intentFlow = "intent_flow"
            
            case expired = "expired"
            
            case merchantCode = "merchant_code"
            
            case nickname = "nickname"
            
            case cardName = "card_name"
            
            case aggregatorName = "aggregator_name"
            
            case name = "name"
            
            case displayPriority = "display_priority"
            
            case timeout = "timeout"
            
            case cardToken = "card_token"
            
            case cardFingerprint = "card_fingerprint"
            
            case cardReference = "card_reference"
            
            case expMonth = "exp_month"
            
            case retryCount = "retry_count"
            
            case cardBrandImage = "card_brand_image"
            
            case cardId = "card_id"
            
            case cardType = "card_type"
            
            case expYear = "exp_year"
            
            case logoUrl = "logo_url"
            
            case displayName = "display_name"
            
        }

        public init(aggregatorName: String, cardBrand: String?, cardBrandImage: String?, cardFingerprint: String?, cardId: String?, cardIsin: String?, cardIssuer: String?, cardName: String?, cardNumber: String?, cardReference: String?, cardToken: String?, cardType: String?, code: String?, displayName: String?, displayPriority: Int?, expired: Bool?, expMonth: Int?, expYear: Int?, fyndVpa: String?, intentAppErrorList: [String]?, intentFlow: String?, logoUrl: PaymentModeLogo?, merchantCode: String?, name: String?, nickname: String?, retryCount: Int?, timeout: Int?) {
            
            self.cardIsin = cardIsin
            
            self.fyndVpa = fyndVpa
            
            self.intentAppErrorList = intentAppErrorList
            
            self.cardIssuer = cardIssuer
            
            self.cardBrand = cardBrand
            
            self.cardNumber = cardNumber
            
            self.code = code
            
            self.intentFlow = intentFlow
            
            self.expired = expired
            
            self.merchantCode = merchantCode
            
            self.nickname = nickname
            
            self.cardName = cardName
            
            self.aggregatorName = aggregatorName
            
            self.name = name
            
            self.displayPriority = displayPriority
            
            self.timeout = timeout
            
            self.cardToken = cardToken
            
            self.cardFingerprint = cardFingerprint
            
            self.cardReference = cardReference
            
            self.expMonth = expMonth
            
            self.retryCount = retryCount
            
            self.cardBrandImage = cardBrandImage
            
            self.cardId = cardId
            
            self.cardType = cardType
            
            self.expYear = expYear
            
            self.logoUrl = logoUrl
            
            self.displayName = displayName
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cardIsin = try container.decode(String.self, forKey: .cardIsin)
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
                    intentAppErrorList = try container.decode([String].self, forKey: .intentAppErrorList)
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
                    cardBrand = try container.decode(String.self, forKey: .cardBrand)
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
                    code = try container.decode(String.self, forKey: .code)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    intentFlow = try container.decode(String.self, forKey: .intentFlow)
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
                    nickname = try container.decode(String.self, forKey: .nickname)
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
                
            
            
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
            
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
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
                    timeout = try container.decode(Int.self, forKey: .timeout)
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
                    cardFingerprint = try container.decode(String.self, forKey: .cardFingerprint)
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
                    expMonth = try container.decode(Int.self, forKey: .expMonth)
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
                    cardBrandImage = try container.decode(String.self, forKey: .cardBrandImage)
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
                    cardType = try container.decode(String.self, forKey: .cardType)
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
                    logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)
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
            
            try? container.encodeIfPresent(cardIsin, forKey: .cardIsin)
            
            try? container.encodeIfPresent(fyndVpa, forKey: .fyndVpa)
            
            try? container.encodeIfPresent(intentAppErrorList, forKey: .intentAppErrorList)
            
            try? container.encodeIfPresent(cardIssuer, forKey: .cardIssuer)
            
            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
            
            try? container.encodeIfPresent(cardNumber, forKey: .cardNumber)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(intentFlow, forKey: .intentFlow)
            
            try? container.encodeIfPresent(expired, forKey: .expired)
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
            try? container.encodeIfPresent(nickname, forKey: .nickname)
            
            try? container.encodeIfPresent(cardName, forKey: .cardName)
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
            
            try? container.encodeIfPresent(timeout, forKey: .timeout)
            
            try? container.encodeIfPresent(cardToken, forKey: .cardToken)
            
            try? container.encodeIfPresent(cardFingerprint, forKey: .cardFingerprint)
            
            try? container.encodeIfPresent(cardReference, forKey: .cardReference)
            
            try? container.encodeIfPresent(expMonth, forKey: .expMonth)
            
            try? container.encodeIfPresent(retryCount, forKey: .retryCount)
            
            try? container.encodeIfPresent(cardBrandImage, forKey: .cardBrandImage)
            
            try? container.encodeIfPresent(cardId, forKey: .cardId)
            
            try? container.encodeIfPresent(cardType, forKey: .cardType)
            
            try? container.encodeIfPresent(expYear, forKey: .expYear)
            
            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
        }
        
    }
    
    /*
        Model: RootPaymentMode
        Used By: Payment
    */

    struct RootPaymentMode: Codable {
        
        
        public var addCardEnabled: Bool?
        
        public var aggregatorName: String?
        
        public var name: String
        
        public var displayPriority: Int
        
        public var list: [PaymentModeList]?
        
        public var displayName: String
        
        public var anonymousEnable: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case addCardEnabled = "add_card_enabled"
            
            case aggregatorName = "aggregator_name"
            
            case name = "name"
            
            case displayPriority = "display_priority"
            
            case list = "list"
            
            case displayName = "display_name"
            
            case anonymousEnable = "anonymous_enable"
            
        }

        public init(addCardEnabled: Bool?, aggregatorName: String?, anonymousEnable: Bool?, displayName: String, displayPriority: Int, list: [PaymentModeList]?, name: String) {
            
            self.addCardEnabled = addCardEnabled
            
            self.aggregatorName = aggregatorName
            
            self.name = name
            
            self.displayPriority = displayPriority
            
            self.list = list
            
            self.displayName = displayName
            
            self.anonymousEnable = anonymousEnable
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)
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
                
            
            
                name = try container.decode(String.self, forKey: .name)
            
            
            
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)
            
            
            
                do {
                    list = try container.decode([PaymentModeList].self, forKey: .list)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            try? container.encodeIfPresent(addCardEnabled, forKey: .addCardEnabled)
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
            
            try? container.encodeIfPresent(list, forKey: .list)
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            try? container.encodeIfPresent(anonymousEnable, forKey: .anonymousEnable)
            
        }
        
    }
    
    /*
        Model: PaymentOptions
        Used By: Payment
    */

    struct PaymentOptions: Codable {
        
        
        public var paymentOption: [RootPaymentMode]
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentOption = "payment_option"
            
        }

        public init(paymentOption: [RootPaymentMode]) {
            
            self.paymentOption = paymentOption
            
        }

        public init(from decoder: Decoder) throws {
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

    struct PaymentOptionsResponse: Codable {
        
        
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

        public init(from decoder: Decoder) throws {
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

    struct PayoutsResponse: Codable {
        
        
        public var uniqueTransferNo: [String: Any]
        
        public var payoutsAggregators: [[String: Any]]
        
        public var customers: [String: Any]
        
        public var isActive: Bool
        
        public var isDefault: Bool
        
        public var moreAttributes: [String: Any]
        
        public var transferType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueTransferNo = "unique_transfer_no"
            
            case payoutsAggregators = "payouts_aggregators"
            
            case customers = "customers"
            
            case isActive = "is_active"
            
            case isDefault = "is_default"
            
            case moreAttributes = "more_attributes"
            
            case transferType = "transfer_type"
            
        }

        public init(customers: [String: Any], isActive: Bool, isDefault: Bool, moreAttributes: [String: Any], payoutsAggregators: [[String: Any]], transferType: String, uniqueTransferNo: [String: Any]) {
            
            self.uniqueTransferNo = uniqueTransferNo
            
            self.payoutsAggregators = payoutsAggregators
            
            self.customers = customers
            
            self.isActive = isActive
            
            self.isDefault = isDefault
            
            self.moreAttributes = moreAttributes
            
            self.transferType = transferType
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                uniqueTransferNo = try container.decode([String: Any].self, forKey: .uniqueTransferNo)
            
            
            
                payoutsAggregators = try container.decode([[String: Any]].self, forKey: .payoutsAggregators)
            
            
            
                customers = try container.decode([String: Any].self, forKey: .customers)
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
            
            
            
                moreAttributes = try container.decode([String: Any].self, forKey: .moreAttributes)
            
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            try? container.encodeIfPresent(payoutsAggregators, forKey: .payoutsAggregators)
            
            try? container.encodeIfPresent(customers, forKey: .customers)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
        }
        
    }
    
    /*
        Model: PayoutRequest
        Used By: Payment
    */

    struct PayoutRequest: Codable {
        
        
        public var bankDetails: [String: Any]
        
        public var uniqueExternalId: String
        
        public var isActive: Bool
        
        public var aggregator: String
        
        public var users: [String: Any]
        
        public var transferType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case bankDetails = "bank_details"
            
            case uniqueExternalId = "unique_external_id"
            
            case isActive = "is_active"
            
            case aggregator = "aggregator"
            
            case users = "users"
            
            case transferType = "transfer_type"
            
        }

        public init(aggregator: String, bankDetails: [String: Any], isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            
            self.bankDetails = bankDetails
            
            self.uniqueExternalId = uniqueExternalId
            
            self.isActive = isActive
            
            self.aggregator = aggregator
            
            self.users = users
            
            self.transferType = transferType
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)
            
            
            
                uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
            
            
            
                users = try container.decode([String: Any].self, forKey: .users)
            
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
            
            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(users, forKey: .users)
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
        }
        
    }
    
    /*
        Model: PayoutResponse
        Used By: Payment
    */

    struct PayoutResponse: Codable {
        
        
        public var uniqueTransferNo: String
        
        public var bankDetails: [String: Any]
        
        public var created: Bool
        
        public var isActive: Bool
        
        public var aggregator: String
        
        public var payouts: [String: Any]
        
        public var users: [String: Any]
        
        public var paymentStatus: String
        
        public var success: Bool
        
        public var transferType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueTransferNo = "unique_transfer_no"
            
            case bankDetails = "bank_details"
            
            case created = "created"
            
            case isActive = "is_active"
            
            case aggregator = "aggregator"
            
            case payouts = "payouts"
            
            case users = "users"
            
            case paymentStatus = "payment_status"
            
            case success = "success"
            
            case transferType = "transfer_type"
            
        }

        public init(aggregator: String, bankDetails: [String: Any], created: Bool, isActive: Bool, paymentStatus: String, payouts: [String: Any], success: Bool, transferType: String, uniqueTransferNo: String, users: [String: Any]) {
            
            self.uniqueTransferNo = uniqueTransferNo
            
            self.bankDetails = bankDetails
            
            self.created = created
            
            self.isActive = isActive
            
            self.aggregator = aggregator
            
            self.payouts = payouts
            
            self.users = users
            
            self.paymentStatus = paymentStatus
            
            self.success = success
            
            self.transferType = transferType
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
            
            
            
                bankDetails = try container.decode([String: Any].self, forKey: .bankDetails)
            
            
            
                created = try container.decode(Bool.self, forKey: .created)
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
            
            
            
                payouts = try container.decode([String: Any].self, forKey: .payouts)
            
            
            
                users = try container.decode([String: Any].self, forKey: .users)
            
            
            
                paymentStatus = try container.decode(String.self, forKey: .paymentStatus)
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
            
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            try? container.encodeIfPresent(payouts, forKey: .payouts)
            
            try? container.encodeIfPresent(users, forKey: .users)
            
            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
        }
        
    }
    
    /*
        Model: UpdatePayoutResponse
        Used By: Payment
    */

    struct UpdatePayoutResponse: Codable {
        
        
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

        public init(from decoder: Decoder) throws {
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

    struct UpdatePayoutRequest: Codable {
        
        
        public var isDefault: Bool
        
        public var uniqueExternalId: String
        
        public var isActive: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefault = "is_default"
            
            case uniqueExternalId = "unique_external_id"
            
            case isActive = "is_active"
            
        }

        public init(isActive: Bool, isDefault: Bool, uniqueExternalId: String) {
            
            self.isDefault = isDefault
            
            self.uniqueExternalId = uniqueExternalId
            
            self.isActive = isActive
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
            
            
            
                uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
        }
        
    }
    
    /*
        Model: DeletePayoutResponse
        Used By: Payment
    */

    struct DeletePayoutResponse: Codable {
        
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
        }

        public init(success: Bool) {
            
            self.success = success
            
        }

        public init(from decoder: Decoder) throws {
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

    struct SubscriptionPaymentMethodResponse: Codable {
        
        
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

        public init(from decoder: Decoder) throws {
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

    struct DeleteSubscriptionPaymentMethodResponse: Codable {
        
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
        }

        public init(success: Bool) {
            
            self.success = success
            
        }

        public init(from decoder: Decoder) throws {
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

    struct SubscriptionConfigResponse: Codable {
        
        
        public var config: [String: Any]
        
        public var success: Bool
        
        public var aggregator: String
        

        public enum CodingKeys: String, CodingKey {
            
            case config = "config"
            
            case success = "success"
            
            case aggregator = "aggregator"
            
        }

        public init(aggregator: String, config: [String: Any], success: Bool) {
            
            self.config = config
            
            self.success = success
            
            self.aggregator = aggregator
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                config = try container.decode([String: Any].self, forKey: .config)
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
        }
        
    }
    
    /*
        Model: SaveSubscriptionSetupIntentRequest
        Used By: Payment
    */

    struct SaveSubscriptionSetupIntentRequest: Codable {
        
        
        public var uniqueExternalId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueExternalId = "unique_external_id"
            
        }

        public init(uniqueExternalId: String) {
            
            self.uniqueExternalId = uniqueExternalId
            
        }

        public init(from decoder: Decoder) throws {
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

    struct SaveSubscriptionSetupIntentResponse: Codable {
        
        
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

        public init(from decoder: Decoder) throws {
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
        Model: UserSerializer
        Used By: CompanyProfile
    */

    struct UserSerializer: Codable {
        
        
        public var username: String?
        
        public var userId: String?
        
        public var contact: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case username = "username"
            
            case userId = "user_id"
            
            case contact = "contact"
            
        }

        public init(contact: String?, username: String?, userId: String?) {
            
            self.username = username
            
            self.userId = userId
            
            self.contact = contact
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    username = try container.decode(String.self, forKey: .username)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contact = try container.decode(String.self, forKey: .contact)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
        }
        
    }
    
    /*
        Model: Document
        Used By: CompanyProfile
    */

    struct Document: Codable {
        
        
        public var url: String?
        
        public var legalName: String
        
        public var value: String
        
        public var type: String
        
        public var verified: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case legalName = "legal_name"
            
            case value = "value"
            
            case type = "type"
            
            case verified = "verified"
            
        }

        public init(legalName: String, type: String, url: String?, value: String, verified: Bool?) {
            
            self.url = url
            
            self.legalName = legalName
            
            self.value = value
            
            self.type = type
            
            self.verified = verified
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                legalName = try container.decode(String.self, forKey: .legalName)
            
            
            
                value = try container.decode(String.self, forKey: .value)
            
            
            
                type = try container.decode(String.self, forKey: .type)
            
            
            
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            try? container.encodeIfPresent(legalName, forKey: .legalName)
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
        }
        
    }
    
    /*
        Model: PhoneNumber
        Used By: CompanyProfile
    */

    struct PhoneNumber: Codable {
        
        
        public var countryCode: Int
        
        public var number: String
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case number = "number"
            
        }

        public init(countryCode: Int, number: String) {
            
            self.countryCode = countryCode
            
            self.number = number
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                countryCode = try container.decode(Int.self, forKey: .countryCode)
            
            
            
                number = try container.decode(String.self, forKey: .number)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(number, forKey: .number)
            
        }
        
    }
    
    /*
        Model: ContactDetails
        Used By: CompanyProfile
    */

    struct ContactDetails: Codable {
        
        
        public var emails: [String]?
        
        public var phone: [PhoneNumber]?
        

        public enum CodingKeys: String, CodingKey {
            
            case emails = "emails"
            
            case phone = "phone"
            
        }

        public init(emails: [String]?, phone: [PhoneNumber]?) {
            
            self.emails = emails
            
            self.phone = phone
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    emails = try container.decode([String].self, forKey: .emails)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phone = try container.decode([PhoneNumber].self, forKey: .phone)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(emails, forKey: .emails)
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
        }
        
    }
    
    /*
        Model: GetAddressSerializer
        Used By: CompanyProfile
    */

    struct GetAddressSerializer: Codable {
        
        
        public var address2: String?
        
        public var countryCode: String?
        
        public var state: String?
        
        public var pincode: Int?
        
        public var landmark: String?
        
        public var addressType: String?
        
        public var latitude: Double?
        
        public var longitude: Double?
        
        public var city: String?
        
        public var address1: String?
        
        public var country: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case address2 = "address2"
            
            case countryCode = "country_code"
            
            case state = "state"
            
            case pincode = "pincode"
            
            case landmark = "landmark"
            
            case addressType = "address_type"
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
            case city = "city"
            
            case address1 = "address1"
            
            case country = "country"
            
        }

        public init(address1: String?, address2: String?, addressType: String?, city: String?, country: String?, countryCode: String?, landmark: String?, latitude: Double?, longitude: Double?, pincode: Int?, state: String?) {
            
            self.address2 = address2
            
            self.countryCode = countryCode
            
            self.state = state
            
            self.pincode = pincode
            
            self.landmark = landmark
            
            self.addressType = addressType
            
            self.latitude = latitude
            
            self.longitude = longitude
            
            self.city = city
            
            self.address1 = address1
            
            self.country = country
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
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
                    pincode = try container.decode(Int.self, forKey: .pincode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressType = try container.decode(String.self, forKey: .addressType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    latitude = try container.decode(Double.self, forKey: .latitude)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    longitude = try container.decode(Double.self, forKey: .longitude)
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
                    address1 = try container.decode(String.self, forKey: .address1)
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
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
        }
        
    }
    
    /*
        Model: BusinessCountryInfo
        Used By: CompanyProfile
    */

    struct BusinessCountryInfo: Codable {
        
        
        public var countryCode: String?
        
        public var country: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case country = "country"
            
        }

        public init(country: String?, countryCode: String?) {
            
            self.countryCode = countryCode
            
            self.country = country
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
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
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
        }
        
    }
    
    /*
        Model: Website
        Used By: CompanyProfile
    */

    struct Website: Codable {
        
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
        }

        public init(url: String?) {
            
            self.url = url
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
        }
        
    }
    
    /*
        Model: BusinessDetails
        Used By: CompanyProfile
    */

    struct BusinessDetails: Codable {
        
        
        public var website: Website?
        

        public enum CodingKeys: String, CodingKey {
            
            case website = "website"
            
        }

        public init(website: Website?) {
            
            self.website = website
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    website = try container.decode(Website.self, forKey: .website)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(website, forKey: .website)
            
        }
        
    }
    
    /*
        Model: GetCompanyProfileSerializerResponse
        Used By: CompanyProfile
    */

    struct GetCompanyProfileSerializerResponse: Codable {
        
        
        public var modifiedBy: UserSerializer?
        
        public var stage: String?
        
        public var businessInfo: String?
        
        public var verifiedBy: UserSerializer?
        
        public var companyType: String
        
        public var uid: Int
        
        public var documents: [Document]?
        
        public var verifiedOn: String?
        
        public var contactDetails: ContactDetails?
        
        public var createdBy: UserSerializer?
        
        public var businessType: String
        
        public var addresses: [GetAddressSerializer]?
        
        public var createdOn: String?
        
        public var businessCountryInfo: BusinessCountryInfo?
        
        public var warnings: [String: Any]?
        
        public var name: String?
        
        public var notificationEmails: [String]?
        
        public var businessDetails: BusinessDetails?
        
        public var franchiseEnabled: Bool?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case modifiedBy = "modified_by"
            
            case stage = "stage"
            
            case businessInfo = "business_info"
            
            case verifiedBy = "verified_by"
            
            case companyType = "company_type"
            
            case uid = "uid"
            
            case documents = "documents"
            
            case verifiedOn = "verified_on"
            
            case contactDetails = "contact_details"
            
            case createdBy = "created_by"
            
            case businessType = "business_type"
            
            case addresses = "addresses"
            
            case createdOn = "created_on"
            
            case businessCountryInfo = "business_country_info"
            
            case warnings = "warnings"
            
            case name = "name"
            
            case notificationEmails = "notification_emails"
            
            case businessDetails = "business_details"
            
            case franchiseEnabled = "franchise_enabled"
            
            case modifiedOn = "modified_on"
            
        }

        public init(addresses: [GetAddressSerializer]?, businessCountryInfo: BusinessCountryInfo?, businessDetails: BusinessDetails?, businessInfo: String?, businessType: String, companyType: String, contactDetails: ContactDetails?, createdBy: UserSerializer?, createdOn: String?, documents: [Document]?, franchiseEnabled: Bool?, modifiedBy: UserSerializer?, modifiedOn: String?, name: String?, notificationEmails: [String]?, stage: String?, uid: Int, verifiedBy: UserSerializer?, verifiedOn: String?, warnings: [String: Any]?) {
            
            self.modifiedBy = modifiedBy
            
            self.stage = stage
            
            self.businessInfo = businessInfo
            
            self.verifiedBy = verifiedBy
            
            self.companyType = companyType
            
            self.uid = uid
            
            self.documents = documents
            
            self.verifiedOn = verifiedOn
            
            self.contactDetails = contactDetails
            
            self.createdBy = createdBy
            
            self.businessType = businessType
            
            self.addresses = addresses
            
            self.createdOn = createdOn
            
            self.businessCountryInfo = businessCountryInfo
            
            self.warnings = warnings
            
            self.name = name
            
            self.notificationEmails = notificationEmails
            
            self.businessDetails = businessDetails
            
            self.franchiseEnabled = franchiseEnabled
            
            self.modifiedOn = modifiedOn
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessInfo = try container.decode(String.self, forKey: .businessInfo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verifiedBy = try container.decode(UserSerializer.self, forKey: .verifiedBy)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                companyType = try container.decode(String.self, forKey: .companyType)
            
            
            
                uid = try container.decode(Int.self, forKey: .uid)
            
            
            
                do {
                    documents = try container.decode([Document].self, forKey: .documents)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verifiedOn = try container.decode(String.self, forKey: .verifiedOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contactDetails = try container.decode(ContactDetails.self, forKey: .contactDetails)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                businessType = try container.decode(String.self, forKey: .businessType)
            
            
            
                do {
                    addresses = try container.decode([GetAddressSerializer].self, forKey: .addresses)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessCountryInfo = try container.decode(BusinessCountryInfo.self, forKey: .businessCountryInfo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    warnings = try container.decode([String: Any].self, forKey: .warnings)
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
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessDetails = try container.decode(BusinessDetails.self, forKey: .businessDetails)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    franchiseEnabled = try container.decode(Bool.self, forKey: .franchiseEnabled)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            try? container.encodeIfPresent(companyType, forKey: .companyType)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
            try? container.encodeIfPresent(addresses, forKey: .addresses)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)
            
            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
        }
        
    }
    
    /*
        Model: ErrorResponse
        Used By: CompanyProfile
    */

    struct ErrorResponse: Codable {
        
        
        public var code: String?
        
        public var message: String?
        
        public var status: Int?
        
        public var meta: [String: Any]?
        
        public var errors: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case message = "message"
            
            case status = "status"
            
            case meta = "meta"
            
            case errors = "errors"
            
        }

        public init(code: String?, errors: [String: Any]?, message: String?, meta: [String: Any]?, status: Int?) {
            
            self.code = code
            
            self.message = message
            
            self.status = status
            
            self.meta = meta
            
            self.errors = errors
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(Int.self, forKey: .status)
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
                
            
            
                do {
                    errors = try container.decode([String: Any].self, forKey: .errors)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
        }
        
    }
    
    /*
        Model: CompanyAddress
        Used By: CompanyProfile
    */

    struct CompanyAddress: Codable {
        
        
        public var address2: String?
        
        public var countryCode: String?
        
        public var state: String
        
        public var pincode: Int
        
        public var landmark: String?
        
        public var latitude: Double
        
        public var longitude: Double
        
        public var city: String
        
        public var address1: String
        
        public var country: String
        

        public enum CodingKeys: String, CodingKey {
            
            case address2 = "address2"
            
            case countryCode = "country_code"
            
            case state = "state"
            
            case pincode = "pincode"
            
            case landmark = "landmark"
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
            case city = "city"
            
            case address1 = "address1"
            
            case country = "country"
            
        }

        public init(address1: String, address2: String?, city: String, country: String, countryCode: String?, landmark: String?, latitude: Double, longitude: Double, pincode: Int, state: String) {
            
            self.address2 = address2
            
            self.countryCode = countryCode
            
            self.state = state
            
            self.pincode = pincode
            
            self.landmark = landmark
            
            self.latitude = latitude
            
            self.longitude = longitude
            
            self.city = city
            
            self.address1 = address1
            
            self.country = country
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                state = try container.decode(String.self, forKey: .state)
            
            
            
                pincode = try container.decode(Int.self, forKey: .pincode)
            
            
            
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                latitude = try container.decode(Double.self, forKey: .latitude)
            
            
            
                longitude = try container.decode(Double.self, forKey: .longitude)
            
            
            
                city = try container.decode(String.self, forKey: .city)
            
            
            
                address1 = try container.decode(String.self, forKey: .address1)
            
            
            
                country = try container.decode(String.self, forKey: .country)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
        }
        
    }
    
    /*
        Model: BusinessCountryInfo1
        Used By: CompanyProfile
    */

    struct BusinessCountryInfo1: Codable {
        
        
        public var countryCode: String?
        
        public var country: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case country = "country"
            
        }

        public init(country: String?, countryCode: String?) {
            
            self.countryCode = countryCode
            
            self.country = country
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
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
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
        }
        
    }
    
    /*
        Model: ReferralInfo
        Used By: CompanyProfile
    */

    struct ReferralInfo: Codable {
        
        
        public var referralCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case referralCode = "referral_code"
            
        }

        public init(referralCode: String?) {
            
            self.referralCode = referralCode
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    referralCode = try container.decode(String.self, forKey: .referralCode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(referralCode, forKey: .referralCode)
            
        }
        
    }
    
    /*
        Model: CompanyStoreSerializerRequest
        Used By: CompanyProfile
    */

    struct CompanyStoreSerializerRequest: Codable {
        
        
        public var businessType: String
        
        public var warnings: [String: Any]?
        
        public var brands: [Int]
        
        public var document: Document
        
        public var address: CompanyAddress
        
        public var uid: Int?
        
        public var name: String
        
        public var notificationEmails: [String]?
        
        public var businessCountryInfo: BusinessCountryInfo1
        
        public var referralInfo: ReferralInfo?
        
        public var businessInfo: String?
        
        public var franchiseEnabled: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case businessType = "business_type"
            
            case warnings = "warnings"
            
            case brands = "brands"
            
            case document = "document"
            
            case address = "address"
            
            case uid = "uid"
            
            case name = "name"
            
            case notificationEmails = "notification_emails"
            
            case businessCountryInfo = "business_country_info"
            
            case referralInfo = "referral_info"
            
            case businessInfo = "business_info"
            
            case franchiseEnabled = "franchise_enabled"
            
        }

        public init(address: CompanyAddress, brands: [Int], businessCountryInfo: BusinessCountryInfo1, businessInfo: String?, businessType: String, document: Document, franchiseEnabled: Bool?, name: String, notificationEmails: [String]?, referralInfo: ReferralInfo?, uid: Int?, warnings: [String: Any]?) {
            
            self.businessType = businessType
            
            self.warnings = warnings
            
            self.brands = brands
            
            self.document = document
            
            self.address = address
            
            self.uid = uid
            
            self.name = name
            
            self.notificationEmails = notificationEmails
            
            self.businessCountryInfo = businessCountryInfo
            
            self.referralInfo = referralInfo
            
            self.businessInfo = businessInfo
            
            self.franchiseEnabled = franchiseEnabled
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                businessType = try container.decode(String.self, forKey: .businessType)
            
            
            
                do {
                    warnings = try container.decode([String: Any].self, forKey: .warnings)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                brands = try container.decode([Int].self, forKey: .brands)
            
            
            
                document = try container.decode(Document.self, forKey: .document)
            
            
            
                address = try container.decode(CompanyAddress.self, forKey: .address)
            
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
            
            
            
                do {
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                businessCountryInfo = try container.decode(BusinessCountryInfo1.self, forKey: .businessCountryInfo)
            
            
            
                do {
                    referralInfo = try container.decode(ReferralInfo.self, forKey: .referralInfo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessInfo = try container.decode(String.self, forKey: .businessInfo)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    franchiseEnabled = try container.decode(Bool.self, forKey: .franchiseEnabled)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            try? container.encodeIfPresent(brands, forKey: .brands)
            
            try? container.encodeIfPresent(document, forKey: .document)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)
            
            try? container.encodeIfPresent(referralInfo, forKey: .referralInfo)
            
            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)
            
            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)
            
        }
        
    }
    
    /*
        Model: SuccessResponse
        Used By: CompanyProfile
    */

    struct SuccessResponse: Codable {
        
        
        public var success: Bool?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case uid = "uid"
            
        }

        public init(success: Bool?, uid: Int?) {
            
            self.success = success
            
            self.uid = uid
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: DocumentsObj
        Used By: CompanyProfile
    */

    struct DocumentsObj: Codable {
        
        
        public var verified: Int?
        
        public var pending: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case verified = "verified"
            
            case pending = "pending"
            
        }

        public init(pending: Int?, verified: Int?) {
            
            self.verified = verified
            
            self.pending = pending
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    verified = try container.decode(Int.self, forKey: .verified)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pending = try container.decode(Int.self, forKey: .pending)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            try? container.encodeIfPresent(pending, forKey: .pending)
            
        }
        
    }
    
    /*
        Model: MetricsSerializer
        Used By: CompanyProfile
    */

    struct MetricsSerializer: Codable {
        
        
        public var store: DocumentsObj?
        
        public var stage: String?
        
        public var uid: Int?
        
        public var companyDocuments: DocumentsObj?
        
        public var product: DocumentsObj?
        
        public var storeDocuments: DocumentsObj?
        
        public var brand: DocumentsObj?
        

        public enum CodingKeys: String, CodingKey {
            
            case store = "store"
            
            case stage = "stage"
            
            case uid = "uid"
            
            case companyDocuments = "company_documents"
            
            case product = "product"
            
            case storeDocuments = "store_documents"
            
            case brand = "brand"
            
        }

        public init(brand: DocumentsObj?, companyDocuments: DocumentsObj?, product: DocumentsObj?, stage: String?, store: DocumentsObj?, storeDocuments: DocumentsObj?, uid: Int?) {
            
            self.store = store
            
            self.stage = stage
            
            self.uid = uid
            
            self.companyDocuments = companyDocuments
            
            self.product = product
            
            self.storeDocuments = storeDocuments
            
            self.brand = brand
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    store = try container.decode(DocumentsObj.self, forKey: .store)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyDocuments = try container.decode(DocumentsObj.self, forKey: .companyDocuments)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    product = try container.decode(DocumentsObj.self, forKey: .product)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeDocuments = try container.decode(DocumentsObj.self, forKey: .storeDocuments)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(DocumentsObj.self, forKey: .brand)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(companyDocuments, forKey: .companyDocuments)
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            try? container.encodeIfPresent(storeDocuments, forKey: .storeDocuments)
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
        }
        
    }
    
    /*
        Model: BrandBannerSerializer
        Used By: CompanyProfile
    */

    struct BrandBannerSerializer: Codable {
        
        
        public var landscape: String?
        
        public var portrait: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case landscape = "landscape"
            
            case portrait = "portrait"
            
        }

        public init(landscape: String?, portrait: String?) {
            
            self.landscape = landscape
            
            self.portrait = portrait
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    landscape = try container.decode(String.self, forKey: .landscape)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    portrait = try container.decode(String.self, forKey: .portrait)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(landscape, forKey: .landscape)
            
            try? container.encodeIfPresent(portrait, forKey: .portrait)
            
        }
        
    }
    
    /*
        Model: CreateUpdateBrandRequestSerializer
        Used By: CompanyProfile
    */

    struct CreateUpdateBrandRequestSerializer: Codable {
        
        
        public var localeLanguage: [String: Any]?
        
        public var uid: Int?
        
        public var banner: BrandBannerSerializer?
        
        public var description: String?
        
        public var synonyms: [String]?
        
        public var name: String
        
        public var companyId: Int?
        
        public var logo: String
        
        public var brandTier: String?
        
        public var customJson: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case localeLanguage = "_locale_language"
            
            case uid = "uid"
            
            case banner = "banner"
            
            case description = "description"
            
            case synonyms = "synonyms"
            
            case name = "name"
            
            case companyId = "company_id"
            
            case logo = "logo"
            
            case brandTier = "brand_tier"
            
            case customJson = "_custom_json"
            
        }

        public init(banner: BrandBannerSerializer?, brandTier: String?, companyId: Int?, description: String?, logo: String, name: String, synonyms: [String]?, uid: Int?, customJson: [String: Any]?, localeLanguage: [String: Any]?) {
            
            self.localeLanguage = localeLanguage
            
            self.uid = uid
            
            self.banner = banner
            
            self.description = description
            
            self.synonyms = synonyms
            
            self.name = name
            
            self.companyId = companyId
            
            self.logo = logo
            
            self.brandTier = brandTier
            
            self.customJson = customJson
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    banner = try container.decode(BrandBannerSerializer.self, forKey: .banner)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    synonyms = try container.decode([String].self, forKey: .synonyms)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
            
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                logo = try container.decode(String.self, forKey: .logo)
            
            
            
                do {
                    brandTier = try container.decode(String.self, forKey: .brandTier)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(banner, forKey: .banner)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(brandTier, forKey: .brandTier)
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
        }
        
    }
    
    /*
        Model: UserSerializer1
        Used By: CompanyProfile
    */

    struct UserSerializer1: Codable {
        
        
        public var username: String?
        
        public var userId: String?
        
        public var contact: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case username = "username"
            
            case userId = "user_id"
            
            case contact = "contact"
            
        }

        public init(contact: String?, username: String?, userId: String?) {
            
            self.username = username
            
            self.userId = userId
            
            self.contact = contact
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    username = try container.decode(String.self, forKey: .username)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contact = try container.decode(String.self, forKey: .contact)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
        }
        
    }
    
    /*
        Model: GetBrandResponseSerializer
        Used By: CompanyProfile
    */

    struct GetBrandResponseSerializer: Codable {
        
        
        public var createdBy: UserSerializer1?
        
        public var modifiedBy: UserSerializer1?
        
        public var warnings: [String: Any]?
        
        public var localeLanguage: [String: Any]?
        
        public var stage: String?
        
        public var uid: Int?
        
        public var banner: BrandBannerSerializer?
        
        public var description: String?
        
        public var name: String
        
        public var rejectReason: String?
        
        public var synonyms: [String]?
        
        public var createdOn: String?
        
        public var verifiedOn: String?
        
        public var logo: String?
        
        public var customJson: [String: Any]?
        
        public var verifiedBy: UserSerializer1?
        
        public var slugKey: String?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case warnings = "warnings"
            
            case localeLanguage = "_locale_language"
            
            case stage = "stage"
            
            case uid = "uid"
            
            case banner = "banner"
            
            case description = "description"
            
            case name = "name"
            
            case rejectReason = "reject_reason"
            
            case synonyms = "synonyms"
            
            case createdOn = "created_on"
            
            case verifiedOn = "verified_on"
            
            case logo = "logo"
            
            case customJson = "_custom_json"
            
            case verifiedBy = "verified_by"
            
            case slugKey = "slug_key"
            
            case modifiedOn = "modified_on"
            
        }

        public init(banner: BrandBannerSerializer?, createdBy: UserSerializer1?, createdOn: String?, description: String?, logo: String?, modifiedBy: UserSerializer1?, modifiedOn: String?, name: String, rejectReason: String?, slugKey: String?, stage: String?, synonyms: [String]?, uid: Int?, verifiedBy: UserSerializer1?, verifiedOn: String?, warnings: [String: Any]?, customJson: [String: Any]?, localeLanguage: [String: Any]?) {
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.warnings = warnings
            
            self.localeLanguage = localeLanguage
            
            self.stage = stage
            
            self.uid = uid
            
            self.banner = banner
            
            self.description = description
            
            self.name = name
            
            self.rejectReason = rejectReason
            
            self.synonyms = synonyms
            
            self.createdOn = createdOn
            
            self.verifiedOn = verifiedOn
            
            self.logo = logo
            
            self.customJson = customJson
            
            self.verifiedBy = verifiedBy
            
            self.slugKey = slugKey
            
            self.modifiedOn = modifiedOn
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdBy = try container.decode(UserSerializer1.self, forKey: .createdBy)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(UserSerializer1.self, forKey: .modifiedBy)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    warnings = try container.decode([String: Any].self, forKey: .warnings)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    banner = try container.decode(BrandBannerSerializer.self, forKey: .banner)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
            
            
            
                do {
                    rejectReason = try container.decode(String.self, forKey: .rejectReason)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    synonyms = try container.decode([String].self, forKey: .synonyms)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verifiedOn = try container.decode(String.self, forKey: .verifiedOn)
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
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verifiedBy = try container.decode(UserSerializer1.self, forKey: .verifiedBy)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slugKey = try container.decode(String.self, forKey: .slugKey)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(banner, forKey: .banner)
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            try? container.encodeIfPresent(slugKey, forKey: .slugKey)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
        }
        
    }
    
    /*
        Model: CompanyBrandPostRequestSerializer
        Used By: CompanyProfile
    */

    struct CompanyBrandPostRequestSerializer: Codable {
        
        
        public var brands: [Int]
        
        public var company: Int
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case brands = "brands"
            
            case company = "company"
            
            case uid = "uid"
            
        }

        public init(brands: [Int], company: Int, uid: Int?) {
            
            self.brands = brands
            
            self.company = company
            
            self.uid = uid
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                brands = try container.decode([Int].self, forKey: .brands)
            
            
            
                company = try container.decode(Int.self, forKey: .company)
            
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(brands, forKey: .brands)
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
        }
        
    }
    
    /*
        Model: CompanyBrandListSerializer
        Used By: CompanyProfile
    */

    struct CompanyBrandListSerializer: Codable {
        
        
        public var page: [String: Any]?
        
        public var items: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [[String: Any]]?, page: [String: Any]?) {
            
            self.page = page
            
            self.items = items
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    page = try container.decode([String: Any].self, forKey: .page)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([[String: Any]].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
        }
        
    }
    
    /*
        Model: LocationTimingSerializer
        Used By: CompanyProfile
    */

    struct LocationTimingSerializer: Codable {
        
        
        public var minute: Int?
        
        public var hour: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case minute = "minute"
            
            case hour = "hour"
            
        }

        public init(hour: Int?, minute: Int?) {
            
            self.minute = minute
            
            self.hour = hour
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    minute = try container.decode(Int.self, forKey: .minute)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hour = try container.decode(Int.self, forKey: .hour)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(minute, forKey: .minute)
            
            try? container.encodeIfPresent(hour, forKey: .hour)
            
        }
        
    }
    
    /*
        Model: LocationDayWiseSerializer
        Used By: CompanyProfile
    */

    struct LocationDayWiseSerializer: Codable {
        
        
        public var closing: LocationTimingSerializer?
        
        public var weekday: String
        
        public var opening: LocationTimingSerializer?
        
        public var open: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case closing = "closing"
            
            case weekday = "weekday"
            
            case opening = "opening"
            
            case open = "open"
            
        }

        public init(closing: LocationTimingSerializer?, open: Bool, opening: LocationTimingSerializer?, weekday: String) {
            
            self.closing = closing
            
            self.weekday = weekday
            
            self.opening = opening
            
            self.open = open
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    closing = try container.decode(LocationTimingSerializer.self, forKey: .closing)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                weekday = try container.decode(String.self, forKey: .weekday)
            
            
            
                do {
                    opening = try container.decode(LocationTimingSerializer.self, forKey: .opening)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                open = try container.decode(Bool.self, forKey: .open)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(closing, forKey: .closing)
            
            try? container.encodeIfPresent(weekday, forKey: .weekday)
            
            try? container.encodeIfPresent(opening, forKey: .opening)
            
            try? container.encodeIfPresent(open, forKey: .open)
            
        }
        
    }
    
    /*
        Model: GetAddressSerializer1
        Used By: CompanyProfile
    */

    struct GetAddressSerializer1: Codable {
        
        
        public var address2: String?
        
        public var countryCode: String?
        
        public var state: String?
        
        public var pincode: Int?
        
        public var landmark: String?
        
        public var addressType: String?
        
        public var latitude: Double?
        
        public var longitude: Double?
        
        public var city: String?
        
        public var address1: String?
        
        public var country: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case address2 = "address2"
            
            case countryCode = "country_code"
            
            case state = "state"
            
            case pincode = "pincode"
            
            case landmark = "landmark"
            
            case addressType = "address_type"
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
            case city = "city"
            
            case address1 = "address1"
            
            case country = "country"
            
        }

        public init(address1: String?, address2: String?, addressType: String?, city: String?, country: String?, countryCode: String?, landmark: String?, latitude: Double?, longitude: Double?, pincode: Int?, state: String?) {
            
            self.address2 = address2
            
            self.countryCode = countryCode
            
            self.state = state
            
            self.pincode = pincode
            
            self.landmark = landmark
            
            self.addressType = addressType
            
            self.latitude = latitude
            
            self.longitude = longitude
            
            self.city = city
            
            self.address1 = address1
            
            self.country = country
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
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
                    pincode = try container.decode(Int.self, forKey: .pincode)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressType = try container.decode(String.self, forKey: .addressType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    latitude = try container.decode(Double.self, forKey: .latitude)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    longitude = try container.decode(Double.self, forKey: .longitude)
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
                    address1 = try container.decode(String.self, forKey: .address1)
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
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            try? container.encodeIfPresent(country, forKey: .country)
            
        }
        
    }
    
    /*
        Model: LocationManagerSerializer
        Used By: CompanyProfile
    */

    struct LocationManagerSerializer: Codable {
        
        
        public var mobileNo: PhoneNumber
        
        public var name: String?
        
        public var email: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case mobileNo = "mobile_no"
            
            case name = "name"
            
            case email = "email"
            
        }

        public init(email: String?, mobileNo: PhoneNumber, name: String?) {
            
            self.mobileNo = mobileNo
            
            self.name = name
            
            self.email = email
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                mobileNo = try container.decode(PhoneNumber.self, forKey: .mobileNo)
            
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(mobileNo, forKey: .mobileNo)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(email, forKey: .email)
            
        }
        
    }
    
    /*
        Model: ProductReturnConfigSerializer
        Used By: CompanyProfile
    */

    struct ProductReturnConfigSerializer: Codable {
        
        
        public var onSameStore: Bool?
        
        public var storeUid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case onSameStore = "on_same_store"
            
            case storeUid = "store_uid"
            
        }

        public init(onSameStore: Bool?, storeUid: Int?) {
            
            self.onSameStore = onSameStore
            
            self.storeUid = storeUid
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    onSameStore = try container.decode(Bool.self, forKey: .onSameStore)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeUid = try container.decode(Int.self, forKey: .storeUid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(onSameStore, forKey: .onSameStore)
            
            try? container.encodeIfPresent(storeUid, forKey: .storeUid)
            
        }
        
    }
    
    /*
        Model: InvoiceCredSerializer
        Used By: CompanyProfile
    */

    struct InvoiceCredSerializer: Codable {
        
        
        public var username: String?
        
        public var enabled: Bool?
        
        public var password: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case username = "username"
            
            case enabled = "enabled"
            
            case password = "password"
            
        }

        public init(enabled: Bool?, password: String?, username: String?) {
            
            self.username = username
            
            self.enabled = enabled
            
            self.password = password
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    username = try container.decode(String.self, forKey: .username)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    password = try container.decode(String.self, forKey: .password)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            try? container.encodeIfPresent(password, forKey: .password)
            
        }
        
    }
    
    /*
        Model: InvoiceDetailsSerializer
        Used By: CompanyProfile
    */

    struct InvoiceDetailsSerializer: Codable {
        
        
        public var eWaybill: InvoiceCredSerializer?
        
        public var eInvoice: InvoiceCredSerializer?
        

        public enum CodingKeys: String, CodingKey {
            
            case eWaybill = "e_waybill"
            
            case eInvoice = "e_invoice"
            
        }

        public init(eInvoice: InvoiceCredSerializer?, eWaybill: InvoiceCredSerializer?) {
            
            self.eWaybill = eWaybill
            
            self.eInvoice = eInvoice
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    eWaybill = try container.decode(InvoiceCredSerializer.self, forKey: .eWaybill)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eInvoice = try container.decode(InvoiceCredSerializer.self, forKey: .eInvoice)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(eWaybill, forKey: .eWaybill)
            
            try? container.encodeIfPresent(eInvoice, forKey: .eInvoice)
            
        }
        
    }
    
    /*
        Model: LocationSerializer
        Used By: CompanyProfile
    */

    struct LocationSerializer: Codable {
        
        
        public var timing: [LocationDayWiseSerializer]?
        
        public var warnings: [String: Any]?
        
        public var code: String
        
        public var company: Int
        
        public var uid: Int?
        
        public var documents: [Document]?
        
        public var address: GetAddressSerializer1
        
        public var stage: String?
        
        public var name: String
        
        public var manager: LocationManagerSerializer?
        
        public var notificationEmails: [String]?
        
        public var productReturnConfig: ProductReturnConfigSerializer?
        
        public var contactNumbers: [PhoneNumber]?
        
        public var gstCredentials: InvoiceDetailsSerializer?
        
        public var displayName: String
        
        public var storeType: String?
        
        public var customJson: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case timing = "timing"
            
            case warnings = "warnings"
            
            case code = "code"
            
            case company = "company"
            
            case uid = "uid"
            
            case documents = "documents"
            
            case address = "address"
            
            case stage = "stage"
            
            case name = "name"
            
            case manager = "manager"
            
            case notificationEmails = "notification_emails"
            
            case productReturnConfig = "product_return_config"
            
            case contactNumbers = "contact_numbers"
            
            case gstCredentials = "gst_credentials"
            
            case displayName = "display_name"
            
            case storeType = "store_type"
            
            case customJson = "_custom_json"
            
        }

        public init(address: GetAddressSerializer1, code: String, company: Int, contactNumbers: [PhoneNumber]?, displayName: String, documents: [Document]?, gstCredentials: InvoiceDetailsSerializer?, manager: LocationManagerSerializer?, name: String, notificationEmails: [String]?, productReturnConfig: ProductReturnConfigSerializer?, stage: String?, storeType: String?, timing: [LocationDayWiseSerializer]?, uid: Int?, warnings: [String: Any]?, customJson: [String: Any]?) {
            
            self.timing = timing
            
            self.warnings = warnings
            
            self.code = code
            
            self.company = company
            
            self.uid = uid
            
            self.documents = documents
            
            self.address = address
            
            self.stage = stage
            
            self.name = name
            
            self.manager = manager
            
            self.notificationEmails = notificationEmails
            
            self.productReturnConfig = productReturnConfig
            
            self.contactNumbers = contactNumbers
            
            self.gstCredentials = gstCredentials
            
            self.displayName = displayName
            
            self.storeType = storeType
            
            self.customJson = customJson
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    timing = try container.decode([LocationDayWiseSerializer].self, forKey: .timing)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    warnings = try container.decode([String: Any].self, forKey: .warnings)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                code = try container.decode(String.self, forKey: .code)
            
            
            
                company = try container.decode(Int.self, forKey: .company)
            
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    documents = try container.decode([Document].self, forKey: .documents)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                address = try container.decode(GetAddressSerializer1.self, forKey: .address)
            
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
            
            
            
                do {
                    manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productReturnConfig = try container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contactNumbers = try container.decode([PhoneNumber].self, forKey: .contactNumbers)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
            
            
            
                do {
                    storeType = try container.decode(String.self, forKey: .storeType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(timing, forKey: .timing)
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(manager, forKey: .manager)
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)
            
            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
            
            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
        }
        
    }
    
    /*
        Model: LocationListSerializer
        Used By: CompanyProfile
    */

    struct LocationListSerializer: Codable {
        
        
        public var page: [String: Any]?
        
        public var items: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [[String: Any]]?, page: [String: Any]?) {
            
            self.page = page
            
            self.items = items
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    page = try container.decode([String: Any].self, forKey: .page)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([[String: Any]].self, forKey: .items)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
        }
        
    }
    
    /*
        Model: GetCompanySerializer
        Used By: CompanyProfile
    */

    struct GetCompanySerializer: Codable {
        
        
        public var createdBy: UserSerializer?
        
        public var businessType: String?
        
        public var modifiedBy: UserSerializer?
        
        public var addresses: [GetAddressSerializer]?
        
        public var stage: String?
        
        public var uid: Int?
        
        public var name: String?
        
        public var rejectReason: String?
        
        public var createdOn: String?
        
        public var verifiedOn: String?
        
        public var verifiedBy: UserSerializer?
        
        public var companyType: String?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdBy = "created_by"
            
            case businessType = "business_type"
            
            case modifiedBy = "modified_by"
            
            case addresses = "addresses"
            
            case stage = "stage"
            
            case uid = "uid"
            
            case name = "name"
            
            case rejectReason = "reject_reason"
            
            case createdOn = "created_on"
            
            case verifiedOn = "verified_on"
            
            case verifiedBy = "verified_by"
            
            case companyType = "company_type"
            
            case modifiedOn = "modified_on"
            
        }

        public init(addresses: [GetAddressSerializer]?, businessType: String?, companyType: String?, createdBy: UserSerializer?, createdOn: String?, modifiedBy: UserSerializer?, modifiedOn: String?, name: String?, rejectReason: String?, stage: String?, uid: Int?, verifiedBy: UserSerializer?, verifiedOn: String?) {
            
            self.createdBy = createdBy
            
            self.businessType = businessType
            
            self.modifiedBy = modifiedBy
            
            self.addresses = addresses
            
            self.stage = stage
            
            self.uid = uid
            
            self.name = name
            
            self.rejectReason = rejectReason
            
            self.createdOn = createdOn
            
            self.verifiedOn = verifiedOn
            
            self.verifiedBy = verifiedBy
            
            self.companyType = companyType
            
            self.modifiedOn = modifiedOn
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessType = try container.decode(String.self, forKey: .businessType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addresses = try container.decode([GetAddressSerializer].self, forKey: .addresses)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
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
                    rejectReason = try container.decode(String.self, forKey: .rejectReason)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verifiedOn = try container.decode(String.self, forKey: .verifiedOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verifiedBy = try container.decode(UserSerializer.self, forKey: .verifiedBy)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyType = try container.decode(String.self, forKey: .companyType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            try? container.encodeIfPresent(addresses, forKey: .addresses)
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            try? container.encodeIfPresent(companyType, forKey: .companyType)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
        }
        
    }
    
    /*
        Model: LocationIntegrationType
        Used By: CompanyProfile
    */

    struct LocationIntegrationType: Codable {
        
        
        public var order: String?
        
        public var inventory: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case order = "order"
            
            case inventory = "inventory"
            
        }

        public init(inventory: String?, order: String?) {
            
            self.order = order
            
            self.inventory = inventory
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    order = try container.decode(String.self, forKey: .order)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    inventory = try container.decode(String.self, forKey: .inventory)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(order, forKey: .order)
            
            try? container.encodeIfPresent(inventory, forKey: .inventory)
            
        }
        
    }
    
    /*
        Model: GetLocationSerializer
        Used By: CompanyProfile
    */

    struct GetLocationSerializer: Codable {
        
        
        public var modifiedBy: UserSerializer1?
        
        public var timing: [LocationDayWiseSerializer]?
        
        public var company: GetCompanySerializer?
        
        public var stage: String?
        
        public var verifiedBy: UserSerializer1?
        
        public var displayName: String
        
        public var phoneNumber: String
        
        public var customJson: [String: Any]?
        
        public var address: GetAddressSerializer
        
        public var uid: Int?
        
        public var documents: [Document]?
        
        public var productReturnConfig: ProductReturnConfigSerializer?
        
        public var verifiedOn: String?
        
        public var contactNumbers: [PhoneNumber]?
        
        public var createdBy: UserSerializer1?
        
        public var code: String
        
        public var createdOn: String?
        
        public var gstCredentials: InvoiceDetailsSerializer?
        
        public var storeType: String?
        
        public var warnings: [String: Any]?
        
        public var name: String
        
        public var manager: LocationManagerSerializer?
        
        public var notificationEmails: [String]?
        
        public var integrationType: LocationIntegrationType?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case modifiedBy = "modified_by"
            
            case timing = "timing"
            
            case company = "company"
            
            case stage = "stage"
            
            case verifiedBy = "verified_by"
            
            case displayName = "display_name"
            
            case phoneNumber = "phone_number"
            
            case customJson = "_custom_json"
            
            case address = "address"
            
            case uid = "uid"
            
            case documents = "documents"
            
            case productReturnConfig = "product_return_config"
            
            case verifiedOn = "verified_on"
            
            case contactNumbers = "contact_numbers"
            
            case createdBy = "created_by"
            
            case code = "code"
            
            case createdOn = "created_on"
            
            case gstCredentials = "gst_credentials"
            
            case storeType = "store_type"
            
            case warnings = "warnings"
            
            case name = "name"
            
            case manager = "manager"
            
            case notificationEmails = "notification_emails"
            
            case integrationType = "integration_type"
            
            case modifiedOn = "modified_on"
            
        }

        public init(address: GetAddressSerializer, code: String, company: GetCompanySerializer?, contactNumbers: [PhoneNumber]?, createdBy: UserSerializer1?, createdOn: String?, displayName: String, documents: [Document]?, gstCredentials: InvoiceDetailsSerializer?, integrationType: LocationIntegrationType?, manager: LocationManagerSerializer?, modifiedBy: UserSerializer1?, modifiedOn: String?, name: String, notificationEmails: [String]?, phoneNumber: String, productReturnConfig: ProductReturnConfigSerializer?, stage: String?, storeType: String?, timing: [LocationDayWiseSerializer]?, uid: Int?, verifiedBy: UserSerializer1?, verifiedOn: String?, warnings: [String: Any]?, customJson: [String: Any]?) {
            
            self.modifiedBy = modifiedBy
            
            self.timing = timing
            
            self.company = company
            
            self.stage = stage
            
            self.verifiedBy = verifiedBy
            
            self.displayName = displayName
            
            self.phoneNumber = phoneNumber
            
            self.customJson = customJson
            
            self.address = address
            
            self.uid = uid
            
            self.documents = documents
            
            self.productReturnConfig = productReturnConfig
            
            self.verifiedOn = verifiedOn
            
            self.contactNumbers = contactNumbers
            
            self.createdBy = createdBy
            
            self.code = code
            
            self.createdOn = createdOn
            
            self.gstCredentials = gstCredentials
            
            self.storeType = storeType
            
            self.warnings = warnings
            
            self.name = name
            
            self.manager = manager
            
            self.notificationEmails = notificationEmails
            
            self.integrationType = integrationType
            
            self.modifiedOn = modifiedOn
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    modifiedBy = try container.decode(UserSerializer1.self, forKey: .modifiedBy)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timing = try container.decode([LocationDayWiseSerializer].self, forKey: .timing)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    company = try container.decode(GetCompanySerializer.self, forKey: .company)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verifiedBy = try container.decode(UserSerializer1.self, forKey: .verifiedBy)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
            
            
            
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
            
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                address = try container.decode(GetAddressSerializer.self, forKey: .address)
            
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    documents = try container.decode([Document].self, forKey: .documents)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productReturnConfig = try container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verifiedOn = try container.decode(String.self, forKey: .verifiedOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contactNumbers = try container.decode([PhoneNumber].self, forKey: .contactNumbers)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(UserSerializer1.self, forKey: .createdBy)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                code = try container.decode(String.self, forKey: .code)
            
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeType = try container.decode(String.self, forKey: .storeType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    warnings = try container.decode([String: Any].self, forKey: .warnings)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
            
            
            
                do {
                    manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    integrationType = try container.decode(LocationIntegrationType.self, forKey: .integrationType)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            try? container.encodeIfPresent(timing, forKey: .timing)
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(manager, forKey: .manager)
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
        }
        
    }
    
    
    
    /*
        Model: FailedResponse
        Used By: Assets
    */

    struct FailedResponse: Codable {
        
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(message: String) {
            
            self.message = message
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(message, forKey: .message)
            
        }
        
    }
    
    /*
        Model: CDN
        Used By: Assets
    */

    struct CDN: Codable {
        
        
        public var url: String
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
        }

        public init(url: String) {
            
            self.url = url
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                url = try container.decode(String.self, forKey: .url)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
        }
        
    }
    
    /*
        Model: Upload
        Used By: Assets
    */

    struct Upload: Codable {
        
        
        public var expiry: Int
        
        public var url: String
        

        public enum CodingKeys: String, CodingKey {
            
            case expiry = "expiry"
            
            case url = "url"
            
        }

        public init(expiry: Int, url: String) {
            
            self.expiry = expiry
            
            self.url = url
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                expiry = try container.decode(Int.self, forKey: .expiry)
            
            
            
                url = try container.decode(String.self, forKey: .url)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(expiry, forKey: .expiry)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
        }
        
    }
    
    /*
        Model: StartResponse
        Used By: Assets
    */

    struct StartResponse: Codable {
        
        
        public var fileName: String
        
        public var filePath: String
        
        public var contentType: String
        
        public var method: String
        
        public var namespace: String
        
        public var operation: String
        
        public var size: Int
        
        public var upload: Upload
        
        public var cdn: CDN
        

        public enum CodingKeys: String, CodingKey {
            
            case fileName = "file_name"
            
            case filePath = "file_path"
            
            case contentType = "content_type"
            
            case method = "method"
            
            case namespace = "namespace"
            
            case operation = "operation"
            
            case size = "size"
            
            case upload = "upload"
            
            case cdn = "cdn"
            
        }

        public init(cdn: CDN, contentType: String, fileName: String, filePath: String, method: String, namespace: String, operation: String, size: Int, upload: Upload) {
            
            self.fileName = fileName
            
            self.filePath = filePath
            
            self.contentType = contentType
            
            self.method = method
            
            self.namespace = namespace
            
            self.operation = operation
            
            self.size = size
            
            self.upload = upload
            
            self.cdn = cdn
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                fileName = try container.decode(String.self, forKey: .fileName)
            
            
            
                filePath = try container.decode(String.self, forKey: .filePath)
            
            
            
                contentType = try container.decode(String.self, forKey: .contentType)
            
            
            
                method = try container.decode(String.self, forKey: .method)
            
            
            
                namespace = try container.decode(String.self, forKey: .namespace)
            
            
            
                operation = try container.decode(String.self, forKey: .operation)
            
            
            
                size = try container.decode(Int.self, forKey: .size)
            
            
            
                upload = try container.decode(Upload.self, forKey: .upload)
            
            
            
                cdn = try container.decode(CDN.self, forKey: .cdn)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            try? container.encodeIfPresent(contentType, forKey: .contentType)
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            try? container.encodeIfPresent(operation, forKey: .operation)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(upload, forKey: .upload)
            
            try? container.encodeIfPresent(cdn, forKey: .cdn)
            
        }
        
    }
    
    /*
        Model: StartRequest
        Used By: Assets
    */

    struct StartRequest: Codable {
        
        
        public var fileName: String
        
        public var contentType: String
        
        public var size: Int
        
        public var tags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case fileName = "file_name"
            
            case contentType = "content_type"
            
            case size = "size"
            
            case tags = "tags"
            
        }

        public init(contentType: String, fileName: String, size: Int, tags: [String]?) {
            
            self.fileName = fileName
            
            self.contentType = contentType
            
            self.size = size
            
            self.tags = tags
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                fileName = try container.decode(String.self, forKey: .fileName)
            
            
            
                contentType = try container.decode(String.self, forKey: .contentType)
            
            
            
                size = try container.decode(Int.self, forKey: .size)
            
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            try? container.encodeIfPresent(contentType, forKey: .contentType)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
        }
        
    }
    
    /*
        Model: CompleteResponse
        Used By: Assets
    */

    struct CompleteResponse: Codable {
        
        
        public var id: String
        
        public var fileName: String
        
        public var filePath: String
        
        public var contentType: String
        
        public var method: String
        
        public var namespace: String
        
        public var operation: String
        
        public var size: Int
        
        public var upload: Upload
        
        public var cdn: CDN
        
        public var success: String
        
        public var tags: [String]?
        
        public var createdOn: String
        
        public var modifiedOn: String
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case fileName = "file_name"
            
            case filePath = "file_path"
            
            case contentType = "content_type"
            
            case method = "method"
            
            case namespace = "namespace"
            
            case operation = "operation"
            
            case size = "size"
            
            case upload = "upload"
            
            case cdn = "cdn"
            
            case success = "success"
            
            case tags = "tags"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
        }

        public init(cdn: CDN, contentType: String, createdOn: String, fileName: String, filePath: String, method: String, modifiedOn: String, namespace: String, operation: String, size: Int, success: String, tags: [String]?, upload: Upload, id: String) {
            
            self.id = id
            
            self.fileName = fileName
            
            self.filePath = filePath
            
            self.contentType = contentType
            
            self.method = method
            
            self.namespace = namespace
            
            self.operation = operation
            
            self.size = size
            
            self.upload = upload
            
            self.cdn = cdn
            
            self.success = success
            
            self.tags = tags
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
            
            
            
                fileName = try container.decode(String.self, forKey: .fileName)
            
            
            
                filePath = try container.decode(String.self, forKey: .filePath)
            
            
            
                contentType = try container.decode(String.self, forKey: .contentType)
            
            
            
                method = try container.decode(String.self, forKey: .method)
            
            
            
                namespace = try container.decode(String.self, forKey: .namespace)
            
            
            
                operation = try container.decode(String.self, forKey: .operation)
            
            
            
                size = try container.decode(Int.self, forKey: .size)
            
            
            
                upload = try container.decode(Upload.self, forKey: .upload)
            
            
            
                cdn = try container.decode(CDN.self, forKey: .cdn)
            
            
            
                success = try container.decode(String.self, forKey: .success)
            
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            try? container.encodeIfPresent(contentType, forKey: .contentType)
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            try? container.encodeIfPresent(operation, forKey: .operation)
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            try? container.encodeIfPresent(upload, forKey: .upload)
            
            try? container.encodeIfPresent(cdn, forKey: .cdn)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
        }
        
    }
    
    /*
        Model: Opts
        Used By: Assets
    */

    struct Opts: Codable {
        
        
        public var attempts: Int?
        
        public var timestamp: Int?
        
        public var delay: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case attempts = "attempts"
            
            case timestamp = "timestamp"
            
            case delay = "delay"
            
        }

        public init(attempts: Int?, delay: Int?, timestamp: Int?) {
            
            self.attempts = attempts
            
            self.timestamp = timestamp
            
            self.delay = delay
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    attempts = try container.decode(Int.self, forKey: .attempts)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timestamp = try container.decode(Int.self, forKey: .timestamp)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    delay = try container.decode(Int.self, forKey: .delay)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(attempts, forKey: .attempts)
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            try? container.encodeIfPresent(delay, forKey: .delay)
            
        }
        
    }
    
    /*
        Model: CopyFileTask
        Used By: Assets
    */

    struct CopyFileTask: Codable {
        
        
        public var id: String
        
        public var name: String
        
        public var data: BulkRequest
        
        public var opts: Opts
        
        public var progress: Int
        
        public var delay: Int
        
        public var timestamp: Int
        
        public var attemptsMade: Int
        
        public var stacktrace: [String]?
        
        public var finishedOn: Int
        
        public var processedOn: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case data = "data"
            
            case opts = "opts"
            
            case progress = "progress"
            
            case delay = "delay"
            
            case timestamp = "timestamp"
            
            case attemptsMade = "attempts_made"
            
            case stacktrace = "stacktrace"
            
            case finishedOn = "finished_on"
            
            case processedOn = "processed_on"
            
        }

        public init(attemptsMade: Int, data: BulkRequest, delay: Int, finishedOn: Int, id: String, name: String, opts: Opts, processedOn: Int, progress: Int, stacktrace: [String]?, timestamp: Int) {
            
            self.id = id
            
            self.name = name
            
            self.data = data
            
            self.opts = opts
            
            self.progress = progress
            
            self.delay = delay
            
            self.timestamp = timestamp
            
            self.attemptsMade = attemptsMade
            
            self.stacktrace = stacktrace
            
            self.finishedOn = finishedOn
            
            self.processedOn = processedOn
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
            
            
            
                name = try container.decode(String.self, forKey: .name)
            
            
            
                data = try container.decode(BulkRequest.self, forKey: .data)
            
            
            
                opts = try container.decode(Opts.self, forKey: .opts)
            
            
            
                progress = try container.decode(Int.self, forKey: .progress)
            
            
            
                delay = try container.decode(Int.self, forKey: .delay)
            
            
            
                timestamp = try container.decode(Int.self, forKey: .timestamp)
            
            
            
                attemptsMade = try container.decode(Int.self, forKey: .attemptsMade)
            
            
            
                do {
                    stacktrace = try container.decode([String].self, forKey: .stacktrace)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                finishedOn = try container.decode(Int.self, forKey: .finishedOn)
            
            
            
                processedOn = try container.decode(Int.self, forKey: .processedOn)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            try? container.encodeIfPresent(opts, forKey: .opts)
            
            try? container.encodeIfPresent(progress, forKey: .progress)
            
            try? container.encodeIfPresent(delay, forKey: .delay)
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            try? container.encodeIfPresent(attemptsMade, forKey: .attemptsMade)
            
            try? container.encodeIfPresent(stacktrace, forKey: .stacktrace)
            
            try? container.encodeIfPresent(finishedOn, forKey: .finishedOn)
            
            try? container.encodeIfPresent(processedOn, forKey: .processedOn)
            
        }
        
    }
    
    /*
        Model: BulkResponse
        Used By: Assets
    */

    struct BulkResponse: Codable {
        
        
        public var trackingUrl: String
        
        public var task: CopyFileTask
        

        public enum CodingKeys: String, CodingKey {
            
            case trackingUrl = "tracking_url"
            
            case task = "task"
            
        }

        public init(task: CopyFileTask, trackingUrl: String) {
            
            self.trackingUrl = trackingUrl
            
            self.task = task
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                trackingUrl = try container.decode(String.self, forKey: .trackingUrl)
            
            
            
                task = try container.decode(CopyFileTask.self, forKey: .task)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)
            
            try? container.encodeIfPresent(task, forKey: .task)
            
        }
        
    }
    
    /*
        Model: ReqConfiguration
        Used By: Assets
    */

    struct ReqConfiguration: Codable {
        
        
        public var concurrency: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case concurrency = "concurrency"
            
        }

        public init(concurrency: Int?) {
            
            self.concurrency = concurrency
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    concurrency = try container.decode(Int.self, forKey: .concurrency)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(concurrency, forKey: .concurrency)
            
        }
        
    }
    
    /*
        Model: Destination
        Used By: Assets
    */

    struct Destination: Codable {
        
        
        public var namespace: String
        
        public var rewrite: String
        
        public var basepath: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case namespace = "namespace"
            
            case rewrite = "rewrite"
            
            case basepath = "basepath"
            
        }

        public init(basepath: String?, namespace: String, rewrite: String) {
            
            self.namespace = namespace
            
            self.rewrite = rewrite
            
            self.basepath = basepath
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                namespace = try container.decode(String.self, forKey: .namespace)
            
            
            
                rewrite = try container.decode(String.self, forKey: .rewrite)
            
            
            
                do {
                    basepath = try container.decode(String.self, forKey: .basepath)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            try? container.encodeIfPresent(rewrite, forKey: .rewrite)
            
            try? container.encodeIfPresent(basepath, forKey: .basepath)
            
        }
        
    }
    
    /*
        Model: BulkRequest
        Used By: Assets
    */

    struct BulkRequest: Codable {
        
        
        public var urls: [String]
        
        public var destination: Destination
        
        public var configuration: ReqConfiguration?
        

        public enum CodingKeys: String, CodingKey {
            
            case urls = "urls"
            
            case destination = "destination"
            
            case configuration = "configuration"
            
        }

        public init(configuration: ReqConfiguration?, destination: Destination, urls: [String]) {
            
            self.urls = urls
            
            self.destination = destination
            
            self.configuration = configuration
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                urls = try container.decode([String].self, forKey: .urls)
            
            
            
                destination = try container.decode(Destination.self, forKey: .destination)
            
            
            
                do {
                    configuration = try container.decode(ReqConfiguration.self, forKey: .configuration)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(urls, forKey: .urls)
            
            try? container.encodeIfPresent(destination, forKey: .destination)
            
            try? container.encodeIfPresent(configuration, forKey: .configuration)
            
        }
        
    }
    
    /*
        Model: Urls
        Used By: Assets
    */

    struct Urls: Codable {
        
        
        public var url: String
        
        public var signedUrl: String
        
        public var expiry: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case signedUrl = "signed_url"
            
            case expiry = "expiry"
            
        }

        public init(expiry: Int, signedUrl: String, url: String) {
            
            self.url = url
            
            self.signedUrl = signedUrl
            
            self.expiry = expiry
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                url = try container.decode(String.self, forKey: .url)
            
            
            
                signedUrl = try container.decode(String.self, forKey: .signedUrl)
            
            
            
                expiry = try container.decode(Int.self, forKey: .expiry)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            try? container.encodeIfPresent(signedUrl, forKey: .signedUrl)
            
            try? container.encodeIfPresent(expiry, forKey: .expiry)
            
        }
        
    }
    
    /*
        Model: SignUrlResponse
        Used By: Assets
    */

    struct SignUrlResponse: Codable {
        
        
        public var urls: [Urls]
        

        public enum CodingKeys: String, CodingKey {
            
            case urls = "urls"
            
        }

        public init(urls: [Urls]) {
            
            self.urls = urls
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                urls = try container.decode([Urls].self, forKey: .urls)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(urls, forKey: .urls)
            
        }
        
    }
    
    /*
        Model: SignUrlRequest
        Used By: Assets
    */

    struct SignUrlRequest: Codable {
        
        
        public var expiry: Int
        
        public var urls: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case expiry = "expiry"
            
            case urls = "urls"
            
        }

        public init(expiry: Int, urls: [String]) {
            
            self.expiry = expiry
            
            self.urls = urls
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                expiry = try container.decode(Int.self, forKey: .expiry)
            
            
            
                urls = try container.decode([String].self, forKey: .urls)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(expiry, forKey: .expiry)
            
            try? container.encodeIfPresent(urls, forKey: .urls)
            
        }
        
    }
    
    /*
        Model: Page
        Used By: Assets
    */

    struct Page: Codable {
        
        
        public var current: Int
        
        public var itemTotal: Int
        
        public var hasPrevious: Bool
        
        public var hasNext: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case current = "current"
            
            case itemTotal = "item_total"
            
            case hasPrevious = "has_previous"
            
            case hasNext = "has_next"
            
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, itemTotal: Int) {
            
            self.current = current
            
            self.itemTotal = itemTotal
            
            self.hasPrevious = hasPrevious
            
            self.hasNext = hasNext
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                current = try container.decode(Int.self, forKey: .current)
            
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
            
            
            
                hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
        }
        
    }
    
    /*
        Model: Item
        Used By: Assets
    */

    struct Item: Codable {
        
        
        public var success: Bool
        
        public var tags: [String]
        
        public var id: String
        
        public var fileName: String
        
        public var operation: String?
        
        public var namespace: String
        
        public var contentType: String
        
        public var filePath: String
        
        public var upload: Upload
        
        public var cdn: CDN
        
        public var createdOn: String
        
        public var modifiedOn: String
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case tags = "tags"
            
            case id = "_id"
            
            case fileName = "file_name"
            
            case operation = "operation"
            
            case namespace = "namespace"
            
            case contentType = "content_type"
            
            case filePath = "file_path"
            
            case upload = "upload"
            
            case cdn = "cdn"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
        }

        public init(cdn: CDN, contentType: String, createdOn: String, fileName: String, filePath: String, modifiedOn: String, namespace: String, operation: String?, success: Bool, tags: [String], upload: Upload, id: String) {
            
            self.success = success
            
            self.tags = tags
            
            self.id = id
            
            self.fileName = fileName
            
            self.operation = operation
            
            self.namespace = namespace
            
            self.contentType = contentType
            
            self.filePath = filePath
            
            self.upload = upload
            
            self.cdn = cdn
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
            
            
            
                tags = try container.decode([String].self, forKey: .tags)
            
            
            
                id = try container.decode(String.self, forKey: .id)
            
            
            
                fileName = try container.decode(String.self, forKey: .fileName)
            
            
            
                do {
                    operation = try container.decode(String.self, forKey: .operation)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                namespace = try container.decode(String.self, forKey: .namespace)
            
            
            
                contentType = try container.decode(String.self, forKey: .contentType)
            
            
            
                filePath = try container.decode(String.self, forKey: .filePath)
            
            
            
                upload = try container.decode(Upload.self, forKey: .upload)
            
            
            
                cdn = try container.decode(CDN.self, forKey: .cdn)
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            try? container.encodeIfPresent(operation, forKey: .operation)
            
            try? container.encodeIfPresent(namespace, forKey: .namespace)
            
            try? container.encodeIfPresent(contentType, forKey: .contentType)
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            try? container.encodeIfPresent(upload, forKey: .upload)
            
            try? container.encodeIfPresent(cdn, forKey: .cdn)
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
        }
        
    }
    
    /*
        Model: BrowseResponse
        Used By: Assets
    */

    struct BrowseResponse: Codable {
        
        
        public var items: [Item]
        
        public var page: Page
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [Item], page: Page) {
            
            self.items = items
            
            self.page = page
            
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([Item].self, forKey: .items)
            
            
            
                page = try container.decode(Page.self, forKey: .page)
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            try? container.encodeIfPresent(page, forKey: .page)
            
        }
        
    }
    
    
}