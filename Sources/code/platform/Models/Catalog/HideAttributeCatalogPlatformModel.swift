

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: HideAttribute
        Used By: Catalog
    */

    class HideAttribute: Codable {
        
        
        public var name: String
        
        public var uid: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case uid = "uid"
            
        }

        public init(name: String, uid: Int) {
            
            self.name = name
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                uid = try container.decode(Int.self, forKey: .uid)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: HideAttribute
        Used By: Catalog
    */

    class HideAttribute: Codable {
        
        
        public var name: String
        
        public var uid: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case uid = "uid"
            
        }

        public init(name: String, uid: Int) {
            
            self.name = name
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                uid = try container.decode(Int.self, forKey: .uid)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}


