

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: PriceStrategySchema
        Used By: Catalog
    */

    class PriceStrategySchema: Codable {
        
        
        public var currency: String
        
        public var adjustmentValue: Double
        
        public var adjustmentType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case currency = "currency"
            
            case adjustmentValue = "adjustment_value"
            
            case adjustmentType = "adjustment_type"
            
        }

        public init(adjustmentType: String, adjustmentValue: Double, currency: String) {
            
            self.currency = currency
            
            self.adjustmentValue = adjustmentValue
            
            self.adjustmentType = adjustmentType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                adjustmentValue = try container.decode(Double.self, forKey: .adjustmentValue)
                
            
            
            
                adjustmentType = try container.decode(String.self, forKey: .adjustmentType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(adjustmentValue, forKey: .adjustmentValue)
            
            
            
            
            try? container.encodeIfPresent(adjustmentType, forKey: .adjustmentType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: PriceStrategySchema
        Used By: Catalog
    */

    class PriceStrategySchema: Codable {
        
        
        public var currency: String
        
        public var adjustmentValue: Double
        
        public var adjustmentType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case currency = "currency"
            
            case adjustmentValue = "adjustment_value"
            
            case adjustmentType = "adjustment_type"
            
        }

        public init(adjustmentType: String, adjustmentValue: Double, currency: String) {
            
            self.currency = currency
            
            self.adjustmentValue = adjustmentValue
            
            self.adjustmentType = adjustmentType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                adjustmentValue = try container.decode(Double.self, forKey: .adjustmentValue)
                
            
            
            
                adjustmentType = try container.decode(String.self, forKey: .adjustmentType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(adjustmentValue, forKey: .adjustmentValue)
            
            
            
            
            try? container.encodeIfPresent(adjustmentType, forKey: .adjustmentType)
            
            
        }
        
    }
}


