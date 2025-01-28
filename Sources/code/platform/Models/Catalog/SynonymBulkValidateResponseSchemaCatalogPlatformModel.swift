

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: SynonymBulkValidateResponseSchema
        Used By: Catalog
    */

    class SynonymBulkValidateResponseSchema: Codable {
        
        
        public var jobId: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case jobId = "job_id"
            
            case message = "message"
            
        }

        public init(jobId: String? = nil, message: String? = nil) {
            
            self.jobId = jobId
            
            self.message = message
            
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
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(jobId, forKey: .jobId)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: SynonymBulkValidateResponseSchema
        Used By: Catalog
    */

    class SynonymBulkValidateResponseSchema: Codable {
        
        
        public var jobId: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case jobId = "job_id"
            
            case message = "message"
            
        }

        public init(jobId: String? = nil, message: String? = nil) {
            
            self.jobId = jobId
            
            self.message = message
            
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
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(jobId, forKey: .jobId)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


