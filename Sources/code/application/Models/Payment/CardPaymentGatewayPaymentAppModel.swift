

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: CardPaymentGateway
        Used By: Payment
    */
    class CardPaymentGateway: Codable {
        
        public var api: String?
        
        public var aggregator: String
        
        public var customerId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case api = "api"
            
            case aggregator = "aggregator"
            
            case customerId = "customer_id"
            
        }

        public init(aggregator: String, api: String? = nil, customerId: String? = nil) {
            
            self.api = api
            
            self.aggregator = aggregator
            
            self.customerId = customerId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                api = try container.decode(String.self, forKey: .api)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            
            
            
            do {
                customerId = try container.decode(String.self, forKey: .customerId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(api, forKey: .api)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encode(customerId, forKey: .customerId)
            
            
        }
        
    }
}
