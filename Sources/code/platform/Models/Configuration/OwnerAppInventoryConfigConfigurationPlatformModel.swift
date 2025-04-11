

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: OwnerAppInventoryConfig
        Used By: Configuration
    */

    class OwnerAppInventoryConfig: Codable {
        
        
        public var pricingStrategy: PricingStrategy?
        

        public enum CodingKeys: String, CodingKey {
            
            case pricingStrategy = "pricing_strategy"
            
        }

        public init(pricingStrategy: PricingStrategy? = nil) {
            
            self.pricingStrategy = pricingStrategy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pricingStrategy = try container.decode(PricingStrategy.self, forKey: .pricingStrategy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pricingStrategy, forKey: .pricingStrategy)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: OwnerAppInventoryConfig
        Used By: Configuration
    */

    class OwnerAppInventoryConfig: Codable {
        
        
        public var pricingStrategy: PricingStrategy?
        

        public enum CodingKeys: String, CodingKey {
            
            case pricingStrategy = "pricing_strategy"
            
        }

        public init(pricingStrategy: PricingStrategy? = nil) {
            
            self.pricingStrategy = pricingStrategy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pricingStrategy = try container.decode(PricingStrategy.self, forKey: .pricingStrategy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pricingStrategy, forKey: .pricingStrategy)
            
            
        }
        
    }
}


