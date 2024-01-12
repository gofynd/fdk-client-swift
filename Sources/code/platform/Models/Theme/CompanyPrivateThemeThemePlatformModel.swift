

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: CompanyPrivateTheme
        Used By: Theme
    */

    class CompanyPrivateTheme: Codable {
        
        
        public var themeType: String?
        
        public var id: String?
        
        public var name: String?
        
        public var version: String?
        
        public var applicationId: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var applied: Bool?
        
        public var isPrivate: Bool?
        
        public var meta: CompanyThemeMeta?
        

        public enum CodingKeys: String, CodingKey {
            
            case themeType = "theme_type"
            
            case id = "_id"
            
            case name = "name"
            
            case version = "version"
            
            case applicationId = "application_id"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case applied = "applied"
            
            case isPrivate = "is_private"
            
            case meta = "meta"
            
        }

        public init(applicationId: String? = nil, applied: Bool? = nil, createdAt: String? = nil, isPrivate: Bool? = nil, meta: CompanyThemeMeta? = nil, name: String? = nil, themeType: String? = nil, updatedAt: String? = nil, version: String? = nil, id: String? = nil) {
            
            self.themeType = themeType
            
            self.id = id
            
            self.name = name
            
            self.version = version
            
            self.applicationId = applicationId
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.applied = applied
            
            self.isPrivate = isPrivate
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    themeType = try container.decode(String.self, forKey: .themeType)
                
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
                    version = try container.decode(String.self, forKey: .version)
                
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
                
            
            
                do {
                    applied = try container.decode(Bool.self, forKey: .applied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPrivate = try container.decode(Bool.self, forKey: .isPrivate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(CompanyThemeMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(themeType, forKey: .themeType)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(applied, forKey: .applied)
            
            
            
            
            try? container.encodeIfPresent(isPrivate, forKey: .isPrivate)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: CompanyPrivateTheme
        Used By: Theme
    */

    class CompanyPrivateTheme: Codable {
        
        
        public var themeType: String?
        
        public var id: String?
        
        public var name: String?
        
        public var version: String?
        
        public var applicationId: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var applied: Bool?
        
        public var isPrivate: Bool?
        
        public var meta: CompanyThemeMeta?
        

        public enum CodingKeys: String, CodingKey {
            
            case themeType = "theme_type"
            
            case id = "_id"
            
            case name = "name"
            
            case version = "version"
            
            case applicationId = "application_id"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case applied = "applied"
            
            case isPrivate = "is_private"
            
            case meta = "meta"
            
        }

        public init(applicationId: String? = nil, applied: Bool? = nil, createdAt: String? = nil, isPrivate: Bool? = nil, meta: CompanyThemeMeta? = nil, name: String? = nil, themeType: String? = nil, updatedAt: String? = nil, version: String? = nil, id: String? = nil) {
            
            self.themeType = themeType
            
            self.id = id
            
            self.name = name
            
            self.version = version
            
            self.applicationId = applicationId
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.applied = applied
            
            self.isPrivate = isPrivate
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    themeType = try container.decode(String.self, forKey: .themeType)
                
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
                    version = try container.decode(String.self, forKey: .version)
                
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
                
            
            
                do {
                    applied = try container.decode(Bool.self, forKey: .applied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPrivate = try container.decode(Bool.self, forKey: .isPrivate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(CompanyThemeMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(themeType, forKey: .themeType)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(applied, forKey: .applied)
            
            
            
            
            try? container.encodeIfPresent(isPrivate, forKey: .isPrivate)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}


