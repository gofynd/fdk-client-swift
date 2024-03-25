

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: SynonymExportResponseSchema
        Used By: Catalog
    */

    class SynonymExportResponseSchema: Codable {
        
        
        public var jobType: String?
        
        public var stage: String?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var id: String?
        
        public var applicationId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case jobType = "job_type"
            
            case stage = "stage"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case id = "id"
            
            case applicationId = "application_id"
            
        }

        public init(applicationId: String? = nil, createdOn: String? = nil, id: String? = nil, jobType: String? = nil, modifiedOn: String? = nil, stage: String? = nil) {
            
            self.jobType = jobType
            
            self.stage = stage
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.id = id
            
            self.applicationId = applicationId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    jobType = try container.decode(String.self, forKey: .jobType)
                
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
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(jobType, forKey: .jobType)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: SynonymExportResponseSchema
        Used By: Catalog
    */

    class SynonymExportResponseSchema: Codable {
        
        
        public var jobType: String?
        
        public var stage: String?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var id: String?
        
        public var applicationId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case jobType = "job_type"
            
            case stage = "stage"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case id = "id"
            
            case applicationId = "application_id"
            
        }

        public init(applicationId: String? = nil, createdOn: String? = nil, id: String? = nil, jobType: String? = nil, modifiedOn: String? = nil, stage: String? = nil) {
            
            self.jobType = jobType
            
            self.stage = stage
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.id = id
            
            self.applicationId = applicationId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    jobType = try container.decode(String.self, forKey: .jobType)
                
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
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(jobType, forKey: .jobType)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
        }
        
    }
}


