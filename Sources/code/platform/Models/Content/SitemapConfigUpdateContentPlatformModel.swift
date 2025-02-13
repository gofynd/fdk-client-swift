

import Foundation


public extension PlatformClient.Content {
    /*
        Model: SitemapConfigUpdate
        Used By: Content
    */

    class SitemapConfigUpdate: Codable {
        
        
        public var isActive: Bool?
        
        public var sitemap: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case sitemap = "sitemap"
            
        }

        public init(isActive: Bool? = nil, sitemap: String? = nil) {
            
            self.isActive = isActive
            
            self.sitemap = sitemap
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sitemap = try container.decode(String.self, forKey: .sitemap)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(sitemap, forKey: .sitemap)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: SitemapConfigUpdate
        Used By: Content
    */

    class SitemapConfigUpdate: Codable {
        
        
        public var isActive: Bool?
        
        public var sitemap: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case sitemap = "sitemap"
            
        }

        public init(isActive: Bool? = nil, sitemap: String? = nil) {
            
            self.isActive = isActive
            
            self.sitemap = sitemap
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sitemap = try container.decode(String.self, forKey: .sitemap)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(sitemap, forKey: .sitemap)
            
            
        }
        
    }
}


