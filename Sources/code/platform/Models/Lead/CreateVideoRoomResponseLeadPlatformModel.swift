

import Foundation


public extension PlatformClient.Lead {
    /*
        Model: CreateVideoRoomResponse
        Used By: Lead
    */

    class CreateVideoRoomResponse: Codable {
        
        
        public var uniqueName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueName = "unique_name"
            
        }

        public init(uniqueName: String) {
            
            self.uniqueName = uniqueName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                uniqueName = try container.decode(String.self, forKey: .uniqueName)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uniqueName, forKey: .uniqueName)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Lead {
    /*
        Model: CreateVideoRoomResponse
        Used By: Lead
    */

    class CreateVideoRoomResponse: Codable {
        
        
        public var uniqueName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueName = "unique_name"
            
        }

        public init(uniqueName: String) {
            
            self.uniqueName = uniqueName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                uniqueName = try container.decode(String.self, forKey: .uniqueName)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uniqueName, forKey: .uniqueName)
            
            
        }
        
    }
}


