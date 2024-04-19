

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: AggregatorConfigDetail
        Used By: Payment
    */
    class AggregatorConfigDetail: Codable {
        
        public var sdk: Bool?
        
        public var secret: String
        
        public var api: String?
        
        public var pin: String?
        
        public var configType: String
        
        public var merchantKey: String?
        
        public var verifyApi: String?
        
        public var key: String
        
        public var userId: String?
        
        public var merchantId: String?
        

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
            
        }

        public init(api: String? = nil, configType: String, key: String, merchantId: String? = nil, merchantKey: String? = nil, pin: String? = nil, sdk: Bool? = nil, secret: String, userId: String? = nil, verifyApi: String? = nil) {
            
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
            
            
            
            secret = try container.decode(String.self, forKey: .secret)
            
            
            
            
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
            
            
            
            configType = try container.decode(String.self, forKey: .configType)
            
            
            
            
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
            
            
            
            key = try container.decode(String.self, forKey: .key)
            
            
            
            
            do {
                userId = try container.decode(String.self, forKey: .userId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                merchantId = try container.decode(String.self, forKey: .merchantId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(sdk, forKey: .sdk)
            
            
            
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            
            
            
            try? container.encode(api, forKey: .api)
            
            
            
            
            try? container.encode(pin, forKey: .pin)
            
            
            
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            
            
            
            try? container.encode(merchantKey, forKey: .merchantKey)
            
            
            
            
            try? container.encode(verifyApi, forKey: .verifyApi)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encode(userId, forKey: .userId)
            
            
            
            
            try? container.encode(merchantId, forKey: .merchantId)
            
            
        }
        
    }
}
