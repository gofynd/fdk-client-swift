

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CPAreaCodeSchema
        Used By: Order
    */

    class CPAreaCodeSchema: Codable {
        
        
        public var source: String
        
        public var destination: String
        

        public enum CodingKeys: String, CodingKey {
            
            case source = "source"
            
            case destination = "destination"
            
        }

        public init(destination: String, source: String) {
            
            self.source = source
            
            self.destination = destination
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                source = try container.decode(String.self, forKey: .source)
                
            
            
            
                destination = try container.decode(String.self, forKey: .destination)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(destination, forKey: .destination)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CPAreaCodeSchema
        Used By: Order
    */

    class CPAreaCodeSchema: Codable {
        
        
        public var source: String
        
        public var destination: String
        

        public enum CodingKeys: String, CodingKey {
            
            case source = "source"
            
            case destination = "destination"
            
        }

        public init(destination: String, source: String) {
            
            self.source = source
            
            self.destination = destination
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                source = try container.decode(String.self, forKey: .source)
                
            
            
            
                destination = try container.decode(String.self, forKey: .destination)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(destination, forKey: .destination)
            
            
        }
        
    }
}


