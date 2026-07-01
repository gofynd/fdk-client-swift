

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: BulkGeoAreaGetResult
        Used By: Serviceability
    */

    class BulkGeoAreaGetResult: Codable {
        
        
        public var batchId: String?
        
        public var filePath: String?
        
        public var total: Int?
        
        public var failed: Int?
        
        public var errorFileUrl: String?
        
        public var action: String?
        
        public var updatedAt: String?
        
        public var updatedBy: String?
        
        public var type: String?
        
        public var stage: String?
        
        public var fileUrl: String?
        

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
            
            case stage = "stage"
            
            case fileUrl = "file_url"
            
        }

        public init(action: String? = nil, batchId: String? = nil, errorFileUrl: String? = nil, failed: Int? = nil, filePath: String? = nil, fileUrl: String? = nil, stage: String? = nil, total: Int? = nil, type: String? = nil, updatedAt: String? = nil, updatedBy: String? = nil) {
            
            self.batchId = batchId
            
            self.filePath = filePath
            
            self.total = total
            
            self.failed = failed
            
            self.errorFileUrl = errorFileUrl
            
            self.action = action
            
            self.updatedAt = updatedAt
            
            self.updatedBy = updatedBy
            
            self.type = type
            
            self.stage = stage
            
            self.fileUrl = fileUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    batchId = try container.decode(String.self, forKey: .batchId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filePath = try container.decode(String.self, forKey: .filePath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failed = try container.decode(Int.self, forKey: .failed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorFileUrl = try container.decode(String.self, forKey: .errorFileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(String.self, forKey: .action)
                
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
                    updatedBy = try container.decode(String.self, forKey: .updatedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
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
                    fileUrl = try container.decode(String.self, forKey: .fileUrl)
                
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
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: BulkGeoAreaGetResult
        Used By: Serviceability
    */

    class BulkGeoAreaGetResult: Codable {
        
        
        public var batchId: String?
        
        public var filePath: String?
        
        public var total: Int?
        
        public var failed: Int?
        
        public var errorFileUrl: String?
        
        public var action: String?
        
        public var updatedAt: String?
        
        public var updatedBy: String?
        
        public var type: String?
        
        public var stage: String?
        
        public var fileUrl: String?
        

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
            
            case stage = "stage"
            
            case fileUrl = "file_url"
            
        }

        public init(action: String? = nil, batchId: String? = nil, errorFileUrl: String? = nil, failed: Int? = nil, filePath: String? = nil, fileUrl: String? = nil, stage: String? = nil, total: Int? = nil, type: String? = nil, updatedAt: String? = nil, updatedBy: String? = nil) {
            
            self.batchId = batchId
            
            self.filePath = filePath
            
            self.total = total
            
            self.failed = failed
            
            self.errorFileUrl = errorFileUrl
            
            self.action = action
            
            self.updatedAt = updatedAt
            
            self.updatedBy = updatedBy
            
            self.type = type
            
            self.stage = stage
            
            self.fileUrl = fileUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    batchId = try container.decode(String.self, forKey: .batchId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filePath = try container.decode(String.self, forKey: .filePath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failed = try container.decode(Int.self, forKey: .failed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorFileUrl = try container.decode(String.self, forKey: .errorFileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(String.self, forKey: .action)
                
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
                    updatedBy = try container.decode(String.self, forKey: .updatedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
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
                    fileUrl = try container.decode(String.self, forKey: .fileUrl)
                
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
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
        }
        
    }
}


