

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryExportRequest
        Used By: Catalog
    */

    class InventoryExportRequest: Codable {
        
        
        public var store: [Int]?
        
        public var type: String?
        
        public var brand: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case store = "store"
            
            case type = "type"
            
            case brand = "brand"
            
        }

        public init(brand: [Int]? = nil, store: [Int]? = nil, type: String? = nil) {
            
            self.store = store
            
            self.type = type
            
            self.brand = brand
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    store = try container.decode([Int].self, forKey: .store)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode([Int].self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encode(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryExportRequest
        Used By: Catalog
    */

    class InventoryExportRequest: Codable {
        
        
        public var store: [Int]?
        
        public var type: String?
        
        public var brand: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case store = "store"
            
            case type = "type"
            
            case brand = "brand"
            
        }

        public init(brand: [Int]? = nil, store: [Int]? = nil, type: String? = nil) {
            
            self.store = store
            
            self.type = type
            
            self.brand = brand
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    store = try container.decode([Int].self, forKey: .store)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode([Int].self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encode(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
        }
        
    }
}


