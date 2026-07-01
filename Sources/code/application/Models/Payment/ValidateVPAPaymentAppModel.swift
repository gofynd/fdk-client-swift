

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: ValidateVPA
        Used By: Payment
    */
    class ValidateVPA: Codable {
        
        public var upiVpa: String
        
        public var aggregator: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case upiVpa = "upi_vpa"
            
            case aggregator = "aggregator"
            
        }

        public init(aggregator: String? = nil, upiVpa: String) {
            
            self.upiVpa = upiVpa
            
            self.aggregator = aggregator
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            upiVpa = try container.decode(String.self, forKey: .upiVpa)
            
            
            
            
            do {
                aggregator = try container.decode(String.self, forKey: .aggregator)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(upiVpa, forKey: .upiVpa)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
        }
        
    }
}
