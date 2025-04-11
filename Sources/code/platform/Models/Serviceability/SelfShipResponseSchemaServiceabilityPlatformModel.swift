

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: SelfShipResponseSchema
        Used By: Serviceability
    */

    class SelfShipResponseSchema: Codable {
        
        
        public var isActive: Bool
        
        public var tat: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case tat = "tat"
            
        }

        public init(isActive: Bool, tat: Double) {
            
            self.isActive = isActive
            
            self.tat = tat
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                tat = try container.decode(Double.self, forKey: .tat)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(tat, forKey: .tat)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: SelfShipResponseSchema
        Used By: Serviceability
    */

    class SelfShipResponseSchema: Codable {
        
        
        public var isActive: Bool
        
        public var tat: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case tat = "tat"
            
        }

        public init(isActive: Bool, tat: Double) {
            
            self.isActive = isActive
            
            self.tat = tat
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                tat = try container.decode(Double.self, forKey: .tat)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(tat, forKey: .tat)
            
            
        }
        
    }
}


