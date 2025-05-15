

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerPromise
        Used By: Serviceability
    */

    class CourierPartnerPromise: Codable {
        
        
        public var min: String
        
        public var max: String
        

        public enum CodingKeys: String, CodingKey {
            
            case min = "min"
            
            case max = "max"
            
        }

        public init(max: String, min: String) {
            
            self.min = min
            
            self.max = max
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                min = try container.decode(String.self, forKey: .min)
                
            
            
            
                max = try container.decode(String.self, forKey: .max)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerPromise
        Used By: Serviceability
    */

    class CourierPartnerPromise: Codable {
        
        
        public var min: String
        
        public var max: String
        

        public enum CodingKeys: String, CodingKey {
            
            case min = "min"
            
            case max = "max"
            
        }

        public init(max: String, min: String) {
            
            self.min = min
            
            self.max = max
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                min = try container.decode(String.self, forKey: .min)
                
            
            
            
                max = try container.decode(String.self, forKey: .max)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
        }
        
    }
}


