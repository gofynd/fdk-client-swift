

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: TaxReqBodyVersion
        Used By: Catalog
    */

    class TaxReqBodyVersion: Codable {
        
        
        public var components: [TaxComponent]
        

        public enum CodingKeys: String, CodingKey {
            
            case components = "components"
            
        }

        public init(components: [TaxComponent]) {
            
            self.components = components
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                components = try container.decode([TaxComponent].self, forKey: .components)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(components, forKey: .components)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: TaxReqBodyVersion
        Used By: Catalog
    */

    class TaxReqBodyVersion: Codable {
        
        
        public var components: [TaxComponent]
        

        public enum CodingKeys: String, CodingKey {
            
            case components = "components"
            
        }

        public init(components: [TaxComponent]) {
            
            self.components = components
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                components = try container.decode([TaxComponent].self, forKey: .components)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(components, forKey: .components)
            
            
        }
        
    }
}


