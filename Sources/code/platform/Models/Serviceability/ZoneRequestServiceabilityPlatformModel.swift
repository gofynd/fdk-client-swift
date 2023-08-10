

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneRequest
        Used By: Serviceability
    */

    class ZoneRequest: Codable {
        
        
        public var identifier: String
        
        public var data: CreateZoneData
        

        public enum CodingKeys: String, CodingKey {
            
            case identifier = "identifier"
            
            case data = "data"
            
        }

        public init(data: CreateZoneData, identifier: String) {
            
            self.identifier = identifier
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                identifier = try container.decode(String.self, forKey: .identifier)
                
            
            
            
                data = try container.decode(CreateZoneData.self, forKey: .data)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneRequest
        Used By: Serviceability
    */

    class ZoneRequest: Codable {
        
        
        public var identifier: String
        
        public var data: CreateZoneData
        

        public enum CodingKeys: String, CodingKey {
            
            case identifier = "identifier"
            
            case data = "data"
            
        }

        public init(data: CreateZoneData, identifier: String) {
            
            self.identifier = identifier
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                identifier = try container.decode(String.self, forKey: .identifier)
                
            
            
            
                data = try container.decode(CreateZoneData.self, forKey: .data)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}


