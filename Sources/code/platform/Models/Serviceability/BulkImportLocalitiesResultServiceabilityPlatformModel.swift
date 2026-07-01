

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: BulkImportLocalitiesResult
        Used By: Serviceability
    */

    class BulkImportLocalitiesResult: Codable {
        
        
        public var batchId: String
        
        public var fileUrl: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case fileUrl = "file_url"
            
            case success = "success"
            
        }

        public init(batchId: String, fileUrl: String, success: Bool) {
            
            self.batchId = batchId
            
            self.fileUrl = fileUrl
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                fileUrl = try container.decode(String.self, forKey: .fileUrl)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: BulkImportLocalitiesResult
        Used By: Serviceability
    */

    class BulkImportLocalitiesResult: Codable {
        
        
        public var batchId: String
        
        public var fileUrl: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case fileUrl = "file_url"
            
            case success = "success"
            
        }

        public init(batchId: String, fileUrl: String, success: Bool) {
            
            self.batchId = batchId
            
            self.fileUrl = fileUrl
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                fileUrl = try container.decode(String.self, forKey: .fileUrl)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


