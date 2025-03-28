

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: AggregatorCredential
        Used By: Payment
    */

    class AggregatorCredential: Codable {
        
        
        public var key: String?
        
        public var secret: String?
        
        public var merchantId: String?
        
        public var isActive: Bool?
        
        public var configType: String?
        
        public var display: AggregatorDisplayItem?
        
        public var aggregator: String?
        
        public var logo: String?
        
        public var displayName: String?
        
        public var integrationType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case secret = "secret"
            
            case merchantId = "merchant_id"
            
            case isActive = "is_active"
            
            case configType = "config_type"
            
            case display = "display"
            
            case aggregator = "aggregator"
            
            case logo = "logo"
            
            case displayName = "display_name"
            
            case integrationType = "integration_type"
            
        }

        public init(aggregator: String? = nil, configType: String? = nil, display: AggregatorDisplayItem? = nil, displayName: String? = nil, integrationType: String? = nil, isActive: Bool? = nil, key: String? = nil, logo: String? = nil, merchantId: String? = nil, secret: String? = nil) {
            
            self.key = key
            
            self.secret = secret
            
            self.merchantId = merchantId
            
            self.isActive = isActive
            
            self.configType = configType
            
            self.display = display
            
            self.aggregator = aggregator
            
            self.logo = logo
            
            self.displayName = displayName
            
            self.integrationType = integrationType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
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
                    merchantId = try container.decode(String.self, forKey: .merchantId)
                
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
                
            
            
                do {
                    configType = try container.decode(String.self, forKey: .configType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    display = try container.decode(AggregatorDisplayItem.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    integrationType = try container.decode(String.self, forKey: .integrationType)
                
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
            
            
            
            
            try? container.encodeIfPresent(merchantId, forKey: .merchantId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: AggregatorCredential
        Used By: Payment
    */

    class AggregatorCredential: Codable {
        
        
        public var key: String?
        
        public var secret: String?
        
        public var merchantId: String?
        
        public var isActive: Bool?
        
        public var configType: String?
        
        public var display: AggregatorDisplayItem?
        
        public var aggregator: String?
        
        public var logo: String?
        
        public var displayName: String?
        
        public var integrationType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case secret = "secret"
            
            case merchantId = "merchant_id"
            
            case isActive = "is_active"
            
            case configType = "config_type"
            
            case display = "display"
            
            case aggregator = "aggregator"
            
            case logo = "logo"
            
            case displayName = "display_name"
            
            case integrationType = "integration_type"
            
        }

        public init(aggregator: String? = nil, configType: String? = nil, display: AggregatorDisplayItem? = nil, displayName: String? = nil, integrationType: String? = nil, isActive: Bool? = nil, key: String? = nil, logo: String? = nil, merchantId: String? = nil, secret: String? = nil) {
            
            self.key = key
            
            self.secret = secret
            
            self.merchantId = merchantId
            
            self.isActive = isActive
            
            self.configType = configType
            
            self.display = display
            
            self.aggregator = aggregator
            
            self.logo = logo
            
            self.displayName = displayName
            
            self.integrationType = integrationType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
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
                    merchantId = try container.decode(String.self, forKey: .merchantId)
                
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
                
            
            
                do {
                    configType = try container.decode(String.self, forKey: .configType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    display = try container.decode(AggregatorDisplayItem.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    integrationType = try container.decode(String.self, forKey: .integrationType)
                
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
            
            
            
            
            try? container.encodeIfPresent(merchantId, forKey: .merchantId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
            
            
        }
        
    }
}


