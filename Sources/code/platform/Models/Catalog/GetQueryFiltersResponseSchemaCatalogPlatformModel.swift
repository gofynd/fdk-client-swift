

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: GetQueryFiltersResponseSchema
        Used By: Catalog
    */

    class GetQueryFiltersResponseSchema: Codable {
        
        
        public var filters: [CollectionProductFilters]?
        
        public var operators: [String: String]?
        
        public var sortOn: [CollectionProductSortOn]?
        

        public enum CodingKeys: String, CodingKey {
            
            case filters = "filters"
            
            case operators = "operators"
            
            case sortOn = "sort_on"
            
        }

        public init(filters: [CollectionProductFilters]? = nil, operators: [String: String]? = nil, sortOn: [CollectionProductSortOn]? = nil) {
            
            self.filters = filters
            
            self.operators = operators
            
            self.sortOn = sortOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filters = try container.decode([CollectionProductFilters].self, forKey: .filters)
                
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
                    sortOn = try container.decode([CollectionProductSortOn].self, forKey: .sortOn)
                
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
        Model: GetQueryFiltersResponseSchema
        Used By: Catalog
    */

    class GetQueryFiltersResponseSchema: Codable {
        
        
        public var filters: [CollectionProductFilters]?
        
        public var operators: [String: String]?
        
        public var sortOn: [CollectionProductSortOn]?
        

        public enum CodingKeys: String, CodingKey {
            
            case filters = "filters"
            
            case operators = "operators"
            
            case sortOn = "sort_on"
            
        }

        public init(filters: [CollectionProductFilters]? = nil, operators: [String: String]? = nil, sortOn: [CollectionProductSortOn]? = nil) {
            
            self.filters = filters
            
            self.operators = operators
            
            self.sortOn = sortOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filters = try container.decode([CollectionProductFilters].self, forKey: .filters)
                
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
                    sortOn = try container.decode([CollectionProductSortOn].self, forKey: .sortOn)
                
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


