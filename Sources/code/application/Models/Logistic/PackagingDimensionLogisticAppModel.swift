

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: PackagingDimension
        Used By: Logistic
    */
    class PackagingDimension: Codable {
        
        public var length: Double
        
        public var width: Double
        
        public var height: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case length = "length"
            
            case width = "width"
            
            case height = "height"
            
        }

        public init(height: Double, length: Double, width: Double) {
            
            self.length = length
            
            self.width = width
            
            self.height = height
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            length = try container.decode(Double.self, forKey: .length)
            
            
            
            
            width = try container.decode(Double.self, forKey: .width)
            
            
            
            
            height = try container.decode(Double.self, forKey: .height)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
        }
        
    }
}
