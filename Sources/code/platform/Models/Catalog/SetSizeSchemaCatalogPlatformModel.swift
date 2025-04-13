

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: SetSizeSchema
        Used By: Catalog
    */

    class SetSizeSchema: Codable {
        
        
        public var size: String
        
        public var pieces: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case pieces = "pieces"
            
        }

        public init(pieces: Int, size: String) {
            
            self.size = size
            
            self.pieces = pieces
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                pieces = try container.decode(Int.self, forKey: .pieces)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(pieces, forKey: .pieces)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: SetSizeSchema
        Used By: Catalog
    */

    class SetSizeSchema: Codable {
        
        
        public var size: String
        
        public var pieces: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case pieces = "pieces"
            
        }

        public init(pieces: Int, size: String) {
            
            self.size = size
            
            self.pieces = pieces
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                pieces = try container.decode(Int.self, forKey: .pieces)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(pieces, forKey: .pieces)
            
            
        }
        
    }
}


