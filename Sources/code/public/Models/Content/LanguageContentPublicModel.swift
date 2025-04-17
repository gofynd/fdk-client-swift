

import Foundation
public extension PublicClient.Content {
    /*
        Model: Language
        Used By: Content
    */

    class Language: Codable {
        
        
        public var id: String?
        
        public var locale: String
        
        public var direction: String
        
        public var name: String
        
        public var displayName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case locale = "locale"
            
            case direction = "direction"
            
            case name = "name"
            
            case displayName = "display_name"
            
        }

        public init(direction: String, displayName: String? = nil, locale: String, name: String, id: String? = nil) {
            
            self.id = id
            
            self.locale = locale
            
            self.direction = direction
            
            self.name = name
            
            self.displayName = displayName
            
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
                
            
            
                locale = try container.decode(String.self, forKey: .locale)
                
            
            
            
                direction = try container.decode(String.self, forKey: .direction)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(locale, forKey: .locale)
            
            
            
            try? container.encodeIfPresent(direction, forKey: .direction)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
        }
        
    }
}
