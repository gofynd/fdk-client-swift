

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: DetailsSchema
        Used By: Serviceability
    */

    class DetailsSchema: Codable {
        
        
        public var name: String
        
        public var value: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case value = "value"
            
        }

        public init(name: String, value: String) {
            
            self.name = name
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: DetailsSchema
        Used By: Serviceability
    */

    class DetailsSchema: Codable {
        
        
        public var name: String
        
        public var value: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case value = "value"
            
        }

        public init(name: String, value: String) {
            
            self.name = name
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}


