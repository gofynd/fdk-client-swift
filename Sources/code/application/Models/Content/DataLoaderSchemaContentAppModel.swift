

import Foundation
public extension ApplicationClient.Content {
    /*
        Model: DataLoaderSchema
        Used By: Content
    */
    class DataLoaderSchema: Codable {
        
        public var name: String?
        
        public var service: String?
        
        public var operationId: String?
        
        public var type: String?
        
        public var isSelected: Bool?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var company: String?
        
        public var application: String?
        
        public var url: String?
        
        public var content: String?
        
        public var source: DataLoaderSourceSchema?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case service = "service"
            
            case operationId = "operation_id"
            
            case type = "type"
            
            case isSelected = "is_selected"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case company = "company"
            
            case application = "application"
            
            case url = "url"
            
            case content = "content"
            
            case source = "__source"
            
            case id = "_id"
            
        }

        public init(application: String? = nil, company: String? = nil, content: String? = nil, createdAt: String? = nil, isSelected: Bool? = nil, modifiedAt: String? = nil, name: String? = nil, operationId: String? = nil, service: String? = nil, type: String? = nil, url: String? = nil, id: String? = nil, source: DataLoaderSourceSchema? = nil) {
            
            self.name = name
            
            self.service = service
            
            self.operationId = operationId
            
            self.type = type
            
            self.isSelected = isSelected
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.company = company
            
            self.application = application
            
            self.url = url
            
            self.content = content
            
            self.source = source
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                isSelected = try container.decode(Bool.self, forKey: .isSelected)
            
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
                company = try container.decode(String.self, forKey: .company)
            
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
                source = try container.decode(DataLoaderSourceSchema.self, forKey: .source)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(service, forKey: .service)
            
            
            
            try? container.encodeIfPresent(operationId, forKey: .operationId)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            try? container.encodeIfPresent(content, forKey: .content)
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}
