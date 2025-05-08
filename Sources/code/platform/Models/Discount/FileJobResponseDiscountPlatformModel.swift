

import Foundation


public extension PlatformClient.Discount {
    /*
        Model: FileJobResponse
        Used By: Discount
    */

    class FileJobResponse: Codable {
        
        
        public var stage: String
        
        public var total: Int
        
        public var failed: Int
        
        public var companyId: Int
        
        public var body: FileJobBody?
        
        public var type: String
        
        public var fileType: String?
        
        public var id: String
        
        public var filePath: String?
        
        public var progress: Int?
        
        public var extensionIds: [String]?
        
        public var zoneIds: [String]?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var createdBy: UserDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case stage = "stage"
            
            case total = "total"
            
            case failed = "failed"
            
            case companyId = "company_id"
            
            case body = "body"
            
            case type = "type"
            
            case fileType = "file_type"
            
            case id = "_id"
            
            case filePath = "file_path"
            
            case progress = "progress"
            
            case extensionIds = "extension_ids"
            
            case zoneIds = "zone_ids"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case createdBy = "created_by"
            
        }

        public init(body: FileJobBody? = nil, companyId: Int, createdBy: UserDetails? = nil, createdOn: String? = nil, extensionIds: [String]? = nil, failed: Int, filePath: String? = nil, fileType: String? = nil, modifiedOn: String? = nil, progress: Int? = nil, stage: String, total: Int, type: String, zoneIds: [String]? = nil, id: String) {
            
            self.stage = stage
            
            self.total = total
            
            self.failed = failed
            
            self.companyId = companyId
            
            self.body = body
            
            self.type = type
            
            self.fileType = fileType
            
            self.id = id
            
            self.filePath = filePath
            
            self.progress = progress
            
            self.extensionIds = extensionIds
            
            self.zoneIds = zoneIds
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.createdBy = createdBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                stage = try container.decode(String.self, forKey: .stage)
                
            
            
            
                total = try container.decode(Int.self, forKey: .total)
                
            
            
            
                failed = try container.decode(Int.self, forKey: .failed)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                do {
                    body = try container.decode(FileJobBody.self, forKey: .body)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    fileType = try container.decode(String.self, forKey: .fileType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                do {
                    filePath = try container.decode(String.self, forKey: .filePath)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    progress = try container.decode(Int.self, forKey: .progress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extensionIds = try container.decode([String].self, forKey: .extensionIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zoneIds = try container.decode([String].self, forKey: .zoneIds)
                
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
                    createdBy = try container.decode(UserDetails.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(failed, forKey: .failed)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(body, forKey: .body)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(fileType, forKey: .fileType)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(filePath, forKey: .filePath)
            
            
            
            
            try? container.encodeIfPresent(progress, forKey: .progress)
            
            
            
            
            try? container.encodeIfPresent(extensionIds, forKey: .extensionIds)
            
            
            
            
            try? container.encodeIfPresent(zoneIds, forKey: .zoneIds)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
        }
        
    }
}




