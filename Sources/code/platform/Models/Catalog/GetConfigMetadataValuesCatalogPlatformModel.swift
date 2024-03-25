

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: GetConfigMetadataValues
        Used By: Catalog
    */

    class GetConfigMetadataValues: Codable {
        
        
        public var type: [ValueTypeItem]?
        
        public var sort: [SortTypeItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case sort = "sort"
            
        }

        public init(sort: [SortTypeItem]? = nil, type: [ValueTypeItem]? = nil) {
            
            self.type = type
            
            self.sort = sort
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode([ValueTypeItem].self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode([SortTypeItem].self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: GetConfigMetadataValues
        Used By: Catalog
    */

    class GetConfigMetadataValues: Codable {
        
        
        public var type: [ValueTypeItem]?
        
        public var sort: [SortTypeItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case sort = "sort"
            
        }

        public init(sort: [SortTypeItem]? = nil, type: [ValueTypeItem]? = nil) {
            
            self.type = type
            
            self.sort = sort
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode([ValueTypeItem].self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode([SortTypeItem].self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
        }
        
    }
}


