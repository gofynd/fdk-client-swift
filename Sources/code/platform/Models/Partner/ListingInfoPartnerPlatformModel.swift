

import Foundation


public extension PlatformClient.Partner {
    /*
        Model: ListingInfo
        Used By: Partner
    */

    class ListingInfo: Codable {
        
        
        public var icon: String?
        
        public var name: String?
        
        public var tagline: String?
        
        public var keywords: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case icon = "icon"
            
            case name = "name"
            
            case tagline = "tagline"
            
            case keywords = "keywords"
            
        }

        public init(icon: String? = nil, keywords: [String]? = nil, name: String? = nil, tagline: String? = nil) {
            
            self.icon = icon
            
            self.name = name
            
            self.tagline = tagline
            
            self.keywords = keywords
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    icon = try container.decode(String.self, forKey: .icon)
                
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
                    tagline = try container.decode(String.self, forKey: .tagline)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    keywords = try container.decode([String].self, forKey: .keywords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(icon, forKey: .icon)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(tagline, forKey: .tagline)
            
            
            
            
            try? container.encodeIfPresent(keywords, forKey: .keywords)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Partner {
    /*
        Model: ListingInfo
        Used By: Partner
    */

    class ListingInfo: Codable {
        
        
        public var icon: String?
        
        public var name: String?
        
        public var tagline: String?
        
        public var keywords: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case icon = "icon"
            
            case name = "name"
            
            case tagline = "tagline"
            
            case keywords = "keywords"
            
        }

        public init(icon: String? = nil, keywords: [String]? = nil, name: String? = nil, tagline: String? = nil) {
            
            self.icon = icon
            
            self.name = name
            
            self.tagline = tagline
            
            self.keywords = keywords
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    icon = try container.decode(String.self, forKey: .icon)
                
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
                    tagline = try container.decode(String.self, forKey: .tagline)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    keywords = try container.decode([String].self, forKey: .keywords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(icon, forKey: .icon)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(tagline, forKey: .tagline)
            
            
            
            
            try? container.encodeIfPresent(keywords, forKey: .keywords)
            
            
        }
        
    }
}


