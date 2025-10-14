

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderingSourceConfig
        Used By: Order
    */

    class OrderingSourceConfig: Codable {
        
        
        public var slug: String?
        
        public var configs: [OrderingSourceFeature]?
        
        public var logo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case configs = "configs"
            
            case logo = "logo"
            
        }

        public init(configs: [OrderingSourceFeature]? = nil, logo: String? = nil, slug: String? = nil) {
            
            self.slug = slug
            
            self.configs = configs
            
            self.logo = logo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    configs = try container.decode([OrderingSourceFeature].self, forKey: .configs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(configs, forKey: .configs)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderingSourceConfig
        Used By: Order
    */

    class OrderingSourceConfig: Codable {
        
        
        public var slug: String?
        
        public var configs: [OrderingSourceFeature]?
        
        public var logo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case configs = "configs"
            
            case logo = "logo"
            
        }

        public init(configs: [OrderingSourceFeature]? = nil, logo: String? = nil, slug: String? = nil) {
            
            self.slug = slug
            
            self.configs = configs
            
            self.logo = logo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    configs = try container.decode([OrderingSourceFeature].self, forKey: .configs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(configs, forKey: .configs)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
        }
        
    }
}


