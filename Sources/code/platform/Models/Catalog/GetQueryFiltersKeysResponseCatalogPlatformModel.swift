

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: GetQueryFiltersKeysResponse
        Used By: Catalog
    */

    class GetQueryFiltersKeysResponse: Codable {
        
        
        public var filters: [ProductFiltersKeysOnly]?
        
        public var operators: [String: String]?
        
        public var sortOn: [ProductSortOn]?
        

        public enum CodingKeys: String, CodingKey {
            
            case filters = "filters"
            
            case operators = "operators"
            
            case sortOn = "sort_on"
            
        }

        public init(filters: [ProductFiltersKeysOnly]? = nil, operators: [String: String]? = nil, sortOn: [ProductSortOn]? = nil) {
            
            self.filters = filters
            
            self.operators = operators
            
            self.sortOn = sortOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filters = try container.decode([ProductFiltersKeysOnly].self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    operators = try container.decode([String: String].self, forKey: .operators)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(operators, forKey: .operators)
            
            
            
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: GetQueryFiltersKeysResponse
        Used By: Catalog
    */

    class GetQueryFiltersKeysResponse: Codable {
        
        
        public var filters: [ProductFiltersKeysOnly]?
        
        public var operators: [String: String]?
        
        public var sortOn: [ProductSortOn]?
        

        public enum CodingKeys: String, CodingKey {
            
            case filters = "filters"
            
            case operators = "operators"
            
            case sortOn = "sort_on"
            
        }

        public init(filters: [ProductFiltersKeysOnly]? = nil, operators: [String: String]? = nil, sortOn: [ProductSortOn]? = nil) {
            
            self.filters = filters
            
            self.operators = operators
            
            self.sortOn = sortOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filters = try container.decode([ProductFiltersKeysOnly].self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    operators = try container.decode([String: String].self, forKey: .operators)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(operators, forKey: .operators)
            
            
            
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
            
        }
        
    }
}


