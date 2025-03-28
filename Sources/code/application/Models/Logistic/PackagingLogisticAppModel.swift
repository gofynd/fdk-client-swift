

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: Packaging
        Used By: Logistic
    */
    class Packaging: Codable {
        
        public var name: String
        
        public var id: String
        
        public var dimension: PackagingDimension
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case id = "id"
            
            case dimension = "dimension"
            
        }

        public init(dimension: PackagingDimension, id: String, name: String) {
            
            self.name = name
            
            self.id = id
            
            self.dimension = dimension
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            name = try container.decode(String.self, forKey: .name)
            
            
            
            
            id = try container.decode(String.self, forKey: .id)
            
            
            
            
            dimension = try container.decode(PackagingDimension.self, forKey: .dimension)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
        }
        
    }
}
