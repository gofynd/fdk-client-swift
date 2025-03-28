

import Foundation


public extension PlatformClient.Order {
    /*
        Model: DistributionLogicSchema
        Used By: Order
    */

    class DistributionLogicSchema: Codable {
        
        
        public var distributionLevel: String
        
        public var distribution: DistributionSchema
        

        public enum CodingKeys: String, CodingKey {
            
            case distributionLevel = "distribution_level"
            
            case distribution = "distribution"
            
        }

        public init(distribution: DistributionSchema, distributionLevel: String) {
            
            self.distributionLevel = distributionLevel
            
            self.distribution = distribution
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                distributionLevel = try container.decode(String.self, forKey: .distributionLevel)
                
            
            
            
                distribution = try container.decode(DistributionSchema.self, forKey: .distribution)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(distributionLevel, forKey: .distributionLevel)
            
            
            
            
            try? container.encodeIfPresent(distribution, forKey: .distribution)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: DistributionLogicSchema
        Used By: Order
    */

    class DistributionLogicSchema: Codable {
        
        
        public var distributionLevel: String
        
        public var distribution: DistributionSchema
        

        public enum CodingKeys: String, CodingKey {
            
            case distributionLevel = "distribution_level"
            
            case distribution = "distribution"
            
        }

        public init(distribution: DistributionSchema, distributionLevel: String) {
            
            self.distributionLevel = distributionLevel
            
            self.distribution = distribution
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                distributionLevel = try container.decode(String.self, forKey: .distributionLevel)
                
            
            
            
                distribution = try container.decode(DistributionSchema.self, forKey: .distribution)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(distributionLevel, forKey: .distributionLevel)
            
            
            
            
            try? container.encodeIfPresent(distribution, forKey: .distribution)
            
            
        }
        
    }
}


