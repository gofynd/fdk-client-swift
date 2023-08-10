

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: EntityConfiguration
        Used By: Catalog
    */

    class EntityConfiguration: Codable {
        
        
        public var id: String?
        
        public var product: GetCatalogConfigurationDetailsProduct?
        
        public var listing: GetCatalogConfigurationDetailsSchemaListing?
        
        public var configId: String?
        
        public var configType: String
        
        public var appId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case product = "product"
            
            case listing = "listing"
            
            case configId = "config_id"
            
            case configType = "config_type"
            
            case appId = "app_id"
            
        }

        public init(appId: String, configId: String? = nil, configType: String, id: String? = nil, listing: GetCatalogConfigurationDetailsSchemaListing? = nil, product: GetCatalogConfigurationDetailsProduct? = nil) {
            
            self.id = id
            
            self.product = product
            
            self.listing = listing
            
            self.configId = configId
            
            self.configType = configType
            
            self.appId = appId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
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
                
            
            
                do {
                    listing = try container.decode(GetCatalogConfigurationDetailsSchemaListing.self, forKey: .listing)
                
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
                
            
            
                configType = try container.decode(String.self, forKey: .configType)
                
            
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(listing, forKey: .listing)
            
            
            
            
            try? container.encodeIfPresent(configId, forKey: .configId)
            
            
            
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: EntityConfiguration
        Used By: Catalog
    */

    class EntityConfiguration: Codable {
        
        
        public var id: String?
        
        public var product: GetCatalogConfigurationDetailsProduct?
        
        public var listing: GetCatalogConfigurationDetailsSchemaListing?
        
        public var configId: String?
        
        public var configType: String
        
        public var appId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case product = "product"
            
            case listing = "listing"
            
            case configId = "config_id"
            
            case configType = "config_type"
            
            case appId = "app_id"
            
        }

        public init(appId: String, configId: String? = nil, configType: String, id: String? = nil, listing: GetCatalogConfigurationDetailsSchemaListing? = nil, product: GetCatalogConfigurationDetailsProduct? = nil) {
            
            self.id = id
            
            self.product = product
            
            self.listing = listing
            
            self.configId = configId
            
            self.configType = configType
            
            self.appId = appId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
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
                
            
            
                do {
                    listing = try container.decode(GetCatalogConfigurationDetailsSchemaListing.self, forKey: .listing)
                
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
                
            
            
                configType = try container.decode(String.self, forKey: .configType)
                
            
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(listing, forKey: .listing)
            
            
            
            
            try? container.encodeIfPresent(configId, forKey: .configId)
            
            
            
            
            try? container.encodeIfPresent(configType, forKey: .configType)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
        }
        
    }
}


