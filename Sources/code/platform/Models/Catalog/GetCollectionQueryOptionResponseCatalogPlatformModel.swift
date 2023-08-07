

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: GetCollectionQueryOptionResponse
        Used By: Catalog
    */

    class GetCollectionQueryOptionResponse: Codable {
        
        
        public var operators: [String: String]
        
        public var filters: [ProductFilters]?
        
        public var sortOn: [ProductSortOn]?
        

        public enum CodingKeys: String, CodingKey {
            
            case operators = "operators"
            
            case filters = "filters"
            
            case sortOn = "sort_on"
            
        }

        public init(filters: [ProductFilters]? = nil, operators: [String: String], sortOn: [ProductSortOn]? = nil) {
            
            self.operators = operators
            
            self.filters = filters
            
            self.sortOn = sortOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                operators = try container.decode([String: String].self, forKey: .operators)
                
            
            
            
                do {
                    filters = try container.decode([ProductFilters].self, forKey: .filters)
                
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
            
            
            
            try? container.encodeIfPresent(operators, forKey: .operators)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: GetCollectionQueryOptionResponse
        Used By: Catalog
    */

    class GetCollectionQueryOptionResponse: Codable {
        
        
        public var operators: [String: String]
        
        public var filters: [ProductFilters]?
        
        public var sortOn: [ProductSortOn]?
        

        public enum CodingKeys: String, CodingKey {
            
            case operators = "operators"
            
            case filters = "filters"
            
            case sortOn = "sort_on"
            
        }

        public init(filters: [ProductFilters]? = nil, operators: [String: String], sortOn: [ProductSortOn]? = nil) {
            
            self.operators = operators
            
            self.filters = filters
            
            self.sortOn = sortOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                operators = try container.decode([String: String].self, forKey: .operators)
                
            
            
            
                do {
                    filters = try container.decode([ProductFilters].self, forKey: .filters)
                
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
            
            
            
            try? container.encodeIfPresent(operators, forKey: .operators)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
            
        }
        
    }
}


