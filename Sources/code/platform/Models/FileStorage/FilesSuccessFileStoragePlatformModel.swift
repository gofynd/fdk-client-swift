

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: FilesSuccess
        Used By: FileStorage
    */

    class FilesSuccess: Codable {
        
        
        public var success: Bool
        
        public var file: File?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case file = "file"
            
        }

        public init(file: File? = nil, success: Bool) {
            
            self.success = success
            
            self.file = file
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    file = try container.decode(File.self, forKey: .file)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(file, forKey: .file)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: FilesSuccess
        Used By: FileStorage
    */

    class FilesSuccess: Codable {
        
        
        public var success: Bool
        
        public var file: File?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case file = "file"
            
        }

        public init(file: File? = nil, success: Bool) {
            
            self.success = success
            
            self.file = file
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    file = try container.decode(File.self, forKey: .file)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(file, forKey: .file)
            
            
        }
        
    }
}


