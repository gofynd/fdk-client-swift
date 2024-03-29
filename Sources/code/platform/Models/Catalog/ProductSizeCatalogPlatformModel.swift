

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductSize
        Used By: Catalog
    */

    class ProductSize: Codable {
        
        
        public var max: Int
        
        public var min: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case max = "max"
            
            case min = "min"
            
        }

        public init(max: Int, min: Int) {
            
            self.max = max
            
            self.min = min
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                max = try container.decode(Int.self, forKey: .max)
                
            
            
            
                min = try container.decode(Int.self, forKey: .min)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductSize
        Used By: Catalog
    */

    class ProductSize: Codable {
        
        
        public var max: Int
        
        public var min: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case max = "max"
            
            case min = "min"
            
        }

        public init(max: Int, min: Int) {
            
            self.max = max
            
            self.min = min
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                max = try container.decode(Int.self, forKey: .max)
                
            
            
            
                min = try container.decode(Int.self, forKey: .min)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
        }
        
    }
}


