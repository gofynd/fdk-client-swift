

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ProductsDataUpdates
        Used By: Order
    */

    class ProductsDataUpdates: Codable {
        
        
        public var filters: [ProductsDataUpdatesFilters]?
        
        public var data: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case filters = "filters"
            
            case data = "data"
            
        }

        public init(data: [String: Any]? = nil, filters: [ProductsDataUpdatesFilters]? = nil) {
            
            self.filters = filters
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filters = try container.decode([ProductsDataUpdatesFilters].self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ProductsDataUpdates
        Used By: Order
    */

    class ProductsDataUpdates: Codable {
        
        
        public var filters: [ProductsDataUpdatesFilters]?
        
        public var data: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case filters = "filters"
            
            case data = "data"
            
        }

        public init(data: [String: Any]? = nil, filters: [ProductsDataUpdatesFilters]? = nil) {
            
            self.filters = filters
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filters = try container.decode([ProductsDataUpdatesFilters].self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}


