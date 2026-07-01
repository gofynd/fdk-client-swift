

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: BaseAppCategoryReturnConfigResponseSchema
        Used By: Catalog
    */

    class BaseAppCategoryReturnConfigResponseSchema: Codable {
        
        
        public var data: [AppCategoryReturnConfigResponseSchema]?
        
        public var page: PageResponseSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case page = "page"
            
        }

        public init(data: [AppCategoryReturnConfigResponseSchema]? = nil, page: PageResponseSchema? = nil) {
            
            self.data = data
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode([AppCategoryReturnConfigResponseSchema].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(PageResponseSchema.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: BaseAppCategoryReturnConfigResponseSchema
        Used By: Catalog
    */

    class BaseAppCategoryReturnConfigResponseSchema: Codable {
        
        
        public var data: [AppCategoryReturnConfigResponseSchema]?
        
        public var page: PageResponseSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case page = "page"
            
        }

        public init(data: [AppCategoryReturnConfigResponseSchema]? = nil, page: PageResponseSchema? = nil) {
            
            self.data = data
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode([AppCategoryReturnConfigResponseSchema].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(PageResponseSchema.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}


