

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ArticleWeight
        Used By: Serviceability
    */

    class ArticleWeight: Codable {
        
        
        public var shipping: Int
        
        public var unit: String
        
        public var isDefault: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case shipping = "shipping"
            
            case unit = "unit"
            
            case isDefault = "is_default"
            
        }

        public init(isDefault: Bool, shipping: Int, unit: String) {
            
            self.shipping = shipping
            
            self.unit = unit
            
            self.isDefault = isDefault
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipping = try container.decode(Int.self, forKey: .shipping)
                
            
            
            
                unit = try container.decode(String.self, forKey: .unit)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipping, forKey: .shipping)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ArticleWeight
        Used By: Serviceability
    */

    class ArticleWeight: Codable {
        
        
        public var shipping: Int
        
        public var unit: String
        
        public var isDefault: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case shipping = "shipping"
            
            case unit = "unit"
            
            case isDefault = "is_default"
            
        }

        public init(isDefault: Bool, shipping: Int, unit: String) {
            
            self.shipping = shipping
            
            self.unit = unit
            
            self.isDefault = isDefault
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipping = try container.decode(Int.self, forKey: .shipping)
                
            
            
            
                unit = try container.decode(String.self, forKey: .unit)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipping, forKey: .shipping)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
        }
        
    }
}


