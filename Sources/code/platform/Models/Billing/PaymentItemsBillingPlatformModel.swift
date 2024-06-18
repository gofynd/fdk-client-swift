

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: PaymentItems
        Used By: Billing
    */

    class PaymentItems: Codable {
        
        
        public var name: String?
        
        public var code: String?
        
        public var aggregator: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case code = "code"
            
            case aggregator = "aggregator"
            
        }

        public init(aggregator: String? = nil, code: String? = nil, name: String? = nil) {
            
            self.name = name
            
            self.code = code
            
            self.aggregator = aggregator
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
        }
        
    }
}




