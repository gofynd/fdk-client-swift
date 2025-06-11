

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ConflictingArea
        Used By: Serviceability
    */

    class ConflictingArea: Codable {
        
        
        public var geoareaId: String
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case geoareaId = "geoarea_id"
            
            case name = "name"
            
        }

        public init(geoareaId: String, name: String) {
            
            self.geoareaId = geoareaId
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                geoareaId = try container.decode(String.self, forKey: .geoareaId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(geoareaId, forKey: .geoareaId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ConflictingArea
        Used By: Serviceability
    */

    class ConflictingArea: Codable {
        
        
        public var geoareaId: String
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case geoareaId = "geoarea_id"
            
            case name = "name"
            
        }

        public init(geoareaId: String, name: String) {
            
            self.geoareaId = geoareaId
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                geoareaId = try container.decode(String.self, forKey: .geoareaId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(geoareaId, forKey: .geoareaId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}


