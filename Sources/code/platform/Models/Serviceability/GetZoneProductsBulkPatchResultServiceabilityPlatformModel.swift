

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: GetZoneProductsBulkPatchResult
        Used By: Serviceability
    */

    class GetZoneProductsBulkPatchResult: Codable {
        
        
        public var batchId: String
        
        public var filePath: String?
        
        public var total: Int
        
        public var failed: Int
        
        public var errorFileUrl: String?
        
        public var action: String
        
        public var updatedAt: String
        
        public var updatedBy: String
        
        public var type: String
        
        public var companyId: Int
        
        public var applicationId: String
        
        public var stage: String
        
        public var partial: Int?
        
        public var resultFileUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case filePath = "file_path"
            
            case total = "total"
            
            case failed = "failed"
            
            case errorFileUrl = "error_file_url"
            
            case action = "action"
            
            case updatedAt = "updated_at"
            
            case updatedBy = "updated_by"
            
            case type = "type"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case stage = "stage"
            
            case partial = "partial"
            
            case resultFileUrl = "result_file_url"
            
        }

        public init(action: String, applicationId: String, batchId: String, companyId: Int, errorFileUrl: String? = nil, failed: Int, filePath: String? = nil, partial: Int? = nil, resultFileUrl: String? = nil, stage: String, total: Int, type: String, updatedAt: String, updatedBy: String) {
            
            self.batchId = batchId
            
            self.filePath = filePath
            
            self.total = total
            
            self.failed = failed
            
            self.errorFileUrl = errorFileUrl
            
            self.action = action
            
            self.updatedAt = updatedAt
            
            self.updatedBy = updatedBy
            
            self.type = type
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.stage = stage
            
            self.partial = partial
            
            self.resultFileUrl = resultFileUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                do {
                    filePath = try container.decode(String.self, forKey: .filePath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                total = try container.decode(Int.self, forKey: .total)
                
            
            
            
                failed = try container.decode(Int.self, forKey: .failed)
                
            
            
            
                do {
                    errorFileUrl = try container.decode(String.self, forKey: .errorFileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
            
            
            
                updatedBy = try container.decode(String.self, forKey: .updatedBy)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                do {
                    partial = try container.decode(Int.self, forKey: .partial)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    resultFileUrl = try container.decode(String.self, forKey: .resultFileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(failed, forKey: .failed)
            
            
            
            
            try? container.encodeIfPresent(errorFileUrl, forKey: .errorFileUrl)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(partial, forKey: .partial)
            
            
            
            
            try? container.encodeIfPresent(resultFileUrl, forKey: .resultFileUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: GetZoneProductsBulkPatchResult
        Used By: Serviceability
    */

    class GetZoneProductsBulkPatchResult: Codable {
        
        
        public var batchId: String
        
        public var filePath: String?
        
        public var total: Int
        
        public var failed: Int
        
        public var errorFileUrl: String?
        
        public var action: String
        
        public var updatedAt: String
        
        public var updatedBy: String
        
        public var type: String
        
        public var companyId: Int
        
        public var applicationId: String
        
        public var stage: String
        
        public var partial: Int?
        
        public var resultFileUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case filePath = "file_path"
            
            case total = "total"
            
            case failed = "failed"
            
            case errorFileUrl = "error_file_url"
            
            case action = "action"
            
            case updatedAt = "updated_at"
            
            case updatedBy = "updated_by"
            
            case type = "type"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case stage = "stage"
            
            case partial = "partial"
            
            case resultFileUrl = "result_file_url"
            
        }

        public init(action: String, applicationId: String, batchId: String, companyId: Int, errorFileUrl: String? = nil, failed: Int, filePath: String? = nil, partial: Int? = nil, resultFileUrl: String? = nil, stage: String, total: Int, type: String, updatedAt: String, updatedBy: String) {
            
            self.batchId = batchId
            
            self.filePath = filePath
            
            self.total = total
            
            self.failed = failed
            
            self.errorFileUrl = errorFileUrl
            
            self.action = action
            
            self.updatedAt = updatedAt
            
            self.updatedBy = updatedBy
            
            self.type = type
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.stage = stage
            
            self.partial = partial
            
            self.resultFileUrl = resultFileUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                do {
                    filePath = try container.decode(String.self, forKey: .filePath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                total = try container.decode(Int.self, forKey: .total)
                
            
            
            
                failed = try container.decode(Int.self, forKey: .failed)
                
            
            
            
                do {
                    errorFileUrl = try container.decode(String.self, forKey: .errorFileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
            
            
            
                updatedBy = try container.decode(String.self, forKey: .updatedBy)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                do {
                    partial = try container.decode(Int.self, forKey: .partial)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    resultFileUrl = try container.decode(String.self, forKey: .resultFileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(failed, forKey: .failed)
            
            
            
            
            try? container.encodeIfPresent(errorFileUrl, forKey: .errorFileUrl)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(partial, forKey: .partial)
            
            
            
            
            try? container.encodeIfPresent(resultFileUrl, forKey: .resultFileUrl)
            
            
        }
        
    }
}


