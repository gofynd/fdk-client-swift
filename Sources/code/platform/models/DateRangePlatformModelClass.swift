

import Foundation
public extension PlatformClient {
    /*
        Model: DateRange
        Used By: Order
    */

    class DateRange: Codable {
        
        
        public var toDate: String?
        
        public var fromDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case toDate = "to_date"
            
            case fromDate = "from_date"
            
        }

        public init(fromDate: String? = nil, toDate: String? = nil) {
            
            self.toDate = toDate
            
            self.fromDate = fromDate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    toDate = try container.decode(String.self, forKey: .toDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fromDate = try container.decode(String.self, forKey: .fromDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(toDate, forKey: .toDate)
            
            
            
            
            try? container.encodeIfPresent(fromDate, forKey: .fromDate)
            
            
        }
        
    }
}
