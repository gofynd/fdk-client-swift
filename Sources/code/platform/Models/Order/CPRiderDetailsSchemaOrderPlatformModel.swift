

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CPRiderDetailsSchema
        Used By: Order
    */

    class CPRiderDetailsSchema: Codable {
        
        
        public var name: String
        
        public var phone: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case phone = "phone"
            
        }

        public init(name: String, phone: String) {
            
            self.name = name
            
            self.phone = phone
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                phone = try container.decode(String.self, forKey: .phone)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CPRiderDetailsSchema
        Used By: Order
    */

    class CPRiderDetailsSchema: Codable {
        
        
        public var name: String
        
        public var phone: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case phone = "phone"
            
        }

        public init(name: String, phone: String) {
            
            self.name = name
            
            self.phone = phone
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                phone = try container.decode(String.self, forKey: .phone)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
        }
        
    }
}


