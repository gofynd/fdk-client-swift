

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: ConversionRate
        Used By: Order
    */
    class ConversionRate: Codable {
        
        public var base: String?
        
        public var rates: [String: Any]?
        
        public var timestamp: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case base = "base"
            
            case rates = "rates"
            
            case timestamp = "timestamp"
            
        }

        public init(base: String? = nil, rates: [String: Any]? = nil, timestamp: Double? = nil) {
            
            self.base = base
            
            self.rates = rates
            
            self.timestamp = timestamp
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                base = try container.decode(String.self, forKey: .base)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                rates = try container.decode([String: Any].self, forKey: .rates)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                timestamp = try container.decode(Double.self, forKey: .timestamp)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(base, forKey: .base)
            
            
            
            try? container.encodeIfPresent(rates, forKey: .rates)
            
            
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            
        }
        
    }
}
