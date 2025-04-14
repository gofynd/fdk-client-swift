

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: SelfshipSchema
        Used By: Serviceability
    */

    class SelfshipSchema: Codable {
        
        
        public var tat: Int
        
        public var isActive: Bool
        
        public var unit: String
        

        public enum CodingKeys: String, CodingKey {
            
            case tat = "tat"
            
            case isActive = "is_active"
            
            case unit = "unit"
            
        }

        public init(isActive: Bool, tat: Int, unit: String) {
            
            self.tat = tat
            
            self.isActive = isActive
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                tat = try container.decode(Int.self, forKey: .tat)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                unit = try container.decode(String.self, forKey: .unit)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(tat, forKey: .tat)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: SelfshipSchema
        Used By: Serviceability
    */

    class SelfshipSchema: Codable {
        
        
        public var tat: Int
        
        public var isActive: Bool
        
        public var unit: String
        

        public enum CodingKeys: String, CodingKey {
            
            case tat = "tat"
            
            case isActive = "is_active"
            
            case unit = "unit"
            
        }

        public init(isActive: Bool, tat: Int, unit: String) {
            
            self.tat = tat
            
            self.isActive = isActive
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                tat = try container.decode(Int.self, forKey: .tat)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                unit = try container.decode(String.self, forKey: .unit)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(tat, forKey: .tat)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
        }
        
    }
}


