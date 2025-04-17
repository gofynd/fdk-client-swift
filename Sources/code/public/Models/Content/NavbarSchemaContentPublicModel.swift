

import Foundation
public extension PublicClient.Content {
    /*
        Model: NavbarSchema
        Used By: Content
    */

    class NavbarSchema: Codable {
        
        
        public var id: String?
        
        public var items: [NavItemSchema]?
        
        public var v: Double?
        
        public var modifiedBy: CreatedBySchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case items = "items"
            
            case v = "__v"
            
            case modifiedBy = "modified_by"
            
        }

        public init(items: [NavItemSchema]? = nil, modifiedBy: CreatedBySchema? = nil, id: String? = nil, v: Double? = nil) {
            
            self.id = id
            
            self.items = items
            
            self.v = v
            
            self.modifiedBy = modifiedBy
            
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
                
            
            
                do {
                    items = try container.decode([NavItemSchema].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Double.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(CreatedBySchema.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
        }
        
    }
}
