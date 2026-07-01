

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: UpsertPriceFactoryProductSchema
        Used By: Catalog
    */

    class UpsertPriceFactoryProductSchema: Codable {
        
        
        public var sizes: [UpsertPriceFactorySizesSchema]?
        
        public var active: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case sizes = "sizes"
            
            case active = "active"
            
        }

        public init(active: Bool? = nil, sizes: [UpsertPriceFactorySizesSchema]? = nil) {
            
            self.sizes = sizes
            
            self.active = active
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sizes = try container.decode([UpsertPriceFactorySizesSchema].self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: UpsertPriceFactoryProductSchema
        Used By: Catalog
    */

    class UpsertPriceFactoryProductSchema: Codable {
        
        
        public var sizes: [UpsertPriceFactorySizesSchema]?
        
        public var active: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case sizes = "sizes"
            
            case active = "active"
            
        }

        public init(active: Bool? = nil, sizes: [UpsertPriceFactorySizesSchema]? = nil) {
            
            self.sizes = sizes
            
            self.active = active
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sizes = try container.decode([UpsertPriceFactorySizesSchema].self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
        }
        
    }
}


