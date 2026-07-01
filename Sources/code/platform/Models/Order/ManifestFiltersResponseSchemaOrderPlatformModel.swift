

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ManifestFiltersResponseSchema
        Used By: Order
    */

    class ManifestFiltersResponseSchema: Codable {
        
        
        public var advanceFilter: [FiltersInfo]?
        
        public var globalFilter: [FiltersInfo]?
        

        public enum CodingKeys: String, CodingKey {
            
            case advanceFilter = "advance_filter"
            
            case globalFilter = "global_filter"
            
        }

        public init(advanceFilter: [FiltersInfo]? = nil, globalFilter: [FiltersInfo]? = nil) {
            
            self.advanceFilter = advanceFilter
            
            self.globalFilter = globalFilter
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    advanceFilter = try container.decode([FiltersInfo].self, forKey: .advanceFilter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    globalFilter = try container.decode([FiltersInfo].self, forKey: .globalFilter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(advanceFilter, forKey: .advanceFilter)
            
            
            
            
            try? container.encodeIfPresent(globalFilter, forKey: .globalFilter)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ManifestFiltersResponseSchema
        Used By: Order
    */

    class ManifestFiltersResponseSchema: Codable {
        
        
        public var advanceFilter: [FiltersInfo]?
        
        public var globalFilter: [FiltersInfo]?
        

        public enum CodingKeys: String, CodingKey {
            
            case advanceFilter = "advance_filter"
            
            case globalFilter = "global_filter"
            
        }

        public init(advanceFilter: [FiltersInfo]? = nil, globalFilter: [FiltersInfo]? = nil) {
            
            self.advanceFilter = advanceFilter
            
            self.globalFilter = globalFilter
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    advanceFilter = try container.decode([FiltersInfo].self, forKey: .advanceFilter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    globalFilter = try container.decode([FiltersInfo].self, forKey: .globalFilter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(advanceFilter, forKey: .advanceFilter)
            
            
            
            
            try? container.encodeIfPresent(globalFilter, forKey: .globalFilter)
            
            
        }
        
    }
}


