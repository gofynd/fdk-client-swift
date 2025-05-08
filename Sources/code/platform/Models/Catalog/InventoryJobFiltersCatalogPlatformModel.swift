

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryJobFilters
        Used By: Catalog
    */

    class InventoryJobFilters: Codable {
        
        
        public var brands: [String]?
        
        public var fromDate: String?
        
        public var quantity: InventoryExportQuantityFilter?
        
        public var stores: [String]?
        
        public var toDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case brands = "brands"
            
            case fromDate = "from_date"
            
            case quantity = "quantity"
            
            case stores = "stores"
            
            case toDate = "to_date"
            
        }

        public init(brands: [String]? = nil, fromDate: String? = nil, quantity: InventoryExportQuantityFilter? = nil, stores: [String]? = nil, toDate: String? = nil) {
            
            self.brands = brands
            
            self.fromDate = fromDate
            
            self.quantity = quantity
            
            self.stores = stores
            
            self.toDate = toDate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brands = try container.decode([String].self, forKey: .brands)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fromDate = try container.decode(String.self, forKey: .fromDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(InventoryExportQuantityFilter.self, forKey: .quantity)
                
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
                
            
            
                do {
                    toDate = try container.decode(String.self, forKey: .toDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brands, forKey: .brands)
            
            
            
            
            try? container.encodeIfPresent(fromDate, forKey: .fromDate)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(toDate, forKey: .toDate)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryJobFilters
        Used By: Catalog
    */

    class InventoryJobFilters: Codable {
        
        
        public var brands: [String]?
        
        public var fromDate: String?
        
        public var quantity: InventoryExportQuantityFilter?
        
        public var stores: [String]?
        
        public var toDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case brands = "brands"
            
            case fromDate = "from_date"
            
            case quantity = "quantity"
            
            case stores = "stores"
            
            case toDate = "to_date"
            
        }

        public init(brands: [String]? = nil, fromDate: String? = nil, quantity: InventoryExportQuantityFilter? = nil, stores: [String]? = nil, toDate: String? = nil) {
            
            self.brands = brands
            
            self.fromDate = fromDate
            
            self.quantity = quantity
            
            self.stores = stores
            
            self.toDate = toDate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brands = try container.decode([String].self, forKey: .brands)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fromDate = try container.decode(String.self, forKey: .fromDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(InventoryExportQuantityFilter.self, forKey: .quantity)
                
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
                
            
            
                do {
                    toDate = try container.decode(String.self, forKey: .toDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brands, forKey: .brands)
            
            
            
            
            try? container.encodeIfPresent(fromDate, forKey: .fromDate)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(stores, forKey: .stores)
            
            
            
            
            try? container.encodeIfPresent(toDate, forKey: .toDate)
            
            
        }
        
    }
}


