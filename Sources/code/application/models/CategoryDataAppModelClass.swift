

import Foundation
public extension ApplicationClient {
    /*
        Model: CategoryData
        Used By: Lead
    */
    class CategoryData: Codable {
        
        public var list: TicketCategory?
        

        public enum CodingKeys: String, CodingKey {
            
            case list = "list"
            
        }

        public init(list: TicketCategory? = nil) {
            
            self.list = list
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                list = try container.decode(TicketCategory.self, forKey: .list)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(list, forKey: .list)
            
            
        }
        
    }
}
