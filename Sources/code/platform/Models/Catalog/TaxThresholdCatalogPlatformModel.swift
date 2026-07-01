

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: TaxThreshold
        Used By: Catalog
    */

    class TaxThreshold: Codable {
        
        
        public var value: Double
        
        public var rate: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case rate = "rate"
            
        }

        public init(rate: Double, value: Double) {
            
            self.value = value
            
            self.rate = rate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                value = try container.decode(Double.self, forKey: .value)
                
            
            
            
                rate = try container.decode(Double.self, forKey: .rate)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(rate, forKey: .rate)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: TaxThreshold
        Used By: Catalog
    */

    class TaxThreshold: Codable {
        
        
        public var value: Double
        
        public var rate: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case rate = "rate"
            
        }

        public init(rate: Double, value: Double) {
            
            self.value = value
            
            self.rate = rate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                value = try container.decode(Double.self, forKey: .value)
                
            
            
            
                rate = try container.decode(Double.self, forKey: .rate)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(rate, forKey: .rate)
            
            
        }
        
    }
}


