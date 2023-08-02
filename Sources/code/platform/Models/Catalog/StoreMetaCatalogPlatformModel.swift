

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: StoreMeta
        Used By: Catalog
    */

    class StoreMeta: Codable {
        
        
        public var id: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
        }

        public init(id: Int) {
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: StoreMeta
        Used By: Catalog
    */

    class StoreMeta: Codable {
        
        
        public var id: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
        }

        public init(id: Int) {
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}


