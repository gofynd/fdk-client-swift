

import Foundation


public extension PlatformClient.Order {
    /*
        Model: DimensionSchema
        Used By: Order
    */

    class DimensionSchema: Codable {
        
        
        public var height: Int
        
        public var length: Int
        
        public var width: Int
        
        public var isDefault: Bool
        
        public var unit: String
        

        public enum CodingKeys: String, CodingKey {
            
            case height = "height"
            
            case length = "length"
            
            case width = "width"
            
            case isDefault = "is_default"
            
            case unit = "unit"
            
        }

        public init(height: Int, isDefault: Bool, length: Int, unit: String, width: Int) {
            
            self.height = height
            
            self.length = length
            
            self.width = width
            
            self.isDefault = isDefault
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                height = try container.decode(Int.self, forKey: .height)
                
            
            
            
                length = try container.decode(Int.self, forKey: .length)
                
            
            
            
                width = try container.decode(Int.self, forKey: .width)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                unit = try container.decode(String.self, forKey: .unit)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: DimensionSchema
        Used By: Order
    */

    class DimensionSchema: Codable {
        
        
        public var height: Int
        
        public var length: Int
        
        public var width: Int
        
        public var isDefault: Bool
        
        public var unit: String
        

        public enum CodingKeys: String, CodingKey {
            
            case height = "height"
            
            case length = "length"
            
            case width = "width"
            
            case isDefault = "is_default"
            
            case unit = "unit"
            
        }

        public init(height: Int, isDefault: Bool, length: Int, unit: String, width: Int) {
            
            self.height = height
            
            self.length = length
            
            self.width = width
            
            self.isDefault = isDefault
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                height = try container.decode(Int.self, forKey: .height)
                
            
            
            
                length = try container.decode(Int.self, forKey: .length)
                
            
            
            
                width = try container.decode(Int.self, forKey: .width)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                unit = try container.decode(String.self, forKey: .unit)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
        }
        
    }
}


