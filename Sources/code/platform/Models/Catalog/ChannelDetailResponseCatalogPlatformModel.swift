

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ChannelDetailResponse
        Used By: Catalog
    */

    class ChannelDetailResponse: Codable {
        
        
        public var createdOn: String?
        
        public var createdBy: CreatedBy?
        
        public var name: String?
        
        public var logo: String?
        
        public var validation: ChannelValidation?
        
        public var id: String?
        
        public var description: String?
        
        public var slug: String?
        
        public var appId: String?
        
        public var modifiedBy: CreatedBy?
        
        public var modifiedOn: String?
        
        public var displayName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case name = "name"
            
            case logo = "logo"
            
            case validation = "validation"
            
            case id = "_id"
            
            case description = "description"
            
            case slug = "slug"
            
            case appId = "app_id"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case displayName = "display_name"
            
        }

        public init(appId: String? = nil, createdBy: CreatedBy? = nil, createdOn: String? = nil, description: String? = nil, displayName: String? = nil, logo: String? = nil, modifiedBy: CreatedBy? = nil, modifiedOn: String? = nil, name: String? = nil, slug: String? = nil, validation: ChannelValidation? = nil, id: String? = nil) {
            
            self.createdOn = createdOn
            
            self.createdBy = createdBy
            
            self.name = name
            
            self.logo = logo
            
            self.validation = validation
            
            self.id = id
            
            self.description = description
            
            self.slug = slug
            
            self.appId = appId
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.displayName = displayName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
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
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    validation = try container.decode(ChannelValidation.self, forKey: .validation)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(CreatedBy.self, forKey: .modifiedBy)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(validation, forKey: .validation)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ChannelDetailResponse
        Used By: Catalog
    */

    class ChannelDetailResponse: Codable {
        
        
        public var createdOn: String?
        
        public var createdBy: CreatedBy?
        
        public var name: String?
        
        public var logo: String?
        
        public var validation: ChannelValidation?
        
        public var id: String?
        
        public var description: String?
        
        public var slug: String?
        
        public var appId: String?
        
        public var modifiedBy: CreatedBy?
        
        public var modifiedOn: String?
        
        public var displayName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case name = "name"
            
            case logo = "logo"
            
            case validation = "validation"
            
            case id = "_id"
            
            case description = "description"
            
            case slug = "slug"
            
            case appId = "app_id"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case displayName = "display_name"
            
        }

        public init(appId: String? = nil, createdBy: CreatedBy? = nil, createdOn: String? = nil, description: String? = nil, displayName: String? = nil, logo: String? = nil, modifiedBy: CreatedBy? = nil, modifiedOn: String? = nil, name: String? = nil, slug: String? = nil, validation: ChannelValidation? = nil, id: String? = nil) {
            
            self.createdOn = createdOn
            
            self.createdBy = createdBy
            
            self.name = name
            
            self.logo = logo
            
            self.validation = validation
            
            self.id = id
            
            self.description = description
            
            self.slug = slug
            
            self.appId = appId
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.displayName = displayName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
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
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    validation = try container.decode(ChannelValidation.self, forKey: .validation)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(CreatedBy.self, forKey: .modifiedBy)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(validation, forKey: .validation)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
        }
        
    }
}


