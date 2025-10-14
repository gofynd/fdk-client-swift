

import Foundation


public extension PlatformClient.Order {
    /*
        Model: DimensionSchema
        Used By: Order
    */

    class DimensionSchema: Codable {
        
        
        public var height: Int
        
        public var length: Int
        
        public var isDefault: Bool
        
        public var unit: String
        
        public var width: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case height = "height"
            
            case length = "length"
            
            case isDefault = "is_default"
            
            case unit = "unit"
            
            case width = "width"
            
        }

        public init(height: Int, isDefault: Bool, length: Int, unit: String, width: Int) {
            
            self.height = height
            
            self.length = length
            
            self.isDefault = isDefault
            
            self.unit = unit
            
            self.width = width
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                height = try container.decode(Int.self, forKey: .height)
                
            
            
            
                length = try container.decode(Int.self, forKey: .length)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                unit = try container.decode(String.self, forKey: .unit)
                
            
            
            
                width = try container.decode(Int.self, forKey: .width)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
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
        
        public var isDefault: Bool
        
        public var unit: String
        
        public var width: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case height = "height"
            
            case length = "length"
            
            case isDefault = "is_default"
            
            case unit = "unit"
            
            case width = "width"
            
        }

        public init(height: Int, isDefault: Bool, length: Int, unit: String, width: Int) {
            
            self.height = height
            
            self.length = length
            
            self.isDefault = isDefault
            
            self.unit = unit
            
            self.width = width
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                height = try container.decode(Int.self, forKey: .height)
                
            
            
            
                length = try container.decode(Int.self, forKey: .length)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                unit = try container.decode(String.self, forKey: .unit)
                
            
            
            
                width = try container.decode(Int.self, forKey: .width)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
        }
        
    }
}


