

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ApplicationCollectionItemSeoPage
        Used By: Catalog
    */

    class ApplicationCollectionItemSeoPage: Codable {
        
        
        public var params: [String: Any]?
        
        public var query: PageQuery?
        
        public var type: String?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case params = "params"
            
            case query = "query"
            
            case type = "type"
            
            case url = "url"
            
        }

        public init(params: [String: Any]? = nil, query: PageQuery? = nil, type: String? = nil, url: String? = nil) {
            
            self.params = params
            
            self.query = query
            
            self.type = type
            
            self.url = url
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    params = try container.decode([String: Any].self, forKey: .params)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    query = try container.decode(PageQuery.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(params, forKey: .params)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ApplicationCollectionItemSeoPage
        Used By: Catalog
    */

    class ApplicationCollectionItemSeoPage: Codable {
        
        
        public var params: [String: Any]?
        
        public var query: PageQuery?
        
        public var type: String?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case params = "params"
            
            case query = "query"
            
            case type = "type"
            
            case url = "url"
            
        }

        public init(params: [String: Any]? = nil, query: PageQuery? = nil, type: String? = nil, url: String? = nil) {
            
            self.params = params
            
            self.query = query
            
            self.type = type
            
            self.url = url
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    params = try container.decode([String: Any].self, forKey: .params)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    query = try container.decode(PageQuery.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(params, forKey: .params)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
}


