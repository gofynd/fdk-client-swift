

import Foundation


public extension PlatformClient.Content {
    /*
        Model: CustomObjectSchema
        Used By: Content
    */

    class CustomObjectSchema: Codable {
        
        
        public var id: String?
        
        public var creator: String?
        
        public var companyId: String?
        
        public var applicationId: String?
        
        public var createdBy: String?
        
        public var updatedBy: String?
        
        public var status: String?
        
        public var type: String?
        
        public var displayName: String?
        
        public var definitionId: String?
        
        public var fields: [CustomFieldSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case creator = "creator"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case createdBy = "created_by"
            
            case updatedBy = "updated_by"
            
            case status = "status"
            
            case type = "type"
            
            case displayName = "display_name"
            
            case definitionId = "definition_id"
            
            case fields = "fields"
            
        }

        public init(applicationId: String? = nil, companyId: String? = nil, createdBy: String? = nil, creator: String? = nil, definitionId: String? = nil, displayName: String? = nil, fields: [CustomFieldSchema]? = nil, status: String? = nil, type: String? = nil, updatedBy: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.creator = creator
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.createdBy = createdBy
            
            self.updatedBy = updatedBy
            
            self.status = status
            
            self.type = type
            
            self.displayName = displayName
            
            self.definitionId = definitionId
            
            self.fields = fields
            
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
                    creator = try container.decode(String.self, forKey: .creator)
                
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
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
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
                    updatedBy = try container.decode(String.self, forKey: .updatedBy)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    definitionId = try container.decode(String.self, forKey: .definitionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fields = try container.decode([CustomFieldSchema].self, forKey: .fields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(creator, forKey: .creator)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(definitionId, forKey: .definitionId)
            
            
            
            
            try? container.encodeIfPresent(fields, forKey: .fields)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: CustomObjectSchema
        Used By: Content
    */

    class CustomObjectSchema: Codable {
        
        
        public var id: String?
        
        public var creator: String?
        
        public var companyId: String?
        
        public var applicationId: String?
        
        public var createdBy: String?
        
        public var updatedBy: String?
        
        public var status: String?
        
        public var type: String?
        
        public var displayName: String?
        
        public var definitionId: String?
        
        public var fields: [CustomFieldSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case creator = "creator"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case createdBy = "created_by"
            
            case updatedBy = "updated_by"
            
            case status = "status"
            
            case type = "type"
            
            case displayName = "display_name"
            
            case definitionId = "definition_id"
            
            case fields = "fields"
            
        }

        public init(applicationId: String? = nil, companyId: String? = nil, createdBy: String? = nil, creator: String? = nil, definitionId: String? = nil, displayName: String? = nil, fields: [CustomFieldSchema]? = nil, status: String? = nil, type: String? = nil, updatedBy: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.creator = creator
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.createdBy = createdBy
            
            self.updatedBy = updatedBy
            
            self.status = status
            
            self.type = type
            
            self.displayName = displayName
            
            self.definitionId = definitionId
            
            self.fields = fields
            
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
                    creator = try container.decode(String.self, forKey: .creator)
                
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
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
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
                    updatedBy = try container.decode(String.self, forKey: .updatedBy)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    definitionId = try container.decode(String.self, forKey: .definitionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fields = try container.decode([CustomFieldSchema].self, forKey: .fields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(creator, forKey: .creator)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(definitionId, forKey: .definitionId)
            
            
            
            
            try? container.encodeIfPresent(fields, forKey: .fields)
            
            
        }
        
    }
}


