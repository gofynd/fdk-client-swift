

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: BulkGeoAreaRequestBody
        Used By: Serviceability
    */

    class BulkGeoAreaRequestBody: Codable {
        
        
        public var fileUrl: String?
        
        public var name: String?
        
        public var slug: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case fileUrl = "file_url"
            
            case name = "name"
            
            case slug = "slug"
            
            case type = "type"
            
        }

        public init(fileUrl: String? = nil, name: String? = nil, slug: String? = nil, type: String? = nil) {
            
            self.fileUrl = fileUrl
            
            self.name = name
            
            self.slug = slug
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fileUrl = try container.decode(String.self, forKey: .fileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: BulkGeoAreaRequestBody
        Used By: Serviceability
    */

    class BulkGeoAreaRequestBody: Codable {
        
        
        public var fileUrl: String?
        
        public var name: String?
        
        public var slug: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case fileUrl = "file_url"
            
            case name = "name"
            
            case slug = "slug"
            
            case type = "type"
            
        }

        public init(fileUrl: String? = nil, name: String? = nil, slug: String? = nil, type: String? = nil) {
            
            self.fileUrl = fileUrl
            
            self.name = name
            
            self.slug = slug
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fileUrl = try container.decode(String.self, forKey: .fileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}


