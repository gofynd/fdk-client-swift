

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: TaxComponent
        Used By: Catalog
    */

    class TaxComponent: Codable {
        
        
        public var name: String
        
        public var slabs: [TaxThreshold]
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slabs = "slabs"
            
        }

        public init(name: String, slabs: [TaxThreshold]) {
            
            self.name = name
            
            self.slabs = slabs
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slabs = try container.decode([TaxThreshold].self, forKey: .slabs)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slabs, forKey: .slabs)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: TaxComponent
        Used By: Catalog
    */

    class TaxComponent: Codable {
        
        
        public var name: String
        
        public var slabs: [TaxThreshold]
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slabs = "slabs"
            
        }

        public init(name: String, slabs: [TaxThreshold]) {
            
            self.name = name
            
            self.slabs = slabs
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                slabs = try container.decode([TaxThreshold].self, forKey: .slabs)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slabs, forKey: .slabs)
            
            
        }
        
    }
}


