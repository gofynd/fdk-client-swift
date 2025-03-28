

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryExportJobListFilters
        Used By: Catalog
    */

    class InventoryExportJobListFilters: Codable {
        
        
        public var brandIds: [Int]?
        
        public var storeIds: [Int]?
        
        public var brands: [String]?
        
        public var stores: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case brandIds = "brand_ids"
            
            case storeIds = "store_ids"
            
            case brands = "brands"
            
            case stores = "stores"
            
        }

        public init(brands: [String]? = nil, brandIds: [Int]? = nil, stores: [String]? = nil, storeIds: [Int]? = nil) {
            
            self.brandIds = brandIds
            
            self.storeIds = storeIds
            
            self.brands = brands
            
            self.stores = stores
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brandIds = try container.decode([Int].self, forKey: .brandIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeIds = try container.decode([Int].self, forKey: .storeIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brands = try container.decode([String].self, forKey: .brands)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stores = try container.decode([String].self, forKey: .stores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(brands, forKey: .brands)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryExportJobListFilters
        Used By: Catalog
    */

    class InventoryExportJobListFilters: Codable {
        
        
        public var brandIds: [Int]?
        
        public var storeIds: [Int]?
        
        public var brands: [String]?
        
        public var stores: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case brandIds = "brand_ids"
            
            case storeIds = "store_ids"
            
            case brands = "brands"
            
            case stores = "stores"
            
        }

        public init(brands: [String]? = nil, brandIds: [Int]? = nil, stores: [String]? = nil, storeIds: [Int]? = nil) {
            
            self.brandIds = brandIds
            
            self.storeIds = storeIds
            
            self.brands = brands
            
            self.stores = stores
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brandIds = try container.decode([Int].self, forKey: .brandIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeIds = try container.decode([Int].self, forKey: .storeIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brands = try container.decode([String].self, forKey: .brands)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stores = try container.decode([String].self, forKey: .stores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(brands, forKey: .brands)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
        }
        
    }
}


