

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: SynonymUploadResponseSchema
        Used By: Catalog
    */

    class SynonymUploadResponseSchema: Codable {
        
        
        public var jobType: String?
        
        public var fileType: String?
        
        public var trackingUrl: String?
        
        public var stage: String?
        
        public var isActive: Bool?
        
        public var totalRecords: Int?
        
        public var successRecords: Int?
        
        public var failedRecords: Int?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case jobType = "job_type"
            
            case fileType = "file_type"
            
            case trackingUrl = "tracking_url"
            
            case stage = "stage"
            
            case isActive = "is_active"
            
            case totalRecords = "total_records"
            
            case successRecords = "success_records"
            
            case failedRecords = "failed_records"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case id = "id"
            
        }

        public init(createdOn: String? = nil, failedRecords: Int? = nil, fileType: String? = nil, id: String? = nil, isActive: Bool? = nil, jobType: String? = nil, modifiedOn: String? = nil, stage: String? = nil, successRecords: Int? = nil, totalRecords: Int? = nil, trackingUrl: String? = nil) {
            
            self.jobType = jobType
            
            self.fileType = fileType
            
            self.trackingUrl = trackingUrl
            
            self.stage = stage
            
            self.isActive = isActive
            
            self.totalRecords = totalRecords
            
            self.successRecords = successRecords
            
            self.failedRecords = failedRecords
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.id = id
            
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
                    fileType = try container.decode(String.self, forKey: .fileType)
                
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
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalRecords = try container.decode(Int.self, forKey: .totalRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successRecords = try container.decode(Int.self, forKey: .successRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedRecords = try container.decode(Int.self, forKey: .failedRecords)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(jobType, forKey: .jobType)
            
            
            
            
            try? container.encodeIfPresent(fileType, forKey: .fileType)
            
            
            
            
            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(totalRecords, forKey: .totalRecords)
            
            
            
            
            try? container.encodeIfPresent(successRecords, forKey: .successRecords)
            
            
            
            
            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: SynonymUploadResponseSchema
        Used By: Catalog
    */

    class SynonymUploadResponseSchema: Codable {
        
        
        public var jobType: String?
        
        public var fileType: String?
        
        public var trackingUrl: String?
        
        public var stage: String?
        
        public var isActive: Bool?
        
        public var totalRecords: Int?
        
        public var successRecords: Int?
        
        public var failedRecords: Int?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case jobType = "job_type"
            
            case fileType = "file_type"
            
            case trackingUrl = "tracking_url"
            
            case stage = "stage"
            
            case isActive = "is_active"
            
            case totalRecords = "total_records"
            
            case successRecords = "success_records"
            
            case failedRecords = "failed_records"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case id = "id"
            
        }

        public init(createdOn: String? = nil, failedRecords: Int? = nil, fileType: String? = nil, id: String? = nil, isActive: Bool? = nil, jobType: String? = nil, modifiedOn: String? = nil, stage: String? = nil, successRecords: Int? = nil, totalRecords: Int? = nil, trackingUrl: String? = nil) {
            
            self.jobType = jobType
            
            self.fileType = fileType
            
            self.trackingUrl = trackingUrl
            
            self.stage = stage
            
            self.isActive = isActive
            
            self.totalRecords = totalRecords
            
            self.successRecords = successRecords
            
            self.failedRecords = failedRecords
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.id = id
            
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
                    fileType = try container.decode(String.self, forKey: .fileType)
                
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
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalRecords = try container.decode(Int.self, forKey: .totalRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successRecords = try container.decode(Int.self, forKey: .successRecords)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedRecords = try container.decode(Int.self, forKey: .failedRecords)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(jobType, forKey: .jobType)
            
            
            
            
            try? container.encodeIfPresent(fileType, forKey: .fileType)
            
            
            
            
            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(totalRecords, forKey: .totalRecords)
            
            
            
            
            try? container.encodeIfPresent(successRecords, forKey: .successRecords)
            
            
            
            
            try? container.encodeIfPresent(failedRecords, forKey: .failedRecords)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}


