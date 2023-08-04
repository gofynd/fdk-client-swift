

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: BulkUploadFailFileResponseItems
        Used By: FileStorage
    */

    class BulkUploadFailFileResponseItems: Codable {
        
        
        public var success: Bool
        
        public var error: String?
        
        public var file: File?
        
        public var stage: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case error = "error"
            
            case file = "file"
            
            case stage = "stage"
            
        }

        public init(error: String? = nil, file: File? = nil, stage: String? = nil, success: Bool) {
            
            self.success = success
            
            self.error = error
            
            self.file = file
            
            self.stage = stage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    error = try container.decode(String.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    file = try container.decode(File.self, forKey: .file)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(file, forKey: .file)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: BulkUploadFailFileResponseItems
        Used By: FileStorage
    */

    class BulkUploadFailFileResponseItems: Codable {
        
        
        public var success: Bool
        
        public var error: String?
        
        public var file: File?
        
        public var stage: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case error = "error"
            
            case file = "file"
            
            case stage = "stage"
            
        }

        public init(error: String? = nil, file: File? = nil, stage: String? = nil, success: Bool) {
            
            self.success = success
            
            self.error = error
            
            self.file = file
            
            self.stage = stage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    error = try container.decode(String.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    file = try container.decode(File.self, forKey: .file)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(file, forKey: .file)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
        }
        
    }
}


