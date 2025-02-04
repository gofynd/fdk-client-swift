

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: WeightResponseSchema
        Used By: Catalog
    */

    class WeightResponseSchema: Codable {
        
        
        public var isDefault: Bool
        
        public var shipping: Double
        
        public var unit: String
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefault = "is_default"
            
            case shipping = "shipping"
            
            case unit = "unit"
            
        }

        public init(isDefault: Bool, shipping: Double, unit: String) {
            
            self.isDefault = isDefault
            
            self.shipping = shipping
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                shipping = try container.decode(Double.self, forKey: .shipping)
                
            
            
            
                unit = try container.decode(String.self, forKey: .unit)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(shipping, forKey: .shipping)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: WeightResponseSchema
        Used By: Catalog
    */

    class WeightResponseSchema: Codable {
        
        
        public var isDefault: Bool
        
        public var shipping: Double
        
        public var unit: String
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefault = "is_default"
            
            case shipping = "shipping"
            
            case unit = "unit"
            
        }

        public init(isDefault: Bool, shipping: Double, unit: String) {
            
            self.isDefault = isDefault
            
            self.shipping = shipping
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                shipping = try container.decode(Double.self, forKey: .shipping)
                
            
            
            
                unit = try container.decode(String.self, forKey: .unit)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(shipping, forKey: .shipping)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
        }
        
    }
}


