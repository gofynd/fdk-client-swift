

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ApplicationItemSeoSitemap
        Used By: Catalog
    */

    class ApplicationItemSeoSitemap: Codable {
        
        
        public var priority: Double
        
        public var frequency: String
        

        public enum CodingKeys: String, CodingKey {
            
            case priority = "priority"
            
            case frequency = "frequency"
            
        }

        public init(frequency: String, priority: Double) {
            
            self.priority = priority
            
            self.frequency = frequency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                priority = try container.decode(Double.self, forKey: .priority)
                
            
            
            
                frequency = try container.decode(String.self, forKey: .frequency)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(frequency, forKey: .frequency)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ApplicationItemSeoSitemap
        Used By: Catalog
    */

    class ApplicationItemSeoSitemap: Codable {
        
        
        public var priority: Double
        
        public var frequency: String
        

        public enum CodingKeys: String, CodingKey {
            
            case priority = "priority"
            
            case frequency = "frequency"
            
        }

        public init(frequency: String, priority: Double) {
            
            self.priority = priority
            
            self.frequency = frequency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                priority = try container.decode(Double.self, forKey: .priority)
                
            
            
            
                frequency = try container.decode(String.self, forKey: .frequency)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(frequency, forKey: .frequency)
            
            
        }
        
    }
}


