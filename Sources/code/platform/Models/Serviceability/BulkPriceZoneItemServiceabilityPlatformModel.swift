

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: BulkPriceZoneItem
        Used By: Serviceability
    */

    class BulkPriceZoneItem: Codable {
        
        
        public var batchId: String
        
        public var entityType: String
        
        public var errorFileUrl: String?
        
        public var filePath: String
        
        public var fileName: String
        
        public var updatedAt: String
        
        public var updatedBy: String
        
        public var stage: String
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case entityType = "entity_type"
            
            case errorFileUrl = "error_file_url"
            
            case filePath = "file_path"
            
            case fileName = "file_name"
            
            case updatedAt = "updated_at"
            
            case updatedBy = "updated_by"
            
            case stage = "stage"
            
        }

        public init(batchId: String, entityType: String, errorFileUrl: String? = nil, fileName: String, filePath: String, stage: String, updatedAt: String, updatedBy: String) {
            
            self.batchId = batchId
            
            self.entityType = entityType
            
            self.errorFileUrl = errorFileUrl
            
            self.filePath = filePath
            
            self.fileName = fileName
            
            self.updatedAt = updatedAt
            
            self.updatedBy = updatedBy
            
            self.stage = stage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                entityType = try container.decode(String.self, forKey: .entityType)
                
            
            
            
                do {
                    errorFileUrl = try container.decode(String.self, forKey: .errorFileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                filePath = try container.decode(String.self, forKey: .filePath)
                
            
            
            
                fileName = try container.decode(String.self, forKey: .fileName)
                
            
            
            
                updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
            
            
            
                updatedBy = try container.decode(String.self, forKey: .updatedBy)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(errorFileUrl, forKey: .errorFileUrl)
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: BulkPriceZoneItem
        Used By: Serviceability
    */

    class BulkPriceZoneItem: Codable {
        
        
        public var batchId: String
        
        public var entityType: String
        
        public var errorFileUrl: String?
        
        public var filePath: String
        
        public var fileName: String
        
        public var updatedAt: String
        
        public var updatedBy: String
        
        public var stage: String
        

        public enum CodingKeys: String, CodingKey {
            
            case batchId = "batch_id"
            
            case entityType = "entity_type"
            
            case errorFileUrl = "error_file_url"
            
            case filePath = "file_path"
            
            case fileName = "file_name"
            
            case updatedAt = "updated_at"
            
            case updatedBy = "updated_by"
            
            case stage = "stage"
            
        }

        public init(batchId: String, entityType: String, errorFileUrl: String? = nil, fileName: String, filePath: String, stage: String, updatedAt: String, updatedBy: String) {
            
            self.batchId = batchId
            
            self.entityType = entityType
            
            self.errorFileUrl = errorFileUrl
            
            self.filePath = filePath
            
            self.fileName = fileName
            
            self.updatedAt = updatedAt
            
            self.updatedBy = updatedBy
            
            self.stage = stage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                batchId = try container.decode(String.self, forKey: .batchId)
                
            
            
            
                entityType = try container.decode(String.self, forKey: .entityType)
                
            
            
            
                do {
                    errorFileUrl = try container.decode(String.self, forKey: .errorFileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                filePath = try container.decode(String.self, forKey: .filePath)
                
            
            
            
                fileName = try container.decode(String.self, forKey: .fileName)
                
            
            
            
                updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
            
            
            
                updatedBy = try container.decode(String.self, forKey: .updatedBy)
                
            
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(batchId, forKey: .batchId)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(errorFileUrl, forKey: .errorFileUrl)
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
        }
        
    }
}


