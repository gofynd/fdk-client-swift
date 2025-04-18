

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PlatformPaymentModeCopyConfigRequest
        Used By: Payment
    */

    class PlatformPaymentModeCopyConfigRequest: Codable {
        
        
        public var fromConfig: FromConfig
        
        public var toConfig: ToConfig
        

        public enum CodingKeys: String, CodingKey {
            
            case fromConfig = "from_config"
            
            case toConfig = "to_config"
            
        }

        public init(fromConfig: FromConfig, toConfig: ToConfig) {
            
            self.fromConfig = fromConfig
            
            self.toConfig = toConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                fromConfig = try container.decode(FromConfig.self, forKey: .fromConfig)
                
            
            
            
                toConfig = try container.decode(ToConfig.self, forKey: .toConfig)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fromConfig, forKey: .fromConfig)
            
            
            
            
            try? container.encodeIfPresent(toConfig, forKey: .toConfig)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PlatformPaymentModeCopyConfigRequest
        Used By: Payment
    */

    class PlatformPaymentModeCopyConfigRequest: Codable {
        
        
        public var fromConfig: FromConfig
        
        public var toConfig: ToConfig
        

        public enum CodingKeys: String, CodingKey {
            
            case fromConfig = "from_config"
            
            case toConfig = "to_config"
            
        }

        public init(fromConfig: FromConfig, toConfig: ToConfig) {
            
            self.fromConfig = fromConfig
            
            self.toConfig = toConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                fromConfig = try container.decode(FromConfig.self, forKey: .fromConfig)
                
            
            
            
                toConfig = try container.decode(ToConfig.self, forKey: .toConfig)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fromConfig, forKey: .fromConfig)
            
            
            
            
            try? container.encodeIfPresent(toConfig, forKey: .toConfig)
            
            
        }
        
    }
}


