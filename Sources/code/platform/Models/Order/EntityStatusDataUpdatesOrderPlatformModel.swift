

import Foundation


public extension PlatformClient.Order {
    /*
        Model: EntityStatusDataUpdates
        Used By: Order
    */

    class EntityStatusDataUpdates: Codable {
        
        
        public var filters: [DataUpdatesFiltersSchema]?
        
        public var data: EntityStatusDataSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case filters = "filters"
            
            case data = "data"
            
        }

        public init(data: EntityStatusDataSchema? = nil, filters: [DataUpdatesFiltersSchema]? = nil) {
            
            self.filters = filters
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filters = try container.decode([DataUpdatesFiltersSchema].self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode(EntityStatusDataSchema.self, forKey: .data)
                
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
        Model: EntityStatusDataUpdates
        Used By: Order
    */

    class EntityStatusDataUpdates: Codable {
        
        
        public var filters: [DataUpdatesFiltersSchema]?
        
        public var data: EntityStatusDataSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case filters = "filters"
            
            case data = "data"
            
        }

        public init(data: EntityStatusDataSchema? = nil, filters: [DataUpdatesFiltersSchema]? = nil) {
            
            self.filters = filters
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filters = try container.decode([DataUpdatesFiltersSchema].self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode(EntityStatusDataSchema.self, forKey: .data)
                
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


