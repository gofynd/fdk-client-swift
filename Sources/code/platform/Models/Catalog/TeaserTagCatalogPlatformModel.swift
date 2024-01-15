

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: TeaserTag
        Used By: Catalog
    */

    class TeaserTag: Codable {
        
        
        public var tag: String?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case tag = "tag"
            
            case url = "url"
            
        }

        public init(tag: String? = nil, url: String? = nil) {
            
            self.tag = tag
            
            self.url = url
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    tag = try container.decode(String.self, forKey: .tag)
                
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
            
            
            
            try? container.encodeIfPresent(tag, forKey: .tag)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: TeaserTag
        Used By: Catalog
    */

    class TeaserTag: Codable {
        
        
        public var tag: String?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case tag = "tag"
            
            case url = "url"
            
        }

        public init(tag: String? = nil, url: String? = nil) {
            
            self.tag = tag
            
            self.url = url
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    tag = try container.decode(String.self, forKey: .tag)
                
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
            
            
            
            try? container.encodeIfPresent(tag, forKey: .tag)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
}


