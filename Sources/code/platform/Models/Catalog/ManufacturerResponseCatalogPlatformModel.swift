

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ManufacturerResponse
        Used By: Catalog
    */

    class ManufacturerResponse: Codable {
        
        
        public var name: String
        
        public var isDefault: Bool
        
        public var address: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case isDefault = "is_default"
            
            case address = "address"
            
        }

        public init(address: String, isDefault: Bool, name: String) {
            
            self.name = name
            
            self.isDefault = isDefault
            
            self.address = address
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ManufacturerResponse
        Used By: Catalog
    */

    class ManufacturerResponse: Codable {
        
        
        public var name: String
        
        public var isDefault: Bool
        
        public var address: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case isDefault = "is_default"
            
            case address = "address"
            
        }

        public init(address: String, isDefault: Bool, name: String) {
            
            self.name = name
            
            self.isDefault = isDefault
            
            self.address = address
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
        }
        
    }
}


