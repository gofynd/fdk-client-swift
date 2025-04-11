

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CompanySelfShip
        Used By: Serviceability
    */

    class CompanySelfShip: Codable {
        
        
        public var isActive: Bool
        
        public var tat: Double
        
        public var unit: String
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case tat = "tat"
            
            case unit = "unit"
            
        }

        public init(isActive: Bool, tat: Double, unit: String) {
            
            self.isActive = isActive
            
            self.tat = tat
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                tat = try container.decode(Double.self, forKey: .tat)
                
            
            
            
                unit = try container.decode(String.self, forKey: .unit)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(tat, forKey: .tat)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CompanySelfShip
        Used By: Serviceability
    */

    class CompanySelfShip: Codable {
        
        
        public var isActive: Bool
        
        public var tat: Double
        
        public var unit: String
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case tat = "tat"
            
            case unit = "unit"
            
        }

        public init(isActive: Bool, tat: Double, unit: String) {
            
            self.isActive = isActive
            
            self.tat = tat
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                tat = try container.decode(Double.self, forKey: .tat)
                
            
            
            
                unit = try container.decode(String.self, forKey: .unit)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(tat, forKey: .tat)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
        }
        
    }
}


