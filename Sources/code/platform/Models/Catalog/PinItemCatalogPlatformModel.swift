

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: PinItem
        Used By: Catalog
    */

    class PinItem: Codable {
        
        
        public var name: String
        
        public var uid: Int
        
        public var position: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case uid = "uid"
            
            case position = "position"
            
        }

        public init(name: String, position: Int, uid: Int) {
            
            self.name = name
            
            self.uid = uid
            
            self.position = position
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                uid = try container.decode(Int.self, forKey: .uid)
                
            
            
            
                position = try container.decode(Int.self, forKey: .position)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: PinItem
        Used By: Catalog
    */

    class PinItem: Codable {
        
        
        public var name: String
        
        public var uid: Int
        
        public var position: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case uid = "uid"
            
            case position = "position"
            
        }

        public init(name: String, position: Int, uid: Int) {
            
            self.name = name
            
            self.uid = uid
            
            self.position = position
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                uid = try container.decode(Int.self, forKey: .uid)
                
            
            
            
                position = try container.decode(Int.self, forKey: .position)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            
        }
        
    }
}


