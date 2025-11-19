

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: NdrDeliveryWindowSchema
        Used By: Order
    */
    class NdrDeliveryWindowSchema: Codable {
        
        public var startDate: String?
        
        public var endDate: String?
        
        public var excludedDates: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case startDate = "start_date"
            
            case endDate = "end_date"
            
            case excludedDates = "excluded_dates"
            
        }

        public init(endDate: String? = nil, excludedDates: [String]? = nil, startDate: String? = nil) {
            
            self.startDate = startDate
            
            self.endDate = endDate
            
            self.excludedDates = excludedDates
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                startDate = try container.decode(String.self, forKey: .startDate)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                endDate = try container.decode(String.self, forKey: .endDate)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                excludedDates = try container.decode([String].self, forKey: .excludedDates)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
            
            try? container.encodeIfPresent(endDate, forKey: .endDate)
            
            
            
            try? container.encodeIfPresent(excludedDates, forKey: .excludedDates)
            
            
        }
        
    }
}
