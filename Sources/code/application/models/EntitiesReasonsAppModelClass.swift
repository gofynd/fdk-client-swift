

import Foundation
public extension ApplicationClient {
    /*
        Model: EntitiesReasons
        Used By: Order
    */
    class EntitiesReasons: Codable {
        
        public var data: EntityReasonData?
        
        public var filters: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case filters = "filters"
            
        }

        public init(data: EntityReasonData? = nil, filters: [[String: Any]]? = nil) {
            
            self.data = data
            
            self.filters = filters
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                data = try container.decode(EntityReasonData.self, forKey: .data)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                filters = try container.decode([[String: Any]].self, forKey: .filters)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
        }
        
    }
}
