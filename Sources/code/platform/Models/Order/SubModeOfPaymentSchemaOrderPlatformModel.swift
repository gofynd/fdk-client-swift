

import Foundation


public extension PlatformClient.Order {
    /*
        Model: SubModeOfPaymentSchema
        Used By: Order
    */

    class SubModeOfPaymentSchema: Codable {
        
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
        }

        public init(name: String) {
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: SubModeOfPaymentSchema
        Used By: Order
    */

    class SubModeOfPaymentSchema: Codable {
        
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
        }

        public init(name: String) {
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}


