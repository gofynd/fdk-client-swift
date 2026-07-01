

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: AppCategoryReturnConfigResponseSchema
        Used By: Catalog
    */

    class AppCategoryReturnConfigResponseSchema: Codable {
        
        
        public var appId: String?
        
        public var categoryId: Int?
        
        public var logo: String?
        
        public var name: String?
        
        public var returnConfig: ProductReturnConfigBaseSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case categoryId = "category_id"
            
            case logo = "logo"
            
            case name = "name"
            
            case returnConfig = "return_config"
            
        }

        public init(appId: String? = nil, categoryId: Int? = nil, logo: String? = nil, name: String? = nil, returnConfig: ProductReturnConfigBaseSchema? = nil) {
            
            self.appId = appId
            
            self.categoryId = categoryId
            
            self.logo = logo
            
            self.name = name
            
            self.returnConfig = returnConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryId = try container.decode(Int.self, forKey: .categoryId)
                
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
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnConfig = try container.decode(ProductReturnConfigBaseSchema.self, forKey: .returnConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: AppCategoryReturnConfigResponseSchema
        Used By: Catalog
    */

    class AppCategoryReturnConfigResponseSchema: Codable {
        
        
        public var appId: String?
        
        public var categoryId: Int?
        
        public var logo: String?
        
        public var name: String?
        
        public var returnConfig: ProductReturnConfigBaseSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case categoryId = "category_id"
            
            case logo = "logo"
            
            case name = "name"
            
            case returnConfig = "return_config"
            
        }

        public init(appId: String? = nil, categoryId: Int? = nil, logo: String? = nil, name: String? = nil, returnConfig: ProductReturnConfigBaseSchema? = nil) {
            
            self.appId = appId
            
            self.categoryId = categoryId
            
            self.logo = logo
            
            self.name = name
            
            self.returnConfig = returnConfig
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryId = try container.decode(Int.self, forKey: .categoryId)
                
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
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnConfig = try container.decode(ProductReturnConfigBaseSchema.self, forKey: .returnConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
        }
        
    }
}


