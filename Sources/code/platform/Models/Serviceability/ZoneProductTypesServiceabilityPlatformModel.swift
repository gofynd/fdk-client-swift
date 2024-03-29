

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneProductTypes
        Used By: Serviceability
    */

    class ZoneProductTypes: Codable {
        
        
        public var type: String
        
        public var tags: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case tags = "tags"
            
        }

        public init(tags: [String], type: String) {
            
            self.type = type
            
            self.tags = tags
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                tags = try container.decode([String].self, forKey: .tags)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneProductTypes
        Used By: Serviceability
    */

    class ZoneProductTypes: Codable {
        
        
        public var type: String
        
        public var tags: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case tags = "tags"
            
        }

        public init(tags: [String], type: String) {
            
            self.type = type
            
            self.tags = tags
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                tags = try container.decode([String].self, forKey: .tags)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
        }
        
    }
}


