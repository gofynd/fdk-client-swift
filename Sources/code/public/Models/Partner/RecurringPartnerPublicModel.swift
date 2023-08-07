

import Foundation
public extension PublicClient.Partner {
    /*
        Model: Recurring
        Used By: Partner
    */

    class Recurring: Codable {
        
        
        public var recurringTime: Double?
        
        public var yearlyAmount: Double?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case recurringTime = "recurring_time"
            
            case yearlyAmount = "yearly_amount"
            
            case type = "type"
            
        }

        public init(recurringTime: Double? = nil, type: String? = nil, yearlyAmount: Double? = nil) {
            
            self.recurringTime = recurringTime
            
            self.yearlyAmount = yearlyAmount
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    recurringTime = try container.decode(Double.self, forKey: .recurringTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    yearlyAmount = try container.decode(Double.self, forKey: .yearlyAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(recurringTime, forKey: .recurringTime)
            
            
            
            
            try? container.encodeIfPresent(yearlyAmount, forKey: .yearlyAmount)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}
