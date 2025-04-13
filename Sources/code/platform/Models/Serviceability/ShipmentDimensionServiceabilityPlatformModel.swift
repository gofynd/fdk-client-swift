

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ShipmentDimension
        Used By: Serviceability
    */

    class ShipmentDimension: Codable {
        
        
        public var height: Double
        
        public var length: Double
        
        public var width: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case height = "height"
            
            case length = "length"
            
            case width = "width"
            
        }

        public init(height: Double, length: Double, width: Double) {
            
            self.height = height
            
            self.length = length
            
            self.width = width
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                height = try container.decode(Double.self, forKey: .height)
                
            
            
            
                length = try container.decode(Double.self, forKey: .length)
                
            
            
            
                width = try container.decode(Double.self, forKey: .width)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ShipmentDimension
        Used By: Serviceability
    */

    class ShipmentDimension: Codable {
        
        
        public var height: Double
        
        public var length: Double
        
        public var width: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case height = "height"
            
            case length = "length"
            
            case width = "width"
            
        }

        public init(height: Double, length: Double, width: Double) {
            
            self.height = height
            
            self.length = length
            
            self.width = width
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                height = try container.decode(Double.self, forKey: .height)
                
            
            
            
                length = try container.decode(Double.self, forKey: .length)
                
            
            
            
                width = try container.decode(Double.self, forKey: .width)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
        }
        
    }
}


