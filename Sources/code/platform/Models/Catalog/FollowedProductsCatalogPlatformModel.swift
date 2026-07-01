

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: FollowedProducts
        Used By: Catalog
    */

    class FollowedProducts: Codable {
        
        
        public var itemIds: [Int]?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemIds = "item_ids"
            
            case page = "page"
            
        }

        public init(itemIds: [Int]? = nil, page: Page? = nil) {
            
            self.itemIds = itemIds
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemIds = try container.decode([Int].self, forKey: .itemIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemIds, forKey: .itemIds)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: FollowedProducts
        Used By: Catalog
    */

    class FollowedProducts: Codable {
        
        
        public var itemIds: [Int]?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemIds = "item_ids"
            
            case page = "page"
            
        }

        public init(itemIds: [Int]? = nil, page: Page? = nil) {
            
            self.itemIds = itemIds
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemIds = try container.decode([Int].self, forKey: .itemIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemIds, forKey: .itemIds)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}


