

import Foundation
public extension PlatformClient {
    /*
        Model: Tax
        Used By: Order
    */

    class Tax: Codable {
        
        
        public var amount: [String: Any]
        
        public var breakup: [[String: Any]]?
        
        public var rate: Double
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case breakup = "breakup"
            
            case rate = "rate"
            
            case name = "name"
            
        }

        public init(amount: [String: Any], breakup: [[String: Any]]? = nil, name: String, rate: Double) {
            
            self.amount = amount
            
            self.breakup = breakup
            
            self.rate = rate
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                amount = try container.decode([String: Any].self, forKey: .amount)
                
            
            
            
                do {
                    breakup = try container.decode([[String: Any]].self, forKey: .breakup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                rate = try container.decode(Double.self, forKey: .rate)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(breakup, forKey: .breakup)
            
            
            
            
            try? container.encodeIfPresent(rate, forKey: .rate)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}
