

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: AggregatorConfigDetail
        Used By: Payment
    */
    class AggregatorConfigDetail: Codable {
        
        public var sdk: Bool?
        
        public var secret: String?
        
        public var api: String?
        
        public var pin: String?
        
        public var configType: String?
        
        public var merchantKey: String?
        
        public var verifyApi: String?
        
        public var key: String?
        
        public var userId: String?
        
        public var merchantId: [String: Any]?
        
        public var apiDomain: String?
        
        public var webhookUsername: String?
        
        public var webhookPassword: String?
        
        public var signatureKey: String?
        
        public var merchantSalt: String?
        
        public var checkoutFormpostUrl: String?
        
        public var refundApiDomain: String?
        
        public var nonTrxnUrl: String?
        
        public var trxnUrl: String?
        
        public var webhookSecret: String?
        
        public var isSubFyndAccount: String?
        
        public var vpa: String?
        
        public var apiKey: String?
        
        public var secretKey: String?
        
        public var productId: String?
        
        public var domain: String?
        
        public var isActive: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case sdk = "sdk"
            
            case secret = "secret"
            
            case api = "api"
            
            case pin = "pin"
            
            case configType = "config_type"
            
            case merchantKey = "merchant_key"
            
            case verifyApi = "verify_api"
            
            case key = "key"
            
            case userId = "user_id"
            
            case merchantId = "merchant_id"
            
            case apiDomain = "api_domain"
            
            case webhookUsername = "webhook_username"
            
            case webhookPassword = "webhook_password"
            
            case signatureKey = "signature_key"
            
            case merchantSalt = "merchant_salt"
            
            case checkoutFormpostUrl = "checkout_formpost_url"
            
            case refundApiDomain = "refund_api_domain"
            
            case nonTrxnUrl = "non_trxn_url"
            
            case trxnUrl = "trxn_url"
            
            case webhookSecret = "webhook_secret"
            
            case isSubFyndAccount = "is_sub_fynd_account"
            
            case vpa = "vpa"
            
            case apiKey = "api_key"
            
            case secretKey = "secret_key"
            
            case productId = "product_id"
            
            case domain = "domain"
            
            case isActive = "is_active"
            
        }

        public init(api: String? = nil, apiDomain: String? = nil, apiKey: String? = nil, checkoutFormpostUrl: String? = nil, configType: String? = nil, domain: String? = nil, isActive: [String: Any]? = nil, isSubFyndAccount: String? = nil, key: String? = nil, merchantId: [String: Any]? = nil, merchantKey: String? = nil, merchantSalt: String? = nil, nonTrxnUrl: String? = nil, pin: String? = nil, productId: String? = nil, refundApiDomain: String? = nil, sdk: Bool? = nil, secret: String? = nil, secretKey: String? = nil, signatureKey: String? = nil, trxnUrl: String? = nil, userId: String? = nil, verifyApi: String? = nil, vpa: String? = nil, webhookPassword: String? = nil, webhookSecret: String? = nil, webhookUsername: String? = nil) {
            
            self.sdk = sdk
            
            self.secret = secret
            
            self.api = api
            
            self.pin = pin
            
            self.configType = configType
            
            self.merchantKey = merchantKey
            
            self.verifyApi = verifyApi
            
            self.key = key
            
            self.userId = userId
            
            self.merchantId = merchantId
            
            self.apiDomain = apiDomain
            
            self.webhookUsername = webhookUsername
            
            self.webhookPassword = webhookPassword
            
            self.signatureKey = signatureKey
            
            self.merchantSalt = merchantSalt
            
            self.checkoutFormpostUrl = checkoutFormpostUrl
            
            self.refundApiDomain = refundApiDomain
            
            self.nonTrxnUrl = nonTrxnUrl
            
            self.trxnUrl = trxnUrl
            
            self.webhookSecret = webhookSecret
            
            self.isSubFyndAccount = isSubFyndAccount
            
            self.vpa = vpa
            
            self.apiKey = apiKey
            
            self.secretKey = secretKey
            
            self.productId = productId
            
            self.domain = domain
            
            self.isActive = isActive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                sdk = try container.decode(Bool.self, forKey: .sdk)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                secret = try container.decode(String.self, forKey: .secret)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                api = try container.decode(String.self, forKey: .api)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                pin = try container.decode(String.self, forKey: .pin)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                configType = try container.decode(String.self, forKey: .configType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                merchantKey = try container.decode(String.self, forKey: .merchantKey)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                verifyApi = try container.decode(String.self, forKey: .verifyApi)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                key = try container.decode(String.self, forKey: .key)
            
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
                merchantId = try container.decode([String: Any].self, forKey: .merchantId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                apiDomain = try container.decode(String.self, forKey: .apiDomain)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                webhookUsername = try container.decode(String.self, forKey: .webhookUsername)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                webhookPassword = try container.decode(String.self, forKey: .webhookPassword)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                signatureKey = try container.decode(String.self, forKey: .signatureKey)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                merchantSalt = try container.decode(String.self, forKey: .merchantSalt)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                checkoutFormpostUrl = try container.decode(String.self, forKey: .checkoutFormpostUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                refundApiDomain = try container.decode(String.self, forKey: .refundApiDomain)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                nonTrxnUrl = try container.decode(String.self, forKey: .nonTrxnUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                trxnUrl = try container.decode(String.self, forKey: .trxnUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                webhookSecret = try container.decode(String.self, forKey: .webhookSecret)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isSubFyndAccount = try container.decode(String.self, forKey: .isSubFyndAccount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                vpa = try container.decode(String.self, forKey: .vpa)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                apiKey = try container.decode(String.self, forKey: .apiKey)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                secretKey = try container.decode(String.self, forKey: .secretKey)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                productId = try container.decode(String.self, forKey: .productId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                domain = try container.decode(String.self, forKey: .domain)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isActive = try container.decode([String: Any].self, forKey: .isActive)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(sdk, forKey: .sdk)
            
            
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            
            
            try? container.encodeIfPresent(api, forKey: .api)
            
            
            
            try? container.encodeIfPresent(pin, forKey: .pin)
            
            
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            
            
            try? container.encodeIfPresent(merchantKey, forKey: .merchantKey)
            
            
            
            try? container.encodeIfPresent(verifyApi, forKey: .verifyApi)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            try? container.encodeIfPresent(merchantId, forKey: .merchantId)
            
            
            
            try? container.encodeIfPresent(apiDomain, forKey: .apiDomain)
            
            
            
            try? container.encodeIfPresent(webhookUsername, forKey: .webhookUsername)
            
            
            
            try? container.encodeIfPresent(webhookPassword, forKey: .webhookPassword)
            
            
            
            try? container.encodeIfPresent(signatureKey, forKey: .signatureKey)
            
            
            
            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)
            
            
            
            try? container.encodeIfPresent(checkoutFormpostUrl, forKey: .checkoutFormpostUrl)
            
            
            
            try? container.encodeIfPresent(refundApiDomain, forKey: .refundApiDomain)
            
            
            
            try? container.encodeIfPresent(nonTrxnUrl, forKey: .nonTrxnUrl)
            
            
            
            try? container.encodeIfPresent(trxnUrl, forKey: .trxnUrl)
            
            
            
            try? container.encodeIfPresent(webhookSecret, forKey: .webhookSecret)
            
            
            
            try? container.encodeIfPresent(isSubFyndAccount, forKey: .isSubFyndAccount)
            
            
            
            try? container.encodeIfPresent(vpa, forKey: .vpa)
            
            
            
            try? container.encodeIfPresent(apiKey, forKey: .apiKey)
            
            
            
            try? container.encodeIfPresent(secretKey, forKey: .secretKey)
            
            
            
            try? container.encodeIfPresent(productId, forKey: .productId)
            
            
            
            try? container.encodeIfPresent(domain, forKey: .domain)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}
