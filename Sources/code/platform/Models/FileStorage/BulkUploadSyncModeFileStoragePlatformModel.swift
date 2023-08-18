

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: BulkUploadSyncMode
        Used By: FileStorage
    */

    class BulkUploadSyncMode: Codable {
        
        
        public var status: Status
        
        public var files: [FilesSuccess]?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case files = "files"
            
        }

        public init(files: [FilesSuccess]? = nil, status: Status) {
            
            self.status = status
            
            self.files = files
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                status = try container.decode(Status.self, forKey: .status)
                
            
            
            
                do {
                    files = try container.decode([FilesSuccess].self, forKey: .files)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(files, forKey: .files)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: BulkUploadSyncMode
        Used By: FileStorage
    */

    class BulkUploadSyncMode: Codable {
        
        
        public var status: Status
        
        public var files: [FilesSuccess]?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case files = "files"
            
        }

        public init(files: [FilesSuccess]? = nil, status: Status) {
            
            self.status = status
            
            self.files = files
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                status = try container.decode(Status.self, forKey: .status)
                
            
            
            
                do {
                    files = try container.decode([FilesSuccess].self, forKey: .files)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(files, forKey: .files)
            
            
        }
        
    }
}


