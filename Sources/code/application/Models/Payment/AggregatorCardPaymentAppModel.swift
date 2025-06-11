

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: AggregatorCard
        Used By: Payment
    */
    class AggregatorCard: Codable {
        
        public var aggregator: String?
        
        public var api: String?
        
        public var customerId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case api = "api"
            
            case customerId = "customer_id"
            
        }

        public init(aggregator: String? = nil, api: String? = nil, customerId: String? = nil) {
            
            self.aggregator = aggregator
            
            self.api = api
            
            self.customerId = customerId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                aggregator = try container.decode(String.self, forKey: .aggregator)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                api = try container.decode(String.self, forKey: .api)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
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
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            try? container.encodeIfPresent(api, forKey: .api)
            
            
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            
        }
        
    }
}
