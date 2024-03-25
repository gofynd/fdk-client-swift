

import Foundation


public extension PlatformClient.Content {
    /*
        Model: DataLoaderResponseSchema
        Used By: Content
    */

    class DataLoaderResponseSchema: Codable {
        
        
        public var application: String?
        
        public var company: String?
        
        public var id: String?
        
        public var name: String?
        
        public var service: String?
        
        public var operationId: String?
        
        public var type: String?
        
        public var url: String?
        
        public var content: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var v: Double?
        
        public var isSelected: Bool?
        
        public var source: DataLoaderSourceSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case application = "application"
            
            case company = "company"
            
            case id = "_id"
            
            case name = "name"
            
            case service = "service"
            
            case operationId = "operation_id"
            
            case type = "type"
            
            case url = "url"
            
            case content = "content"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case v = "__v"
            
            case isSelected = "is_selected"
            
            case source = "__source"
            
        }

        public init(application: String? = nil, company: String? = nil, content: String? = nil, createdAt: String? = nil, isSelected: Bool? = nil, modifiedAt: String? = nil, name: String? = nil, operationId: String? = nil, service: String? = nil, type: String? = nil, url: String? = nil, id: String? = nil, source: DataLoaderSourceSchema? = nil, v: Double? = nil) {
            
            self.application = application
            
            self.company = company
            
            self.id = id
            
            self.name = name
            
            self.service = service
            
            self.operationId = operationId
            
            self.type = type
            
            self.url = url
            
            self.content = content
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.v = v
            
            self.isSelected = isSelected
            
            self.source = source
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    application = try container.decode(String.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    company = try container.decode(String.self, forKey: .company)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    service = try container.decode(String.self, forKey: .service)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    operationId = try container.decode(String.self, forKey: .operationId)
                
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
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    content = try container.decode(String.self, forKey: .content)
                
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
                    modifiedAt = try container.decode(String.self, forKey: .modifiedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Double.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSelected = try container.decode(Bool.self, forKey: .isSelected)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    source = try container.decode(DataLoaderSourceSchema.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(service, forKey: .service)
            
            
            
            
            try? container.encodeIfPresent(operationId, forKey: .operationId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(content, forKey: .content)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: DataLoaderResponseSchema
        Used By: Content
    */

    class DataLoaderResponseSchema: Codable {
        
        
        public var application: String?
        
        public var company: String?
        
        public var id: String?
        
        public var name: String?
        
        public var service: String?
        
        public var operationId: String?
        
        public var type: String?
        
        public var url: String?
        
        public var content: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var v: Double?
        
        public var isSelected: Bool?
        
        public var source: DataLoaderSourceSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case application = "application"
            
            case company = "company"
            
            case id = "_id"
            
            case name = "name"
            
            case service = "service"
            
            case operationId = "operation_id"
            
            case type = "type"
            
            case url = "url"
            
            case content = "content"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case v = "__v"
            
            case isSelected = "is_selected"
            
            case source = "__source"
            
        }

        public init(application: String? = nil, company: String? = nil, content: String? = nil, createdAt: String? = nil, isSelected: Bool? = nil, modifiedAt: String? = nil, name: String? = nil, operationId: String? = nil, service: String? = nil, type: String? = nil, url: String? = nil, id: String? = nil, source: DataLoaderSourceSchema? = nil, v: Double? = nil) {
            
            self.application = application
            
            self.company = company
            
            self.id = id
            
            self.name = name
            
            self.service = service
            
            self.operationId = operationId
            
            self.type = type
            
            self.url = url
            
            self.content = content
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.v = v
            
            self.isSelected = isSelected
            
            self.source = source
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    application = try container.decode(String.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    company = try container.decode(String.self, forKey: .company)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    service = try container.decode(String.self, forKey: .service)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    operationId = try container.decode(String.self, forKey: .operationId)
                
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
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    content = try container.decode(String.self, forKey: .content)
                
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
                    modifiedAt = try container.decode(String.self, forKey: .modifiedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Double.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSelected = try container.decode(Bool.self, forKey: .isSelected)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    source = try container.decode(DataLoaderSourceSchema.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(service, forKey: .service)
            
            
            
            
            try? container.encodeIfPresent(operationId, forKey: .operationId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(content, forKey: .content)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
        }
        
    }
}


