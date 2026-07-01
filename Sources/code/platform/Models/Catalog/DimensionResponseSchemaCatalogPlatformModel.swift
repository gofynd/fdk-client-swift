

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: DimensionResponseSchema
        Used By: Catalog
    */

    class DimensionResponseSchema: Codable {
        
        
        public var height: Double
        
        public var isDefault: Bool
        
        public var length: Double
        
        public var unit: String
        
        public var width: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case height = "height"
            
            case isDefault = "is_default"
            
            case length = "length"
            
            case unit = "unit"
            
            case width = "width"
            
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            
            self.height = height
            
            self.isDefault = isDefault
            
            self.length = length
            
            self.unit = unit
            
            self.width = width
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                height = try container.decode(Double.self, forKey: .height)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                length = try container.decode(Double.self, forKey: .length)
                
            
            
            
                unit = try container.decode(String.self, forKey: .unit)
                
            
            
            
                width = try container.decode(Double.self, forKey: .width)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: DimensionResponseSchema
        Used By: Catalog
    */

    class DimensionResponseSchema: Codable {
        
        
        public var height: Double
        
        public var isDefault: Bool
        
        public var length: Double
        
        public var unit: String
        
        public var width: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case height = "height"
            
            case isDefault = "is_default"
            
            case length = "length"
            
            case unit = "unit"
            
            case width = "width"
            
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            
            self.height = height
            
            self.isDefault = isDefault
            
            self.length = length
            
            self.unit = unit
            
            self.width = width
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                height = try container.decode(Double.self, forKey: .height)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                length = try container.decode(Double.self, forKey: .length)
                
            
            
            
                unit = try container.decode(String.self, forKey: .unit)
                
            
            
            
                width = try container.decode(Double.self, forKey: .width)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
        }
        
    }
}


