

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ChargeDistributionLogic
        Used By: Order
    */

    class ChargeDistributionLogic: Codable {
        
        
        public var distribution: ChargeDistributionSchema
        
        public var distributionLevel: String
        

        public enum CodingKeys: String, CodingKey {
            
            case distribution = "distribution"
            
            case distributionLevel = "distribution_level"
            
        }

        public init(distribution: ChargeDistributionSchema, distributionLevel: String) {
            
            self.distribution = distribution
            
            self.distributionLevel = distributionLevel
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                distribution = try container.decode(ChargeDistributionSchema.self, forKey: .distribution)
                
            
            
            
                distributionLevel = try container.decode(String.self, forKey: .distributionLevel)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(distribution, forKey: .distribution)
            
            
            
            
            try? container.encodeIfPresent(distributionLevel, forKey: .distributionLevel)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ChargeDistributionLogic
        Used By: Order
    */

    class ChargeDistributionLogic: Codable {
        
        
        public var distribution: ChargeDistributionSchema
        
        public var distributionLevel: String
        

        public enum CodingKeys: String, CodingKey {
            
            case distribution = "distribution"
            
            case distributionLevel = "distribution_level"
            
        }

        public init(distribution: ChargeDistributionSchema, distributionLevel: String) {
            
            self.distribution = distribution
            
            self.distributionLevel = distributionLevel
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                distribution = try container.decode(ChargeDistributionSchema.self, forKey: .distribution)
                
            
            
            
                distributionLevel = try container.decode(String.self, forKey: .distributionLevel)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(distribution, forKey: .distribution)
            
            
            
            
            try? container.encodeIfPresent(distributionLevel, forKey: .distributionLevel)
            
            
        }
        
    }
}


