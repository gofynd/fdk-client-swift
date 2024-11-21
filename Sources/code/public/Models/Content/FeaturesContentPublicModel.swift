

import Foundation
public extension PublicClient.Content {
    /*
        Model: Features
        Used By: Content
    */

    class Features: Codable {
        
        
        public var title: String?
        
        public var text: String?
        
        public var list: [String]?
        
        public var image: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case text = "text"
            
            case list = "list"
            
            case image = "image"
            
        }

        public init(image: String? = nil, list: [String]? = nil, text: String? = nil, title: String? = nil) {
            
            self.title = title
            
            self.text = text
            
            self.list = list
            
            self.image = image
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    text = try container.decode(String.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    list = try container.decode([String].self, forKey: .list)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    image = try container.decode(String.self, forKey: .image)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            try? container.encodeIfPresent(text, forKey: .text)
            
            
            
            try? container.encodeIfPresent(list, forKey: .list)
            
            
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            
        }
        
    }
}
