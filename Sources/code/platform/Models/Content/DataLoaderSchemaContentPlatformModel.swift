

import Foundation


public extension PlatformClient.Content {
    /*
        Model: DataLoaderSchema
        Used By: Content
    */

    class DataLoaderSchema: Codable {
        
        
        public var id: String?
        
        public var url: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var application: String?
        
        public var company: String?
        
        public var name: String?
        
        public var service: String?
        
        public var operationId: String?
        
        public var isSelected: Bool?
        
        public var type: String?
        
        public var source: DataLoaderSourceSchema?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case url = "url"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case application = "application"
            
            case company = "company"
            
            case name = "name"
            
            case service = "service"
            
            case operationId = "operation_id"
            
            case isSelected = "is_selected"
            
            case type = "type"
            
            case source = "__source"
            
            case v = "__v"
            
        }

        public init(application: String? = nil, company: String? = nil, createdAt: String? = nil, isSelected: Bool? = nil, modifiedAt: String? = nil, name: String? = nil, operationId: String? = nil, service: String? = nil, type: String? = nil, url: String? = nil, id: String? = nil, source: DataLoaderSourceSchema? = nil, v: Int? = nil) {
            
            self.id = id
            
            self.url = url
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.application = application
            
            self.company = company
            
            self.name = name
            
            self.service = service
            
            self.operationId = operationId
            
            self.isSelected = isSelected
            
            self.type = type
            
            self.source = source
            
            self.v = v
            
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
                    url = try container.decode(String.self, forKey: .url)
                
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
                    isSelected = try container.decode(Bool.self, forKey: .isSelected)
                
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
                    source = try container.decode(DataLoaderSourceSchema.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Int.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(service, forKey: .service)
            
            
            
            
            try? container.encodeIfPresent(operationId, forKey: .operationId)
            
            
            
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: DataLoaderSchema
        Used By: Content
    */

    class DataLoaderSchema: Codable {
        
        
        public var id: String?
        
        public var url: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var application: String?
        
        public var company: String?
        
        public var name: String?
        
        public var service: String?
        
        public var operationId: String?
        
        public var isSelected: Bool?
        
        public var type: String?
        
        public var source: DataLoaderSourceSchema?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case url = "url"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case application = "application"
            
            case company = "company"
            
            case name = "name"
            
            case service = "service"
            
            case operationId = "operation_id"
            
            case isSelected = "is_selected"
            
            case type = "type"
            
            case source = "__source"
            
            case v = "__v"
            
        }

        public init(application: String? = nil, company: String? = nil, createdAt: String? = nil, isSelected: Bool? = nil, modifiedAt: String? = nil, name: String? = nil, operationId: String? = nil, service: String? = nil, type: String? = nil, url: String? = nil, id: String? = nil, source: DataLoaderSourceSchema? = nil, v: Int? = nil) {
            
            self.id = id
            
            self.url = url
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.application = application
            
            self.company = company
            
            self.name = name
            
            self.service = service
            
            self.operationId = operationId
            
            self.isSelected = isSelected
            
            self.type = type
            
            self.source = source
            
            self.v = v
            
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
                    url = try container.decode(String.self, forKey: .url)
                
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
                    isSelected = try container.decode(Bool.self, forKey: .isSelected)
                
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
                    source = try container.decode(DataLoaderSourceSchema.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Int.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(service, forKey: .service)
            
            
            
            
            try? container.encodeIfPresent(operationId, forKey: .operationId)
            
            
            
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}


