

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: BulkActionModel
        Used By: User
    */

    class BulkActionModel: Codable {
        
        
        public var id: String
        
        public var fileName: String
        
        public var fileFormat: String
        
        public var actionType: String
        
        public var createdBy: CreatedBySchema
        
        public var count: BulkActionCountSchema?
        
        public var status: String?
        
        public var links: BulkActionLinkSchema?
        
        public var applicationId: String
        
        public var companyId: String
        
        public var createdAt: String?
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case fileName = "file_name"
            
            case fileFormat = "file_format"
            
            case actionType = "action_type"
            
            case createdBy = "created_by"
            
            case count = "count"
            
            case status = "status"
            
            case links = "links"
            
            case applicationId = "application_id"
            
            case companyId = "company_id"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
        }

        public init(actionType: String, applicationId: String, companyId: String, count: BulkActionCountSchema? = nil, createdAt: String? = nil, createdBy: CreatedBySchema, fileFormat: String, fileName: String, links: BulkActionLinkSchema? = nil, status: String? = nil, updatedAt: String? = nil, id: String) {
            
            self.id = id
            
            self.fileName = fileName
            
            self.fileFormat = fileFormat
            
            self.actionType = actionType
            
            self.createdBy = createdBy
            
            self.count = count
            
            self.status = status
            
            self.links = links
            
            self.applicationId = applicationId
            
            self.companyId = companyId
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                fileName = try container.decode(String.self, forKey: .fileName)
                
            
            
            
                fileFormat = try container.decode(String.self, forKey: .fileFormat)
                
            
            
            
                actionType = try container.decode(String.self, forKey: .actionType)
                
            
            
            
                createdBy = try container.decode(CreatedBySchema.self, forKey: .createdBy)
                
            
            
            
                do {
                    count = try container.decode(BulkActionCountSchema.self, forKey: .count)
                
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
                    links = try container.decode(BulkActionLinkSchema.self, forKey: .links)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                companyId = try container.decode(String.self, forKey: .companyId)
                
            
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            
            
            
            try? container.encodeIfPresent(fileFormat, forKey: .fileFormat)
            
            
            
            
            try? container.encodeIfPresent(actionType, forKey: .actionType)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(links, forKey: .links)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
        }
        
    }
}


