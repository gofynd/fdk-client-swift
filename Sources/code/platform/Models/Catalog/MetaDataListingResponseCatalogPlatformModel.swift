

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: MetaDataListingResponse
        Used By: Catalog
    */

    class MetaDataListingResponse: Codable {
        
        
        public var filter: MetaDataListingFilterResponse
        
        public var sort: MetaDataListingSortResponse
        

        public enum CodingKeys: String, CodingKey {
            
            case filter = "filter"
            
            case sort = "sort"
            
        }

        public init(filter: MetaDataListingFilterResponse, sort: MetaDataListingSortResponse) {
            
            self.filter = filter
            
            self.sort = sort
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                filter = try container.decode(MetaDataListingFilterResponse.self, forKey: .filter)
                
            
            
            
                sort = try container.decode(MetaDataListingSortResponse.self, forKey: .sort)
                
            
            
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
        Model: MetaDataListingResponse
        Used By: Catalog
    */

    class MetaDataListingResponse: Codable {
        
        
        public var filter: MetaDataListingFilterResponse
        
        public var sort: MetaDataListingSortResponse
        

        public enum CodingKeys: String, CodingKey {
            
            case filter = "filter"
            
            case sort = "sort"
            
        }

        public init(filter: MetaDataListingFilterResponse, sort: MetaDataListingSortResponse) {
            
            self.filter = filter
            
            self.sort = sort
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                filter = try container.decode(MetaDataListingFilterResponse.self, forKey: .filter)
                
            
            
            
                sort = try container.decode(MetaDataListingSortResponse.self, forKey: .sort)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filter, forKey: .filter)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
        }
        
    }
}


