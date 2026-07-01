

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: SubscriptionConfigDetails
        Used By: Payment
    */

    class SubscriptionConfigDetails: Codable {
        
        
        public var aggregator: String
        
        public var config: [String: Any]
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case config = "config"
            
            case success = "success"
            
        }

        public init(aggregator: String, config: [String: Any], success: Bool) {
            
            self.aggregator = aggregator
            
            self.config = config
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                config = try container.decode([String: Any].self, forKey: .config)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: SubscriptionConfigDetails
        Used By: Payment
    */

    class SubscriptionConfigDetails: Codable {
        
        
        public var aggregator: String
        
        public var config: [String: Any]
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case config = "config"
            
            case success = "success"
            
        }

        public init(aggregator: String, config: [String: Any], success: Bool) {
            
            self.aggregator = aggregator
            
            self.config = config
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                config = try container.decode([String: Any].self, forKey: .config)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


