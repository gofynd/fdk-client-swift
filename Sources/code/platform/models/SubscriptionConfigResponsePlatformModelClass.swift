

import Foundation
public extension PlatformClient {
    /*
        Model: SubscriptionConfigResponse
        Used By: Payment
    */

    class SubscriptionConfigResponse: Codable {
        
        
        public var config: [String: Any]
        
        public var aggregator: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case config = "config"
            
            case aggregator = "aggregator"
            
            case success = "success"
            
        }

        public init(aggregator: String, config: [String: Any], success: Bool) {
            
            self.config = config
            
            self.aggregator = aggregator
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                config = try container.decode([String: Any].self, forKey: .config)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}
