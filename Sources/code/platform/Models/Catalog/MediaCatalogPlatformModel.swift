

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: Media
        Used By: Catalog
    */

    class Media: Codable {
        
        
        public var meta: [String: Any]?
        
        public var type: String?
        
        public var url: String
        
        public var alt: String?
        
        public var thumbnail: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case type = "type"
            
            case url = "url"
            
            case alt = "alt"
            
            case thumbnail = "thumbnail"
            
        }

        public init(alt: String? = nil, meta: [String: Any]? = nil, thumbnail: String? = nil, type: String? = nil, url: String) {
            
            self.meta = meta
            
            self.type = type
            
            self.url = url
            
            self.alt = alt
            
            self.thumbnail = thumbnail
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                
            
            
                url = try container.decode(String.self, forKey: .url)
                
            
            
            
                do {
                    alt = try container.decode(String.self, forKey: .alt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    thumbnail = try container.decode(String.self, forKey: .thumbnail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(alt, forKey: .alt)
            
            
            
            
            try? container.encodeIfPresent(thumbnail, forKey: .thumbnail)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: Media
        Used By: Catalog
    */

    class Media: Codable {
        
        
        public var meta: [String: Any]?
        
        public var type: String?
        
        public var url: String
        
        public var alt: String?
        
        public var thumbnail: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case type = "type"
            
            case url = "url"
            
            case alt = "alt"
            
            case thumbnail = "thumbnail"
            
        }

        public init(alt: String? = nil, meta: [String: Any]? = nil, thumbnail: String? = nil, type: String? = nil, url: String) {
            
            self.meta = meta
            
            self.type = type
            
            self.url = url
            
            self.alt = alt
            
            self.thumbnail = thumbnail
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                
            
            
                url = try container.decode(String.self, forKey: .url)
                
            
            
            
                do {
                    alt = try container.decode(String.self, forKey: .alt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    thumbnail = try container.decode(String.self, forKey: .thumbnail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(alt, forKey: .alt)
            
            
            
            
            try? container.encodeIfPresent(thumbnail, forKey: .thumbnail)
            
            
        }
        
    }
}


