

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: PriceFactoryListResponseSchema
        Used By: Catalog
    */

    class PriceFactoryListResponseSchema: Codable {
        
        
        public var page: Page?
        
        public var data: [PriceFactoryListItemsSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case data = "data"
            
        }

        public init(data: [PriceFactoryListItemsSchema]? = nil, page: Page? = nil) {
            
            self.page = page
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode([PriceFactoryListItemsSchema].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: PriceFactoryListResponseSchema
        Used By: Catalog
    */

    class PriceFactoryListResponseSchema: Codable {
        
        
        public var page: Page?
        
        public var data: [PriceFactoryListItemsSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case data = "data"
            
        }

        public init(data: [PriceFactoryListItemsSchema]? = nil, page: Page? = nil) {
            
            self.page = page
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode([PriceFactoryListItemsSchema].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}


