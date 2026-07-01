

import Foundation
public extension PublicClient.Content {
    /*
        Model: TranslatableResource
        Used By: Content
    */

    class TranslatableResource: Codable {
        
        
        public var id: String?
        
        public var type: String
        
        public var name: String
        
        public var description: String
        
        public var meta: Meta
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case type = "type"
            
            case name = "name"
            
            case description = "description"
            
            case meta = "meta"
            
        }

        public init(description: String, meta: Meta, name: String, type: String, id: String? = nil) {
            
            self.id = id
            
            self.type = type
            
            self.name = name
            
            self.description = description
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                meta = try container.decode(Meta.self, forKey: .meta)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}
