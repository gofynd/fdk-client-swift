

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentGatewayConfig
        Used By: Payment
    */

    class PaymentGatewayConfig: Codable {
        
        
        public var secret: String
        
        public var configType: String
        
        public var isActive: Bool?
        
        public var key: String
        
        public var merchantSalt: String
        

        public enum CodingKeys: String, CodingKey {
            
            case secret = "secret"
            
            case configType = "config_type"
            
            case isActive = "is_active"
            
            case key = "key"
            
            case merchantSalt = "merchant_salt"
            
        }

        public init(configType: String, isActive: Bool? = nil, key: String, merchantSalt: String, secret: String) {
            
            self.secret = secret
            
            self.configType = configType
            
            self.isActive = isActive
            
            self.key = key
            
            self.merchantSalt = merchantSalt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                secret = try container.decode(String.self, forKey: .secret)
                
            
            
            
                configType = try container.decode(String.self, forKey: .configType)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
            
                merchantSalt = try container.decode(String.self, forKey: .merchantSalt)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            
            
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentGatewayConfig
        Used By: Payment
    */

    class PaymentGatewayConfig: Codable {
        
        
        public var secret: String
        
        public var configType: String
        
        public var isActive: Bool?
        
        public var key: String
        
        public var merchantSalt: String
        

        public enum CodingKeys: String, CodingKey {
            
            case secret = "secret"
            
            case configType = "config_type"
            
            case isActive = "is_active"
            
            case key = "key"
            
            case merchantSalt = "merchant_salt"
            
        }

        public init(configType: String, isActive: Bool? = nil, key: String, merchantSalt: String, secret: String) {
            
            self.secret = secret
            
            self.configType = configType
            
            self.isActive = isActive
            
            self.key = key
            
            self.merchantSalt = merchantSalt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                secret = try container.decode(String.self, forKey: .secret)
                
            
            
            
                configType = try container.decode(String.self, forKey: .configType)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
            
                merchantSalt = try container.decode(String.self, forKey: .merchantSalt)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            
            
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)
            
            
        }
        
    }
}


