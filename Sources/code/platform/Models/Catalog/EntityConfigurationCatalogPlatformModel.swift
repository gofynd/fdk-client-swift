

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: EntityConfiguration
        Used By: Catalog
    */

    class EntityConfiguration: Codable {
        
        
        public var appId: String?
        
        public var configId: String?
        
        public var configType: String?
        
        public var id: String?
        
        public var listing: GetCatalogConfigurationDetailsSchemaListing?
        
        public var product: GetCatalogConfigurationDetailsProduct?
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case configId = "config_id"
            
            case configType = "config_type"
            
            case id = "id"
            
            case listing = "listing"
            
            case product = "product"
            
        }

        public init(appId: String? = nil, configId: String? = nil, configType: String? = nil, id: String? = nil, listing: GetCatalogConfigurationDetailsSchemaListing? = nil, product: GetCatalogConfigurationDetailsProduct? = nil) {
            
            self.appId = appId
            
            self.configId = configId
            
            self.configType = configType
            
            self.id = id
            
            self.listing = listing
            
            self.product = product
            
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
                    configId = try container.decode(String.self, forKey: .configId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    configType = try container.decode(String.self, forKey: .configType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    listing = try container.decode(GetCatalogConfigurationDetailsSchemaListing.self, forKey: .listing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    product = try container.decode(GetCatalogConfigurationDetailsProduct.self, forKey: .product)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(configId, forKey: .configId)
            
            
            
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(listing, forKey: .listing)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: EntityConfiguration
        Used By: Catalog
    */

    class EntityConfiguration: Codable {
        
        
        public var appId: String?
        
        public var configId: String?
        
        public var configType: String?
        
        public var id: String?
        
        public var listing: GetCatalogConfigurationDetailsSchemaListing?
        
        public var product: GetCatalogConfigurationDetailsProduct?
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case configId = "config_id"
            
            case configType = "config_type"
            
            case id = "id"
            
            case listing = "listing"
            
            case product = "product"
            
        }

        public init(appId: String? = nil, configId: String? = nil, configType: String? = nil, id: String? = nil, listing: GetCatalogConfigurationDetailsSchemaListing? = nil, product: GetCatalogConfigurationDetailsProduct? = nil) {
            
            self.appId = appId
            
            self.configId = configId
            
            self.configType = configType
            
            self.id = id
            
            self.listing = listing
            
            self.product = product
            
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
                    configId = try container.decode(String.self, forKey: .configId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    configType = try container.decode(String.self, forKey: .configType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    listing = try container.decode(GetCatalogConfigurationDetailsSchemaListing.self, forKey: .listing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    product = try container.decode(GetCatalogConfigurationDetailsProduct.self, forKey: .product)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(configId, forKey: .configId)
            
            
            
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(listing, forKey: .listing)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
        }
        
    }
}


