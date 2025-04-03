

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: GetUserBULimitResponse
        Used By: Payment
    */

    class GetUserBULimitResponse: Codable {
        
        
        public var businessUnit: String
        
        public var displayName: String
        
        public var config: CODPaymentLimitConfig
        

        public enum CodingKeys: String, CodingKey {
            
            case businessUnit = "business_unit"
            
            case displayName = "display_name"
            
            case config = "config"
            
        }

        public init(businessUnit: String, config: CODPaymentLimitConfig, displayName: String) {
            
            self.businessUnit = businessUnit
            
            self.displayName = displayName
            
            self.config = config
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                businessUnit = try container.decode(String.self, forKey: .businessUnit)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                config = try container.decode(CODPaymentLimitConfig.self, forKey: .config)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(businessUnit, forKey: .businessUnit)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: GetUserBULimitResponse
        Used By: Payment
    */

    class GetUserBULimitResponse: Codable {
        
        
        public var businessUnit: String
        
        public var displayName: String
        
        public var config: CODPaymentLimitConfig
        

        public enum CodingKeys: String, CodingKey {
            
            case businessUnit = "business_unit"
            
            case displayName = "display_name"
            
            case config = "config"
            
        }

        public init(businessUnit: String, config: CODPaymentLimitConfig, displayName: String) {
            
            self.businessUnit = businessUnit
            
            self.displayName = displayName
            
            self.config = config
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                businessUnit = try container.decode(String.self, forKey: .businessUnit)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                config = try container.decode(CODPaymentLimitConfig.self, forKey: .config)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(businessUnit, forKey: .businessUnit)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
        }
        
    }
}


