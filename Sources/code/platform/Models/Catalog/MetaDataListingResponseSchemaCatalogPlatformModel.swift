

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: MetaDataListingResponseSchema
        Used By: Catalog
    */

    class MetaDataListingResponseSchema: Codable {
        
        
        public var filter: MetaDataListingFilterResponseSchema
        
        public var sort: MetaDataListingSortResponseSchema
        

        public enum CodingKeys: String, CodingKey {
            
            case filter = "filter"
            
            case sort = "sort"
            
        }

        public init(filter: MetaDataListingFilterResponseSchema, sort: MetaDataListingSortResponseSchema) {
            
            self.filter = filter
            
            self.sort = sort
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                filter = try container.decode(MetaDataListingFilterResponseSchema.self, forKey: .filter)
                
            
            
            
                sort = try container.decode(MetaDataListingSortResponseSchema.self, forKey: .sort)
                
            
            
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
        Model: MetaDataListingResponseSchema
        Used By: Catalog
    */

    class MetaDataListingResponseSchema: Codable {
        
        
        public var filter: MetaDataListingFilterResponseSchema
        
        public var sort: MetaDataListingSortResponseSchema
        

        public enum CodingKeys: String, CodingKey {
            
            case filter = "filter"
            
            case sort = "sort"
            
        }

        public init(filter: MetaDataListingFilterResponseSchema, sort: MetaDataListingSortResponseSchema) {
            
            self.filter = filter
            
            self.sort = sort
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                filter = try container.decode(MetaDataListingFilterResponseSchema.self, forKey: .filter)
                
            
            
            
                sort = try container.decode(MetaDataListingSortResponseSchema.self, forKey: .sort)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filter, forKey: .filter)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
        }
        
    }
}


