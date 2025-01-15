

import Foundation
public extension PublicClient.Content {
    /*
        Model: MenusSchema
        Used By: Content
    */

    class MenusSchema: Codable {
        
        
        public var id: String?
        
        public var desktop: MenuTypeSchema?
        
        public var mobile: MenuTypeSchema?
        
        public var v: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case desktop = "desktop"
            
            case mobile = "mobile"
            
            case v = "__v"
            
        }

        public init(desktop: MenuTypeSchema? = nil, mobile: MenuTypeSchema? = nil, id: String? = nil, v: Double? = nil) {
            
            self.id = id
            
            self.desktop = desktop
            
            self.mobile = mobile
            
            self.v = v
            
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
                    desktop = try container.decode(MenuTypeSchema.self, forKey: .desktop)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mobile = try container.decode(MenuTypeSchema.self, forKey: .mobile)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(desktop, forKey: .desktop)
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}
