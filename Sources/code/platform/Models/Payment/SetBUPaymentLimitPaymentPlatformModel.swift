

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: SetBUPaymentLimit
        Used By: Payment
    */

    class SetBUPaymentLimit: Codable {
        
        
        public var buisnessUnit: String
        
        public var config: SetUserPaymentLimitConfig
        

        public enum CodingKeys: String, CodingKey {
            
            case buisnessUnit = "buisness_unit"
            
            case config = "config"
            
        }

        public init(buisnessUnit: String, config: SetUserPaymentLimitConfig) {
            
            self.buisnessUnit = buisnessUnit
            
            self.config = config
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                buisnessUnit = try container.decode(String.self, forKey: .buisnessUnit)
                
            
            
            
                config = try container.decode(SetUserPaymentLimitConfig.self, forKey: .config)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(buisnessUnit, forKey: .buisnessUnit)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: SetBUPaymentLimit
        Used By: Payment
    */

    class SetBUPaymentLimit: Codable {
        
        
        public var buisnessUnit: String
        
        public var config: SetUserPaymentLimitConfig
        

        public enum CodingKeys: String, CodingKey {
            
            case buisnessUnit = "buisness_unit"
            
            case config = "config"
            
        }

        public init(buisnessUnit: String, config: SetUserPaymentLimitConfig) {
            
            self.buisnessUnit = buisnessUnit
            
            self.config = config
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                buisnessUnit = try container.decode(String.self, forKey: .buisnessUnit)
                
            
            
            
                config = try container.decode(SetUserPaymentLimitConfig.self, forKey: .config)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(buisnessUnit, forKey: .buisnessUnit)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
        }
        
    }
}


