

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ConfigurationListing
        Used By: Catalog
    */

    class ConfigurationListing: Codable {
        
        
        public var filter: ConfigurationListingFilter?
        
        public var sort: ConfigurationListingSort?
        

        public enum CodingKeys: String, CodingKey {
            
            case filter = "filter"
            
            case sort = "sort"
            
        }

        public init(filter: ConfigurationListingFilter? = nil, sort: ConfigurationListingSort? = nil) {
            
            self.filter = filter
            
            self.sort = sort
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filter = try container.decode(ConfigurationListingFilter.self, forKey: .filter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode(ConfigurationListingSort.self, forKey: .sort)
                
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



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ConfigurationListing
        Used By: Catalog
    */

    class ConfigurationListing: Codable {
        
        
        public var filter: ConfigurationListingFilter?
        
        public var sort: ConfigurationListingSort?
        

        public enum CodingKeys: String, CodingKey {
            
            case filter = "filter"
            
            case sort = "sort"
            
        }

        public init(filter: ConfigurationListingFilter? = nil, sort: ConfigurationListingSort? = nil) {
            
            self.filter = filter
            
            self.sort = sort
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filter = try container.decode(ConfigurationListingFilter.self, forKey: .filter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode(ConfigurationListingSort.self, forKey: .sort)
                
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


