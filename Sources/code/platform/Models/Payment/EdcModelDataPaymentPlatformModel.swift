

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: EdcModelData
        Used By: Payment
    */

    class EdcModelData: Codable {
        
        
        public var aggregator: String
        
        public var aggregatorId: Int
        
        public var models: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case aggregatorId = "aggregator_id"
            
            case models = "models"
            
        }

        public init(aggregator: String, aggregatorId: Int, models: [String]) {
            
            self.aggregator = aggregator
            
            self.aggregatorId = aggregatorId
            
            self.models = models
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)
                
            
            
            
                models = try container.decode([String].self, forKey: .models)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)
            
            
            
            
            try? container.encodeIfPresent(models, forKey: .models)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: EdcModelData
        Used By: Payment
    */

    class EdcModelData: Codable {
        
        
        public var aggregator: String
        
        public var aggregatorId: Int
        
        public var models: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case aggregatorId = "aggregator_id"
            
            case models = "models"
            
        }

        public init(aggregator: String, aggregatorId: Int, models: [String]) {
            
            self.aggregator = aggregator
            
            self.aggregatorId = aggregatorId
            
            self.models = models
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)
                
            
            
            
                models = try container.decode([String].self, forKey: .models)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)
            
            
            
            
            try? container.encodeIfPresent(models, forKey: .models)
            
            
        }
        
    }
}


