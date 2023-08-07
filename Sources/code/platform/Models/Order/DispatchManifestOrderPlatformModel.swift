

import Foundation


public extension PlatformClient.Order {
    /*
        Model: DispatchManifest
        Used By: Order
    */

    class DispatchManifest: Codable {
        
        
        public var manifestId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case manifestId = "manifest_id"
            
        }

        public init(manifestId: String) {
            
            self.manifestId = manifestId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                manifestId = try container.decode(String.self, forKey: .manifestId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(manifestId, forKey: .manifestId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: DispatchManifest
        Used By: Order
    */

    class DispatchManifest: Codable {
        
        
        public var manifestId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case manifestId = "manifest_id"
            
        }

        public init(manifestId: String) {
            
            self.manifestId = manifestId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                manifestId = try container.decode(String.self, forKey: .manifestId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(manifestId, forKey: .manifestId)
            
            
        }
        
    }
}


