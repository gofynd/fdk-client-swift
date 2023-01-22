

import Foundation
public extension PlatformClient {
    /*
        Model: GetCatalogConfigurationDetailsSchemaListing
        Used By: Catalog
    */

    class GetCatalogConfigurationDetailsSchemaListing: Codable {
        
        
        public var filter: [String: Any]?
        
        public var sort: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case filter = "filter"
            
            case sort = "sort"
            
        }

        public init(filter: [String: Any]? = nil, sort: [String: Any]? = nil) {
            
            self.filter = filter
            
            self.sort = sort
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filter = try container.decode([String: Any].self, forKey: .filter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode([String: Any].self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filter, forKey: .filter)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
        }
        
    }
}
