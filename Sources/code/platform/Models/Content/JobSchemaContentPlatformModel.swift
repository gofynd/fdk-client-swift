

import Foundation


public extension PlatformClient.Content {
    /*
        Model: JobSchema
        Used By: Content
    */

    class JobSchema: Codable {
        
        
        public var id: String?
        
        public var jobs: [String]?
        
        public var finishedJobs: [String]?
        
        public var errorJobs: [String]?
        
        public var errorsOccured: [String]?
        
        public var companyId: String?
        
        public var creator: String?
        
        public var status: String?
        
        public var actionType: String?
        
        public var entity: String?
        
        public var errorUrl: String?
        
        public var finishedCount: Int?
        
        public var errorCount: Int?
        
        public var successCount: Int?
        
        public var totalJobs: Int?
        
        public var meta: CustomObjectMetaSchema?
        
        public var createdBy: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var applicationId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case jobs = "jobs"
            
            case finishedJobs = "finished_jobs"
            
            case errorJobs = "error_jobs"
            
            case errorsOccured = "errors_occured"
            
            case companyId = "company_id"
            
            case creator = "creator"
            
            case status = "status"
            
            case actionType = "action_type"
            
            case entity = "entity"
            
            case errorUrl = "error_url"
            
            case finishedCount = "finished_count"
            
            case errorCount = "error_count"
            
            case successCount = "success_count"
            
            case totalJobs = "total_jobs"
            
            case meta = "meta"
            
            case createdBy = "created_by"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case applicationId = "application_id"
            
        }

        public init(actionType: String? = nil, applicationId: String? = nil, companyId: String? = nil, createdAt: String? = nil, createdBy: String? = nil, creator: String? = nil, entity: String? = nil, errorsOccured: [String]? = nil, errorCount: Int? = nil, errorJobs: [String]? = nil, errorUrl: String? = nil, finishedCount: Int? = nil, finishedJobs: [String]? = nil, jobs: [String]? = nil, meta: CustomObjectMetaSchema? = nil, status: String? = nil, successCount: Int? = nil, totalJobs: Int? = nil, updatedAt: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.jobs = jobs
            
            self.finishedJobs = finishedJobs
            
            self.errorJobs = errorJobs
            
            self.errorsOccured = errorsOccured
            
            self.companyId = companyId
            
            self.creator = creator
            
            self.status = status
            
            self.actionType = actionType
            
            self.entity = entity
            
            self.errorUrl = errorUrl
            
            self.finishedCount = finishedCount
            
            self.errorCount = errorCount
            
            self.successCount = successCount
            
            self.totalJobs = totalJobs
            
            self.meta = meta
            
            self.createdBy = createdBy
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.applicationId = applicationId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    jobs = try container.decode([String].self, forKey: .jobs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    finishedJobs = try container.decode([String].self, forKey: .finishedJobs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorJobs = try container.decode([String].self, forKey: .errorJobs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorsOccured = try container.decode([String].self, forKey: .errorsOccured)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(String.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creator = try container.decode(String.self, forKey: .creator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    actionType = try container.decode(String.self, forKey: .actionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entity = try container.decode(String.self, forKey: .entity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorUrl = try container.decode(String.self, forKey: .errorUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    finishedCount = try container.decode(Int.self, forKey: .finishedCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorCount = try container.decode(Int.self, forKey: .errorCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successCount = try container.decode(Int.self, forKey: .successCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalJobs = try container.decode(Int.self, forKey: .totalJobs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(CustomObjectMetaSchema.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
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
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(jobs, forKey: .jobs)
            
            
            
            
            try? container.encodeIfPresent(finishedJobs, forKey: .finishedJobs)
            
            
            
            
            try? container.encodeIfPresent(errorJobs, forKey: .errorJobs)
            
            
            
            
            try? container.encodeIfPresent(errorsOccured, forKey: .errorsOccured)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(creator, forKey: .creator)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(actionType, forKey: .actionType)
            
            
            
            
            try? container.encodeIfPresent(entity, forKey: .entity)
            
            
            
            
            try? container.encodeIfPresent(errorUrl, forKey: .errorUrl)
            
            
            
            
            try? container.encodeIfPresent(finishedCount, forKey: .finishedCount)
            
            
            
            
            try? container.encodeIfPresent(errorCount, forKey: .errorCount)
            
            
            
            
            try? container.encodeIfPresent(successCount, forKey: .successCount)
            
            
            
            
            try? container.encodeIfPresent(totalJobs, forKey: .totalJobs)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: JobSchema
        Used By: Content
    */

    class JobSchema: Codable {
        
        
        public var id: String?
        
        public var jobs: [String]?
        
        public var finishedJobs: [String]?
        
        public var errorJobs: [String]?
        
        public var errorsOccured: [String]?
        
        public var companyId: String?
        
        public var creator: String?
        
        public var status: String?
        
        public var actionType: String?
        
        public var entity: String?
        
        public var errorUrl: String?
        
        public var finishedCount: Int?
        
        public var errorCount: Int?
        
        public var successCount: Int?
        
        public var totalJobs: Int?
        
        public var meta: CustomObjectMetaSchema?
        
        public var createdBy: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var applicationId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case jobs = "jobs"
            
            case finishedJobs = "finished_jobs"
            
            case errorJobs = "error_jobs"
            
            case errorsOccured = "errors_occured"
            
            case companyId = "company_id"
            
            case creator = "creator"
            
            case status = "status"
            
            case actionType = "action_type"
            
            case entity = "entity"
            
            case errorUrl = "error_url"
            
            case finishedCount = "finished_count"
            
            case errorCount = "error_count"
            
            case successCount = "success_count"
            
            case totalJobs = "total_jobs"
            
            case meta = "meta"
            
            case createdBy = "created_by"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case applicationId = "application_id"
            
        }

        public init(actionType: String? = nil, applicationId: String? = nil, companyId: String? = nil, createdAt: String? = nil, createdBy: String? = nil, creator: String? = nil, entity: String? = nil, errorsOccured: [String]? = nil, errorCount: Int? = nil, errorJobs: [String]? = nil, errorUrl: String? = nil, finishedCount: Int? = nil, finishedJobs: [String]? = nil, jobs: [String]? = nil, meta: CustomObjectMetaSchema? = nil, status: String? = nil, successCount: Int? = nil, totalJobs: Int? = nil, updatedAt: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.jobs = jobs
            
            self.finishedJobs = finishedJobs
            
            self.errorJobs = errorJobs
            
            self.errorsOccured = errorsOccured
            
            self.companyId = companyId
            
            self.creator = creator
            
            self.status = status
            
            self.actionType = actionType
            
            self.entity = entity
            
            self.errorUrl = errorUrl
            
            self.finishedCount = finishedCount
            
            self.errorCount = errorCount
            
            self.successCount = successCount
            
            self.totalJobs = totalJobs
            
            self.meta = meta
            
            self.createdBy = createdBy
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.applicationId = applicationId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    jobs = try container.decode([String].self, forKey: .jobs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    finishedJobs = try container.decode([String].self, forKey: .finishedJobs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorJobs = try container.decode([String].self, forKey: .errorJobs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorsOccured = try container.decode([String].self, forKey: .errorsOccured)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(String.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creator = try container.decode(String.self, forKey: .creator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    actionType = try container.decode(String.self, forKey: .actionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entity = try container.decode(String.self, forKey: .entity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorUrl = try container.decode(String.self, forKey: .errorUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    finishedCount = try container.decode(Int.self, forKey: .finishedCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorCount = try container.decode(Int.self, forKey: .errorCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successCount = try container.decode(Int.self, forKey: .successCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalJobs = try container.decode(Int.self, forKey: .totalJobs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(CustomObjectMetaSchema.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
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
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(jobs, forKey: .jobs)
            
            
            
            
            try? container.encodeIfPresent(finishedJobs, forKey: .finishedJobs)
            
            
            
            
            try? container.encodeIfPresent(errorJobs, forKey: .errorJobs)
            
            
            
            
            try? container.encodeIfPresent(errorsOccured, forKey: .errorsOccured)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(creator, forKey: .creator)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(actionType, forKey: .actionType)
            
            
            
            
            try? container.encodeIfPresent(entity, forKey: .entity)
            
            
            
            
            try? container.encodeIfPresent(errorUrl, forKey: .errorUrl)
            
            
            
            
            try? container.encodeIfPresent(finishedCount, forKey: .finishedCount)
            
            
            
            
            try? container.encodeIfPresent(errorCount, forKey: .errorCount)
            
            
            
            
            try? container.encodeIfPresent(successCount, forKey: .successCount)
            
            
            
            
            try? container.encodeIfPresent(totalJobs, forKey: .totalJobs)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
        }
        
    }
}


