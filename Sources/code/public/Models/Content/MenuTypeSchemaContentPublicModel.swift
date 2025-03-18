

import Foundation
public extension PublicClient.Content {
    /*
        Model: MenuTypeSchema
        Used By: Content
    */

    class MenuTypeSchema: Codable {
        
        
        public var menu: MenuSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case menu = "menu"
            
        }

        public init(menu: MenuSchema? = nil) {
            
            self.menu = menu
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    menu = try container.decode(MenuSchema.self, forKey: .menu)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(menu, forKey: .menu)
            
            
        }
        
    }
}
