

import Foundation
public extension PlatformClient {
    /*
        Model: FiltersResponse
        Used By: Order
    */

    class FiltersResponse: Codable {
        
        
        public var advance: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case advance = "advance"
            
        }

        public init(advance: [[String: Any]]? = nil) {
            
            self.advance = advance
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    advance = try container.decode([[String: Any]].self, forKey: .advance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(advance, forKey: .advance)
            
            
        }
        
    }
}
