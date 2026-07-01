

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Tag
        Used By: Order
    */

    class Tag: Codable {
        
        
        public var slug: String?
        
        public var displayText: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case displayText = "display_text"
            
        }

        public init(displayText: String? = nil, slug: String? = nil) {
            
            self.slug = slug
            
            self.displayText = displayText
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayText = try container.decode(String.self, forKey: .displayText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(displayText, forKey: .displayText)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Tag
        Used By: Order
    */

    class Tag: Codable {
        
        
        public var slug: String?
        
        public var displayText: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case displayText = "display_text"
            
        }

        public init(displayText: String? = nil, slug: String? = nil) {
            
            self.slug = slug
            
            self.displayText = displayText
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayText = try container.decode(String.self, forKey: .displayText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(displayText, forKey: .displayText)
            
            
        }
        
    }
}


