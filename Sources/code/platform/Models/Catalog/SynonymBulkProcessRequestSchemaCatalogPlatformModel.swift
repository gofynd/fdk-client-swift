

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: SynonymBulkProcessRequestSchema
        Used By: Catalog
    */

    class SynonymBulkProcessRequestSchema: Codable {
        
        
        public var jobId: String?
        
        public var trackingUrl: String?
        
        public var fileType: String?
        
        public var jobType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case jobId = "job_id"
            
            case trackingUrl = "tracking_url"
            
            case fileType = "file_type"
            
            case jobType = "job_type"
            
        }

        public init(fileType: String? = nil, jobId: String? = nil, jobType: String? = nil, trackingUrl: String? = nil) {
            
            self.jobId = jobId
            
            self.trackingUrl = trackingUrl
            
            self.fileType = fileType
            
            self.jobType = jobType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    jobId = try container.decode(String.self, forKey: .jobId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackingUrl = try container.decode(String.self, forKey: .trackingUrl)
                
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
            
            
            
            try? container.encodeIfPresent(jobId, forKey: .jobId)
            
            
            
            
            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)
            
            
            
            
            try? container.encodeIfPresent(fileType, forKey: .fileType)
            
            
            
            
            try? container.encodeIfPresent(jobType, forKey: .jobType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: SynonymBulkProcessRequestSchema
        Used By: Catalog
    */

    class SynonymBulkProcessRequestSchema: Codable {
        
        
        public var jobId: String?
        
        public var trackingUrl: String?
        
        public var fileType: String?
        
        public var jobType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case jobId = "job_id"
            
            case trackingUrl = "tracking_url"
            
            case fileType = "file_type"
            
            case jobType = "job_type"
            
        }

        public init(fileType: String? = nil, jobId: String? = nil, jobType: String? = nil, trackingUrl: String? = nil) {
            
            self.jobId = jobId
            
            self.trackingUrl = trackingUrl
            
            self.fileType = fileType
            
            self.jobType = jobType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    jobId = try container.decode(String.self, forKey: .jobId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackingUrl = try container.decode(String.self, forKey: .trackingUrl)
                
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
            
            
            
            try? container.encodeIfPresent(jobId, forKey: .jobId)
            
            
            
            
            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)
            
            
            
            
            try? container.encodeIfPresent(fileType, forKey: .fileType)
            
            
            
            
            try? container.encodeIfPresent(jobType, forKey: .jobType)
            
            
        }
        
    }
}


