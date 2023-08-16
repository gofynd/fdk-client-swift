

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: FilterResponseObject
        Used By: Webhook
    */

    class FilterResponseObject: Codable {
        
        
        public var filterName: String?
        
        public var values: [FilterValues]?
        

        public enum CodingKeys: String, CodingKey {
            
            case filterName = "filter_name"
            
            case values = "values"
            
        }

        public init(filterName: String? = nil, values: [FilterValues]? = nil) {
            
            self.filterName = filterName
            
            self.values = values
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filterName = try container.decode(String.self, forKey: .filterName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    values = try container.decode([FilterValues].self, forKey: .values)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filterName, forKey: .filterName)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
}




