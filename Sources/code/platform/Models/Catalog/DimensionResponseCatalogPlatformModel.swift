

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: DimensionResponse
        Used By: Catalog
    */

    class DimensionResponse: Codable {
        
        
        public var width: Double
        
        public var height: Double
        
        public var unit: String
        
        public var isDefault: Bool
        
        public var length: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case width = "width"
            
            case height = "height"
            
            case unit = "unit"
            
            case isDefault = "is_default"
            
            case length = "length"
            
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            
            self.width = width
            
            self.height = height
            
            self.unit = unit
            
            self.isDefault = isDefault
            
            self.length = length
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                width = try container.decode(Double.self, forKey: .width)
                
            
            
            
                height = try container.decode(Double.self, forKey: .height)
                
            
            
            
                unit = try container.decode(String.self, forKey: .unit)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                length = try container.decode(Double.self, forKey: .length)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: DimensionResponse
        Used By: Catalog
    */

    class DimensionResponse: Codable {
        
        
        public var width: Double
        
        public var height: Double
        
        public var unit: String
        
        public var isDefault: Bool
        
        public var length: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case width = "width"
            
            case height = "height"
            
            case unit = "unit"
            
            case isDefault = "is_default"
            
            case length = "length"
            
        }

        public init(height: Double, isDefault: Bool, length: Double, unit: String, width: Double) {
            
            self.width = width
            
            self.height = height
            
            self.unit = unit
            
            self.isDefault = isDefault
            
            self.length = length
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                width = try container.decode(Double.self, forKey: .width)
                
            
            
            
                height = try container.decode(Double.self, forKey: .height)
                
            
            
            
                unit = try container.decode(String.self, forKey: .unit)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                length = try container.decode(Double.self, forKey: .length)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
        }
        
    }
}


