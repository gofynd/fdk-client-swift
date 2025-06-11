

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: SetUserPaymentLimitConfig
        Used By: Payment
    */

    class SetUserPaymentLimitConfig: Codable {
        
        
        public var advance: SetAdvanceLimitConfig
        
        public var cod: SetCODLimitConfig
        

        public enum CodingKeys: String, CodingKey {
            
            case advance = "advance"
            
            case cod = "cod"
            
        }

        public init(advance: SetAdvanceLimitConfig, cod: SetCODLimitConfig) {
            
            self.advance = advance
            
            self.cod = cod
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                advance = try container.decode(SetAdvanceLimitConfig.self, forKey: .advance)
                
            
            
            
                cod = try container.decode(SetCODLimitConfig.self, forKey: .cod)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(advance, forKey: .advance)
            
            
            
            
            try? container.encodeIfPresent(cod, forKey: .cod)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: SetUserPaymentLimitConfig
        Used By: Payment
    */

    class SetUserPaymentLimitConfig: Codable {
        
        
        public var advance: SetAdvanceLimitConfig
        
        public var cod: SetCODLimitConfig
        

        public enum CodingKeys: String, CodingKey {
            
            case advance = "advance"
            
            case cod = "cod"
            
        }

        public init(advance: SetAdvanceLimitConfig, cod: SetCODLimitConfig) {
            
            self.advance = advance
            
            self.cod = cod
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                advance = try container.decode(SetAdvanceLimitConfig.self, forKey: .advance)
                
            
            
            
                cod = try container.decode(SetCODLimitConfig.self, forKey: .cod)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(advance, forKey: .advance)
            
            
            
            
            try? container.encodeIfPresent(cod, forKey: .cod)
            
            
        }
        
    }
}


