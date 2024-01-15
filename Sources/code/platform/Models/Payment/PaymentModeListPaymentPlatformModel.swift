

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentModeList
        Used By: Payment
    */

    class PaymentModeList: Codable {
        
        
        public var remainingLimit: Double?
        
        public var cardBrand: String?
        
        public var cardFingerprint: String?
        
        public var merchantCode: String?
        
        public var intentFlow: Bool?
        
        public var code: String?
        
        public var cardIssuer: String?
        
        public var codLimitPerOrder: Double?
        
        public var cardReference: String?
        
        public var cardType: String?
        
        public var cardIsin: String?
        
        public var expMonth: Int?
        
        public var fyndVpa: String?
        
        public var cardNumber: String?
        
        public var displayPriority: Int?
        
        public var displayName: String?
        
        public var cardId: String?
        
        public var retryCount: Int?
        
        public var cardName: String?
        
        public var timeout: Int?
        
        public var intentAppErrorDictList: [IntentAppErrorList]?
        
        public var cardBrandImage: String?
        
        public var expired: Bool?
        
        public var logoUrl: PaymentModeLogo?
        
        public var cardToken: String?
        
        public var aggregatorName: String
        
        public var codCharges: Double?
        
        public var productCodData: ProductCODData?
        
        public var codLimit: Double?
        
        public var intentApp: [IntentApp]?
        
        public var nickname: String?
        
        public var compliantWithTokenisationGuidelines: Bool?
        
        public var expYear: Int?
        
        public var name: String?
        
        public var intentAppErrorList: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case remainingLimit = "remaining_limit"
            
            case cardBrand = "card_brand"
            
            case cardFingerprint = "card_fingerprint"
            
            case merchantCode = "merchant_code"
            
            case intentFlow = "intent_flow"
            
            case code = "code"
            
            case cardIssuer = "card_issuer"
            
            case codLimitPerOrder = "cod_limit_per_order"
            
            case cardReference = "card_reference"
            
            case cardType = "card_type"
            
            case cardIsin = "card_isin"
            
            case expMonth = "exp_month"
            
            case fyndVpa = "fynd_vpa"
            
            case cardNumber = "card_number"
            
            case displayPriority = "display_priority"
            
            case displayName = "display_name"
            
            case cardId = "card_id"
            
            case retryCount = "retry_count"
            
            case cardName = "card_name"
            
            case timeout = "timeout"
            
            case intentAppErrorDictList = "intent_app_error_dict_list"
            
            case cardBrandImage = "card_brand_image"
            
            case expired = "expired"
            
            case logoUrl = "logo_url"
            
            case cardToken = "card_token"
            
            case aggregatorName = "aggregator_name"
            
            case codCharges = "cod_charges"
            
            case productCodData = "product_cod_data"
            
            case codLimit = "cod_limit"
            
            case intentApp = "intent_app"
            
            case nickname = "nickname"
            
            case compliantWithTokenisationGuidelines = "compliant_with_tokenisation_guidelines"
            
            case expYear = "exp_year"
            
            case name = "name"
            
            case intentAppErrorList = "intent_app_error_list"
            
        }

        public init(aggregatorName: String, cardBrand: String? = nil, cardBrandImage: String? = nil, cardFingerprint: String? = nil, cardId: String? = nil, cardIsin: String? = nil, cardIssuer: String? = nil, cardName: String? = nil, cardNumber: String? = nil, cardReference: String? = nil, cardToken: String? = nil, cardType: String? = nil, code: String? = nil, codCharges: Double? = nil, codLimit: Double? = nil, codLimitPerOrder: Double? = nil, compliantWithTokenisationGuidelines: Bool? = nil, displayName: String? = nil, displayPriority: Int? = nil, expired: Bool? = nil, expMonth: Int? = nil, expYear: Int? = nil, fyndVpa: String? = nil, intentApp: [IntentApp]? = nil, intentAppErrorDictList: [IntentAppErrorList]? = nil, intentAppErrorList: [String]? = nil, intentFlow: Bool? = nil, logoUrl: PaymentModeLogo? = nil, merchantCode: String? = nil, name: String? = nil, nickname: String? = nil, productCodData: ProductCODData? = nil, remainingLimit: Double? = nil, retryCount: Int? = nil, timeout: Int? = nil) {
            
            self.remainingLimit = remainingLimit
            
            self.cardBrand = cardBrand
            
            self.cardFingerprint = cardFingerprint
            
            self.merchantCode = merchantCode
            
            self.intentFlow = intentFlow
            
            self.code = code
            
            self.cardIssuer = cardIssuer
            
            self.codLimitPerOrder = codLimitPerOrder
            
            self.cardReference = cardReference
            
            self.cardType = cardType
            
            self.cardIsin = cardIsin
            
            self.expMonth = expMonth
            
            self.fyndVpa = fyndVpa
            
            self.cardNumber = cardNumber
            
            self.displayPriority = displayPriority
            
            self.displayName = displayName
            
            self.cardId = cardId
            
            self.retryCount = retryCount
            
            self.cardName = cardName
            
            self.timeout = timeout
            
            self.intentAppErrorDictList = intentAppErrorDictList
            
            self.cardBrandImage = cardBrandImage
            
            self.expired = expired
            
            self.logoUrl = logoUrl
            
            self.cardToken = cardToken
            
            self.aggregatorName = aggregatorName
            
            self.codCharges = codCharges
            
            self.productCodData = productCodData
            
            self.codLimit = codLimit
            
            self.intentApp = intentApp
            
            self.nickname = nickname
            
            self.compliantWithTokenisationGuidelines = compliantWithTokenisationGuidelines
            
            self.expYear = expYear
            
            self.name = name
            
            self.intentAppErrorList = intentAppErrorList
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    remainingLimit = try container.decode(Double.self, forKey: .remainingLimit)
                
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
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
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
                    cardIssuer = try container.decode(String.self, forKey: .cardIssuer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codLimitPerOrder = try container.decode(Double.self, forKey: .codLimitPerOrder)
                
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
                    expMonth = try container.decode(Int.self, forKey: .expMonth)
                
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
                    cardNumber = try container.decode(String.self, forKey: .cardNumber)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                    retryCount = try container.decode(Int.self, forKey: .retryCount)
                
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
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
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
                    expired = try container.decode(Bool.self, forKey: .expired)
                
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
                    cardToken = try container.decode(String.self, forKey: .cardToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
            
            
            
                do {
                    codCharges = try container.decode(Double.self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productCodData = try container.decode(ProductCODData.self, forKey: .productCodData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codLimit = try container.decode(Double.self, forKey: .codLimit)
                
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
                    nickname = try container.decode(String.self, forKey: .nickname)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    compliantWithTokenisationGuidelines = try container.decode(Bool.self, forKey: .compliantWithTokenisationGuidelines)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(remainingLimit, forKey: .remainingLimit)
            
            
            
            
            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
            
            
            
            
            try? container.encodeIfPresent(cardFingerprint, forKey: .cardFingerprint)
            
            
            
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
            
            
            
            try? container.encodeIfPresent(intentFlow, forKey: .intentFlow)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(cardIssuer, forKey: .cardIssuer)
            
            
            
            
            try? container.encodeIfPresent(codLimitPerOrder, forKey: .codLimitPerOrder)
            
            
            
            
            try? container.encodeIfPresent(cardReference, forKey: .cardReference)
            
            
            
            
            try? container.encodeIfPresent(cardType, forKey: .cardType)
            
            
            
            
            try? container.encodeIfPresent(cardIsin, forKey: .cardIsin)
            
            
            
            
            try? container.encodeIfPresent(expMonth, forKey: .expMonth)
            
            
            
            
            try? container.encodeIfPresent(fyndVpa, forKey: .fyndVpa)
            
            
            
            
            try? container.encodeIfPresent(cardNumber, forKey: .cardNumber)
            
            
            
            
            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(cardId, forKey: .cardId)
            
            
            
            
            try? container.encodeIfPresent(retryCount, forKey: .retryCount)
            
            
            
            
            try? container.encodeIfPresent(cardName, forKey: .cardName)
            
            
            
            
            try? container.encodeIfPresent(timeout, forKey: .timeout)
            
            
            
            
            try? container.encodeIfPresent(intentAppErrorDictList, forKey: .intentAppErrorDictList)
            
            
            
            
            try? container.encodeIfPresent(cardBrandImage, forKey: .cardBrandImage)
            
            
            
            
            try? container.encodeIfPresent(expired, forKey: .expired)
            
            
            
            
            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)
            
            
            
            
            try? container.encodeIfPresent(cardToken, forKey: .cardToken)
            
            
            
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(productCodData, forKey: .productCodData)
            
            
            
            
            try? container.encodeIfPresent(codLimit, forKey: .codLimit)
            
            
            
            
            try? container.encodeIfPresent(intentApp, forKey: .intentApp)
            
            
            
            
            try? container.encodeIfPresent(nickname, forKey: .nickname)
            
            
            
            
            try? container.encodeIfPresent(compliantWithTokenisationGuidelines, forKey: .compliantWithTokenisationGuidelines)
            
            
            
            
            try? container.encodeIfPresent(expYear, forKey: .expYear)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(intentAppErrorList, forKey: .intentAppErrorList)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentModeList
        Used By: Payment
    */

    class PaymentModeList: Codable {
        
        
        public var remainingLimit: Double?
        
        public var cardBrand: String?
        
        public var cardFingerprint: String?
        
        public var merchantCode: String?
        
        public var intentFlow: Bool?
        
        public var code: String?
        
        public var cardIssuer: String?
        
        public var codLimitPerOrder: Double?
        
        public var cardReference: String?
        
        public var cardType: String?
        
        public var cardIsin: String?
        
        public var expMonth: Int?
        
        public var fyndVpa: String?
        
        public var cardNumber: String?
        
        public var displayPriority: Int?
        
        public var displayName: String?
        
        public var cardId: String?
        
        public var retryCount: Int?
        
        public var cardName: String?
        
        public var timeout: Int?
        
        public var intentAppErrorDictList: [IntentAppErrorList]?
        
        public var cardBrandImage: String?
        
        public var expired: Bool?
        
        public var logoUrl: PaymentModeLogo?
        
        public var cardToken: String?
        
        public var aggregatorName: String
        
        public var codCharges: Double?
        
        public var productCodData: ProductCODData?
        
        public var codLimit: Double?
        
        public var intentApp: [IntentApp]?
        
        public var nickname: String?
        
        public var compliantWithTokenisationGuidelines: Bool?
        
        public var expYear: Int?
        
        public var name: String?
        
        public var intentAppErrorList: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case remainingLimit = "remaining_limit"
            
            case cardBrand = "card_brand"
            
            case cardFingerprint = "card_fingerprint"
            
            case merchantCode = "merchant_code"
            
            case intentFlow = "intent_flow"
            
            case code = "code"
            
            case cardIssuer = "card_issuer"
            
            case codLimitPerOrder = "cod_limit_per_order"
            
            case cardReference = "card_reference"
            
            case cardType = "card_type"
            
            case cardIsin = "card_isin"
            
            case expMonth = "exp_month"
            
            case fyndVpa = "fynd_vpa"
            
            case cardNumber = "card_number"
            
            case displayPriority = "display_priority"
            
            case displayName = "display_name"
            
            case cardId = "card_id"
            
            case retryCount = "retry_count"
            
            case cardName = "card_name"
            
            case timeout = "timeout"
            
            case intentAppErrorDictList = "intent_app_error_dict_list"
            
            case cardBrandImage = "card_brand_image"
            
            case expired = "expired"
            
            case logoUrl = "logo_url"
            
            case cardToken = "card_token"
            
            case aggregatorName = "aggregator_name"
            
            case codCharges = "cod_charges"
            
            case productCodData = "product_cod_data"
            
            case codLimit = "cod_limit"
            
            case intentApp = "intent_app"
            
            case nickname = "nickname"
            
            case compliantWithTokenisationGuidelines = "compliant_with_tokenisation_guidelines"
            
            case expYear = "exp_year"
            
            case name = "name"
            
            case intentAppErrorList = "intent_app_error_list"
            
        }

        public init(aggregatorName: String, cardBrand: String? = nil, cardBrandImage: String? = nil, cardFingerprint: String? = nil, cardId: String? = nil, cardIsin: String? = nil, cardIssuer: String? = nil, cardName: String? = nil, cardNumber: String? = nil, cardReference: String? = nil, cardToken: String? = nil, cardType: String? = nil, code: String? = nil, codCharges: Double? = nil, codLimit: Double? = nil, codLimitPerOrder: Double? = nil, compliantWithTokenisationGuidelines: Bool? = nil, displayName: String? = nil, displayPriority: Int? = nil, expired: Bool? = nil, expMonth: Int? = nil, expYear: Int? = nil, fyndVpa: String? = nil, intentApp: [IntentApp]? = nil, intentAppErrorDictList: [IntentAppErrorList]? = nil, intentAppErrorList: [String]? = nil, intentFlow: Bool? = nil, logoUrl: PaymentModeLogo? = nil, merchantCode: String? = nil, name: String? = nil, nickname: String? = nil, productCodData: ProductCODData? = nil, remainingLimit: Double? = nil, retryCount: Int? = nil, timeout: Int? = nil) {
            
            self.remainingLimit = remainingLimit
            
            self.cardBrand = cardBrand
            
            self.cardFingerprint = cardFingerprint
            
            self.merchantCode = merchantCode
            
            self.intentFlow = intentFlow
            
            self.code = code
            
            self.cardIssuer = cardIssuer
            
            self.codLimitPerOrder = codLimitPerOrder
            
            self.cardReference = cardReference
            
            self.cardType = cardType
            
            self.cardIsin = cardIsin
            
            self.expMonth = expMonth
            
            self.fyndVpa = fyndVpa
            
            self.cardNumber = cardNumber
            
            self.displayPriority = displayPriority
            
            self.displayName = displayName
            
            self.cardId = cardId
            
            self.retryCount = retryCount
            
            self.cardName = cardName
            
            self.timeout = timeout
            
            self.intentAppErrorDictList = intentAppErrorDictList
            
            self.cardBrandImage = cardBrandImage
            
            self.expired = expired
            
            self.logoUrl = logoUrl
            
            self.cardToken = cardToken
            
            self.aggregatorName = aggregatorName
            
            self.codCharges = codCharges
            
            self.productCodData = productCodData
            
            self.codLimit = codLimit
            
            self.intentApp = intentApp
            
            self.nickname = nickname
            
            self.compliantWithTokenisationGuidelines = compliantWithTokenisationGuidelines
            
            self.expYear = expYear
            
            self.name = name
            
            self.intentAppErrorList = intentAppErrorList
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    remainingLimit = try container.decode(Double.self, forKey: .remainingLimit)
                
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
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
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
                    cardIssuer = try container.decode(String.self, forKey: .cardIssuer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codLimitPerOrder = try container.decode(Double.self, forKey: .codLimitPerOrder)
                
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
                    expMonth = try container.decode(Int.self, forKey: .expMonth)
                
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
                    cardNumber = try container.decode(String.self, forKey: .cardNumber)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                    retryCount = try container.decode(Int.self, forKey: .retryCount)
                
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
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
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
                    expired = try container.decode(Bool.self, forKey: .expired)
                
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
                    cardToken = try container.decode(String.self, forKey: .cardToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
                
            
            
            
                do {
                    codCharges = try container.decode(Double.self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productCodData = try container.decode(ProductCODData.self, forKey: .productCodData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codLimit = try container.decode(Double.self, forKey: .codLimit)
                
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
                    nickname = try container.decode(String.self, forKey: .nickname)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    compliantWithTokenisationGuidelines = try container.decode(Bool.self, forKey: .compliantWithTokenisationGuidelines)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(remainingLimit, forKey: .remainingLimit)
            
            
            
            
            try? container.encodeIfPresent(cardBrand, forKey: .cardBrand)
            
            
            
            
            try? container.encodeIfPresent(cardFingerprint, forKey: .cardFingerprint)
            
            
            
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
            
            
            
            try? container.encodeIfPresent(intentFlow, forKey: .intentFlow)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(cardIssuer, forKey: .cardIssuer)
            
            
            
            
            try? container.encodeIfPresent(codLimitPerOrder, forKey: .codLimitPerOrder)
            
            
            
            
            try? container.encodeIfPresent(cardReference, forKey: .cardReference)
            
            
            
            
            try? container.encodeIfPresent(cardType, forKey: .cardType)
            
            
            
            
            try? container.encodeIfPresent(cardIsin, forKey: .cardIsin)
            
            
            
            
            try? container.encodeIfPresent(expMonth, forKey: .expMonth)
            
            
            
            
            try? container.encodeIfPresent(fyndVpa, forKey: .fyndVpa)
            
            
            
            
            try? container.encodeIfPresent(cardNumber, forKey: .cardNumber)
            
            
            
            
            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(cardId, forKey: .cardId)
            
            
            
            
            try? container.encodeIfPresent(retryCount, forKey: .retryCount)
            
            
            
            
            try? container.encodeIfPresent(cardName, forKey: .cardName)
            
            
            
            
            try? container.encodeIfPresent(timeout, forKey: .timeout)
            
            
            
            
            try? container.encodeIfPresent(intentAppErrorDictList, forKey: .intentAppErrorDictList)
            
            
            
            
            try? container.encodeIfPresent(cardBrandImage, forKey: .cardBrandImage)
            
            
            
            
            try? container.encodeIfPresent(expired, forKey: .expired)
            
            
            
            
            try? container.encodeIfPresent(logoUrl, forKey: .logoUrl)
            
            
            
            
            try? container.encodeIfPresent(cardToken, forKey: .cardToken)
            
            
            
            
            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(productCodData, forKey: .productCodData)
            
            
            
            
            try? container.encodeIfPresent(codLimit, forKey: .codLimit)
            
            
            
            
            try? container.encodeIfPresent(intentApp, forKey: .intentApp)
            
            
            
            
            try? container.encodeIfPresent(nickname, forKey: .nickname)
            
            
            
            
            try? container.encodeIfPresent(compliantWithTokenisationGuidelines, forKey: .compliantWithTokenisationGuidelines)
            
            
            
            
            try? container.encodeIfPresent(expYear, forKey: .expYear)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(intentAppErrorList, forKey: .intentAppErrorList)
            
            
        }
        
    }
}


