

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: BulkMeta
        Used By: Catalog
    */

    class BulkMeta: Codable {
        
        
        public var comment: String?
        
        public var imageUrls: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case comment = "comment"
            
            case imageUrls = "image_urls"
            
        }

        public init(comment: String? = nil, imageUrls: [String]? = nil) {
            
            self.comment = comment
            
            self.imageUrls = imageUrls
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(imageUrls, forKey: .imageUrls)
            
            
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
        

        public enum CodingKeys: String, CodingKey {
            
            case comment = "comment"
            
            case imageUrls = "image_urls"
            
        }

        public init(comment: String? = nil, imageUrls: [String]? = nil) {
            
            self.comment = comment
            
            self.imageUrls = imageUrls
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(imageUrls, forKey: .imageUrls)
            
            
        }
        
    }
}


