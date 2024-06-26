

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ApplicationItemSeoMetaTags
        Used By: Catalog
    */

    class ApplicationItemSeoMetaTags: Codable {
        
        
        public var title: String
        
        public var items: [ApplicationItemSeoMetaTagItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case items = "items"
            
        }

        public init(items: [ApplicationItemSeoMetaTagItem]? = nil, title: String) {
            
            self.title = title
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                do {
                    items = try container.decode([ApplicationItemSeoMetaTagItem].self, forKey: .items)
                
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
        Model: ApplicationItemSeoMetaTags
        Used By: Catalog
    */

    class ApplicationItemSeoMetaTags: Codable {
        
        
        public var title: String
        
        public var items: [ApplicationItemSeoMetaTagItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case items = "items"
            
        }

        public init(items: [ApplicationItemSeoMetaTagItem]? = nil, title: String) {
            
            self.title = title
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                do {
                    items = try container.decode([ApplicationItemSeoMetaTagItem].self, forKey: .items)
                
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


