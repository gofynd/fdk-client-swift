

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: BulkMeta
        Used By: Catalog
    */

    class BulkMeta: Codable {
        
        
        public var comment: String?
        
        public var imageUrls: [String]?
        
        public var total: Int?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case comment = "comment"
            
            case imageUrls = "image_urls"
            
            case total = "total"
            
            case meta = "meta"
            
        }

        public init(comment: String? = nil, imageUrls: [String]? = nil, meta: [String: Any]? = nil, total: Int? = nil) {
            
            self.comment = comment
            
            self.imageUrls = imageUrls
            
            self.total = total
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    imageUrls = try container.decode([String].self, forKey: .imageUrls)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(imageUrls, forKey: .imageUrls)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: BulkMeta
        Used By: Catalog
    */

    class BulkMeta: Codable {
        
        
        public var comment: String?
        
        public var imageUrls: [String]?
        
        public var total: Int?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case comment = "comment"
            
            case imageUrls = "image_urls"
            
            case total = "total"
            
            case meta = "meta"
            
        }

        public init(comment: String? = nil, imageUrls: [String]? = nil, meta: [String: Any]? = nil, total: Int? = nil) {
            
            self.comment = comment
            
            self.imageUrls = imageUrls
            
            self.total = total
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    imageUrls = try container.decode([String].self, forKey: .imageUrls)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(imageUrls, forKey: .imageUrls)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}


