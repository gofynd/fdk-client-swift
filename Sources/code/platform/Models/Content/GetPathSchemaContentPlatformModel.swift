

import Foundation


public extension PlatformClient.Content {
    /*
        Model: GetPathSchema
        Used By: Content
    */

    class GetPathSchema: Codable {
        
        
        public var docs: [PathMappingSchema]?
        
        public var page: Double?
        
        public var limit: Double?
        
        public var pages: Double?
        
        public var total: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case page = "page"
            
            case limit = "limit"
            
            case pages = "pages"
            
            case total = "total"
            
        }

        public init(docs: [PathMappingSchema]? = nil, limit: Double? = nil, page: Double? = nil, pages: Double? = nil, total: Double? = nil) {
            
            self.docs = docs
            
            self.page = page
            
            self.limit = limit
            
            self.pages = pages
            
            self.total = total
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    docs = try container.decode([PathMappingSchema].self, forKey: .docs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Double.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    limit = try container.decode(Double.self, forKey: .limit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pages = try container.decode(Double.self, forKey: .pages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            
            
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: GetPathSchema
        Used By: Content
    */

    class GetPathSchema: Codable {
        
        
        public var docs: [PathMappingSchema]?
        
        public var page: Double?
        
        public var limit: Double?
        
        public var pages: Double?
        
        public var total: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case docs = "docs"
            
            case page = "page"
            
            case limit = "limit"
            
            case pages = "pages"
            
            case total = "total"
            
        }

        public init(docs: [PathMappingSchema]? = nil, limit: Double? = nil, page: Double? = nil, pages: Double? = nil, total: Double? = nil) {
            
            self.docs = docs
            
            self.page = page
            
            self.limit = limit
            
            self.pages = pages
            
            self.total = total
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    docs = try container.decode([PathMappingSchema].self, forKey: .docs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Double.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    limit = try container.decode(Double.self, forKey: .limit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pages = try container.decode(Double.self, forKey: .pages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            
            
            
            try? container.encodeIfPresent(pages, forKey: .pages)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
        }
        
    }
}


