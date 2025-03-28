

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CreateAppPriceFactoryProductBulkJobRequestSchema
        Used By: Catalog
    */

    class CreateAppPriceFactoryProductBulkJobRequestSchema: Codable {
        
        
        public var filePath: String?
        
        public var fileType: String?
        
        public var jobType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case filePath = "file_path"
            
            case fileType = "file_type"
            
            case jobType = "job_type"
            
        }

        public init(filePath: String? = nil, fileType: String? = nil, jobType: String? = nil) {
            
            self.filePath = filePath
            
            self.fileType = fileType
            
            self.jobType = jobType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filePath = try container.decode(String.self, forKey: .filePath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fileType = try container.decode(String.self, forKey: .fileType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    jobType = try container.decode(String.self, forKey: .jobType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(fileType, forKey: .fileType)
            
            
            
            
            try? container.encodeIfPresent(jobType, forKey: .jobType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CreateAppPriceFactoryProductBulkJobRequestSchema
        Used By: Catalog
    */

    class CreateAppPriceFactoryProductBulkJobRequestSchema: Codable {
        
        
        public var filePath: String?
        
        public var fileType: String?
        
        public var jobType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case filePath = "file_path"
            
            case fileType = "file_type"
            
            case jobType = "job_type"
            
        }

        public init(filePath: String? = nil, fileType: String? = nil, jobType: String? = nil) {
            
            self.filePath = filePath
            
            self.fileType = fileType
            
            self.jobType = jobType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filePath = try container.decode(String.self, forKey: .filePath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fileType = try container.decode(String.self, forKey: .fileType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    jobType = try container.decode(String.self, forKey: .jobType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(fileType, forKey: .fileType)
            
            
            
            
            try? container.encodeIfPresent(jobType, forKey: .jobType)
            
            
        }
        
    }
}


