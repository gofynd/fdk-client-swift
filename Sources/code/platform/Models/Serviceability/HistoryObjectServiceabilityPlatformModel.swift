

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: HistoryObject
        Used By: Serviceability
    */

    class HistoryObject: Codable {
        
        
        public var batchId: String
        
        public var entityType: String?
        
        public var errorFileUrl: String?
        
        public var filePath: String?
        
        public var stage: String
        
        public var updatedBy: String?
        
        public var updatedAt: String?
        
        public var totalCount: Int?
        
        public var totalErrorCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case entityType = "entity_type"
            
            case errorFileUrl = "error_file_url"
            
            case filePath = "file_path"
            
            case stage = "stage"
            
            case updatedBy = "updated_by"
            
            case updatedAt = "updated_at"
            
            case totalCount = "total_count"
            
            case totalErrorCount = "total_error_count"
            
        }

        public init(batchId: String, entityType: String? = nil, errorFileUrl: String? = nil, filePath: String? = nil, stage: String, totalCount: Int? = nil, totalErrorCount: Int? = nil, updatedAt: String? = nil, updatedBy: String? = nil) {
            
            self.batchId = batchId
            
            self.entityType = entityType
            
            self.errorFileUrl = errorFileUrl
            
            self.filePath = filePath
            
            self.stage = stage
            
            self.updatedBy = updatedBy
            
            self.updatedAt = updatedAt
            
            self.totalCount = totalCount
            
            self.totalErrorCount = totalErrorCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                
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
                    filePath = try container.decode(String.self, forKey: .filePath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                do {
                    updatedBy = try container.decode(String.self, forKey: .updatedBy)
                
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
                    totalCount = try container.decode(Int.self, forKey: .totalCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalErrorCount = try container.decode(Int.self, forKey: .totalErrorCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(errorFileUrl, forKey: .errorFileUrl)
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(totalCount, forKey: .totalCount)
            
            
            
            
            try? container.encodeIfPresent(totalErrorCount, forKey: .totalErrorCount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: HistoryObject
        Used By: Serviceability
    */

    class HistoryObject: Codable {
        
        
        public var batchId: String
        
        public var entityType: String?
        
        public var errorFileUrl: String?
        
        public var filePath: String?
        
        public var stage: String
        
        public var updatedBy: String?
        
        public var updatedAt: String?
        
        public var totalCount: Int?
        
        public var totalErrorCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case entityType = "entity_type"
            
            case errorFileUrl = "error_file_url"
            
            case filePath = "file_path"
            
            case stage = "stage"
            
            case updatedBy = "updated_by"
            
            case updatedAt = "updated_at"
            
            case totalCount = "total_count"
            
            case totalErrorCount = "total_error_count"
            
        }

        public init(batchId: String, entityType: String? = nil, errorFileUrl: String? = nil, filePath: String? = nil, stage: String, totalCount: Int? = nil, totalErrorCount: Int? = nil, updatedAt: String? = nil, updatedBy: String? = nil) {
            
            self.batchId = batchId
            
            self.entityType = entityType
            
            self.errorFileUrl = errorFileUrl
            
            self.filePath = filePath
            
            self.stage = stage
            
            self.updatedBy = updatedBy
            
            self.updatedAt = updatedAt
            
            self.totalCount = totalCount
            
            self.totalErrorCount = totalErrorCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                
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
                    filePath = try container.decode(String.self, forKey: .filePath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                do {
                    updatedBy = try container.decode(String.self, forKey: .updatedBy)
                
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
                    totalCount = try container.decode(Int.self, forKey: .totalCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalErrorCount = try container.decode(Int.self, forKey: .totalErrorCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(errorFileUrl, forKey: .errorFileUrl)
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(totalCount, forKey: .totalCount)
            
            
            
            
            try? container.encodeIfPresent(totalErrorCount, forKey: .totalErrorCount)
            
            
        }
        
    }
}


