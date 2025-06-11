

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PriceBulkGeoAreaPayload
        Used By: Serviceability
    */

    class PriceBulkGeoAreaPayload: Codable {
        
        
        public var type: String
        
        public var fileUrl: String
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case fileUrl = "file_url"
            
        }

        public init(fileUrl: String, type: String) {
            
            self.type = type
            
            self.fileUrl = fileUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                fileUrl = try container.decode(String.self, forKey: .fileUrl)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PriceBulkGeoAreaPayload
        Used By: Serviceability
    */

    class PriceBulkGeoAreaPayload: Codable {
        
        
        public var type: String
        
        public var fileUrl: String
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case fileUrl = "file_url"
            
        }

        public init(fileUrl: String, type: String) {
            
            self.type = type
            
            self.fileUrl = fileUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                fileUrl = try container.decode(String.self, forKey: .fileUrl)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
        }
        
    }
}


