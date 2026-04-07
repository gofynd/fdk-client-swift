

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneProductsBulkPatchDetails
        Used By: Serviceability
    */

    class ZoneProductsBulkPatchDetails: Codable {
        
        
        public var fileUrl: String
        

        public enum CodingKeys: String, CodingKey {
            
            case fileUrl = "file_url"
            
        }

        public init(fileUrl: String) {
            
            self.fileUrl = fileUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                fileUrl = try container.decode(String.self, forKey: .fileUrl)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneProductsBulkPatchDetails
        Used By: Serviceability
    */

    class ZoneProductsBulkPatchDetails: Codable {
        
        
        public var fileUrl: String
        

        public enum CodingKeys: String, CodingKey {
            
            case fileUrl = "file_url"
            
        }

        public init(fileUrl: String) {
            
            self.fileUrl = fileUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                fileUrl = try container.decode(String.self, forKey: .fileUrl)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
        }
        
    }
}


