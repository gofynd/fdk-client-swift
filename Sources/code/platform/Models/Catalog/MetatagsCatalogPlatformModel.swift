

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: Metatags
        Used By: Catalog
    */

    class Metatags: Codable {
        
        
        public var title: String?
        
        public var items: [ApplicationItemSeoMetaTags]?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case items = "items"
            
        }

        public init(items: [ApplicationItemSeoMetaTags]? = nil, title: String? = nil) {
            
            self.title = title
            
            self.items = items
            
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
                    items = try container.decode([ApplicationItemSeoMetaTags].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: Metatags
        Used By: Catalog
    */

    class Metatags: Codable {
        
        
        public var title: String?
        
        public var items: [ApplicationItemSeoMetaTags]?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case items = "items"
            
        }

        public init(items: [ApplicationItemSeoMetaTags]? = nil, title: String? = nil) {
            
            self.title = title
            
            self.items = items
            
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
                    items = try container.decode([ApplicationItemSeoMetaTags].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


