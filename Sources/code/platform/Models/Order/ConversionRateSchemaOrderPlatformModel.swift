

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ConversionRateSchema
        Used By: Order
    */

    class ConversionRateSchema: Codable {
        
        
        public var rate: Double
        
        public var timestampMs: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case rate = "rate"
            
            case timestampMs = "timestamp_ms"
            
        }

        public init(rate: Double, timestampMs: Int) {
            
            self.rate = rate
            
            self.timestampMs = timestampMs
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                rate = try container.decode(Double.self, forKey: .rate)
                
            
            
            
                timestampMs = try container.decode(Int.self, forKey: .timestampMs)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(rate, forKey: .rate)
            
            
            
            
            try? container.encodeIfPresent(timestampMs, forKey: .timestampMs)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ConversionRateSchema
        Used By: Order
    */

    class ConversionRateSchema: Codable {
        
        
        public var rate: Double
        
        public var timestampMs: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case rate = "rate"
            
            case timestampMs = "timestamp_ms"
            
        }

        public init(rate: Double, timestampMs: Int) {
            
            self.rate = rate
            
            self.timestampMs = timestampMs
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                rate = try container.decode(Double.self, forKey: .rate)
                
            
            
            
                timestampMs = try container.decode(Int.self, forKey: .timestampMs)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(rate, forKey: .rate)
            
            
            
            
            try? container.encodeIfPresent(timestampMs, forKey: .timestampMs)
            
            
        }
        
    }
}


