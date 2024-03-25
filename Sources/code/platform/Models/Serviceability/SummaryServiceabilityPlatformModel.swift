

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: Summary
        Used By: Serviceability
    */

    class Summary: Codable {
        
        
        public var storesCount: Int?
        
        public var productsCount: Int?
        
        public var regions: [Region]?
        

        public enum CodingKeys: String, CodingKey {
            
            case storesCount = "stores_count"
            
            case productsCount = "products_count"
            
            case regions = "regions"
            
        }

        public init(productsCount: Int? = nil, regions: [Region]? = nil, storesCount: Int? = nil) {
            
            self.storesCount = storesCount
            
            self.productsCount = productsCount
            
            self.regions = regions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storesCount = try container.decode(Int.self, forKey: .storesCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productsCount = try container.decode(Int.self, forKey: .productsCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    regions = try container.decode([Region].self, forKey: .regions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
            
            
            
            
            try? container.encodeIfPresent(productsCount, forKey: .productsCount)
            
            
            
            
            try? container.encodeIfPresent(regions, forKey: .regions)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: Summary
        Used By: Serviceability
    */

    class Summary: Codable {
        
        
        public var storesCount: Int?
        
        public var productsCount: Int?
        
        public var regions: [Region]?
        

        public enum CodingKeys: String, CodingKey {
            
            case storesCount = "stores_count"
            
            case productsCount = "products_count"
            
            case regions = "regions"
            
        }

        public init(productsCount: Int? = nil, regions: [Region]? = nil, storesCount: Int? = nil) {
            
            self.storesCount = storesCount
            
            self.productsCount = productsCount
            
            self.regions = regions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storesCount = try container.decode(Int.self, forKey: .storesCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productsCount = try container.decode(Int.self, forKey: .productsCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    regions = try container.decode([Region].self, forKey: .regions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
            
            
            
            
            try? container.encodeIfPresent(productsCount, forKey: .productsCount)
            
            
            
            
            try? container.encodeIfPresent(regions, forKey: .regions)
            
            
        }
        
    }
}


