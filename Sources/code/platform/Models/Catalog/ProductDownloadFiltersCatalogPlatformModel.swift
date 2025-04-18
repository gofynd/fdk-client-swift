

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductDownloadFilters
        Used By: Catalog
    */

    class ProductDownloadFilters: Codable {
        
        
        public var brands: [String]
        
        public var catalogueTypes: [String]
        
        public var templates: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case brands = "brands"
            
            case catalogueTypes = "catalogue_types"
            
            case templates = "templates"
            
        }

        public init(brands: [String], catalogueTypes: [String], templates: [String]) {
            
            self.brands = brands
            
            self.catalogueTypes = catalogueTypes
            
            self.templates = templates
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                brands = try container.decode([String].self, forKey: .brands)
                
            
            
            
                catalogueTypes = try container.decode([String].self, forKey: .catalogueTypes)
                
            
            
            
                templates = try container.decode([String].self, forKey: .templates)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brands, forKey: .brands)
            
            
            
            
            try? container.encodeIfPresent(catalogueTypes, forKey: .catalogueTypes)
            
            
            
            
            try? container.encodeIfPresent(templates, forKey: .templates)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductDownloadFilters
        Used By: Catalog
    */

    class ProductDownloadFilters: Codable {
        
        
        public var brands: [String]
        
        public var catalogueTypes: [String]
        
        public var templates: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case brands = "brands"
            
            case catalogueTypes = "catalogue_types"
            
            case templates = "templates"
            
        }

        public init(brands: [String], catalogueTypes: [String], templates: [String]) {
            
            self.brands = brands
            
            self.catalogueTypes = catalogueTypes
            
            self.templates = templates
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                brands = try container.decode([String].self, forKey: .brands)
                
            
            
            
                catalogueTypes = try container.decode([String].self, forKey: .catalogueTypes)
                
            
            
            
                templates = try container.decode([String].self, forKey: .templates)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brands, forKey: .brands)
            
            
            
            
            try? container.encodeIfPresent(catalogueTypes, forKey: .catalogueTypes)
            
            
            
            
            try? container.encodeIfPresent(templates, forKey: .templates)
            
            
        }
        
    }
}


