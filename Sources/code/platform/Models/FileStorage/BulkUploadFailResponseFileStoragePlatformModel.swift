

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: BulkUploadFailResponse
        Used By: FileStorage
    */

    class BulkUploadFailResponse: Codable {
        
        
        public var status: Status
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
        }

        public init(status: Status) {
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                status = try container.decode(Status.self, forKey: .status)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: BulkUploadFailResponse
        Used By: FileStorage
    */

    class BulkUploadFailResponse: Codable {
        
        
        public var status: Status
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
        }

        public init(status: Status) {
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                status = try container.decode(Status.self, forKey: .status)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}


