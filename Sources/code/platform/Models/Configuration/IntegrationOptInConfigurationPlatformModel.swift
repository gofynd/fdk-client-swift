

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: IntegrationOptIn
        Used By: Configuration
    */

    class IntegrationOptIn: Codable {
        
        
        public var validators: Validators?
        
        public var description: String?
        
        public var descriptionHtml: String?
        
        public var constants: String?
        
        public var companies: [String]?
        
        public var support: [String]?
        
        public var id: String?
        
        public var name: String?
        
        public var slug: String?
        
        public var hidden: Bool?
        
        public var meta: [IntegrationMeta]?
        
        public var icon: String?
        
        public var owner: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var token: String?
        
        public var secret: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case validators = "validators"
            
            case description = "description"
            
            case descriptionHtml = "description_html"
            
            case constants = "constants"
            
            case companies = "companies"
            
            case support = "support"
            
            case id = "_id"
            
            case name = "name"
            
            case slug = "slug"
            
            case hidden = "hidden"
            
            case meta = "meta"
            
            case icon = "icon"
            
            case owner = "owner"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case token = "token"
            
            case secret = "secret"
            
            case v = "__v"
            
        }

        public init(companies: [String]? = nil, constants: String? = nil, createdAt: String? = nil, description: String? = nil, descriptionHtml: String? = nil, hidden: Bool? = nil, icon: String? = nil, meta: [IntegrationMeta]? = nil, modifiedAt: String? = nil, name: String? = nil, owner: String? = nil, secret: String? = nil, slug: String? = nil, support: [String]? = nil, token: String? = nil, validators: Validators? = nil, id: String? = nil, v: Int? = nil) {
            
            self.validators = validators
            
            self.description = description
            
            self.descriptionHtml = descriptionHtml
            
            self.constants = constants
            
            self.companies = companies
            
            self.support = support
            
            self.id = id
            
            self.name = name
            
            self.slug = slug
            
            self.hidden = hidden
            
            self.meta = meta
            
            self.icon = icon
            
            self.owner = owner
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.token = token
            
            self.secret = secret
            
            self.v = v
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    validators = try container.decode(Validators.self, forKey: .validators)
                
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
                    descriptionHtml = try container.decode(String.self, forKey: .descriptionHtml)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    constants = try container.decode(String.self, forKey: .constants)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companies = try container.decode([String].self, forKey: .companies)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    support = try container.decode([String].self, forKey: .support)
                
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
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hidden = try container.decode(Bool.self, forKey: .hidden)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([IntegrationMeta].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    icon = try container.decode(String.self, forKey: .icon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    owner = try container.decode(String.self, forKey: .owner)
                
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
                    token = try container.decode(String.self, forKey: .token)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    secret = try container.decode(String.self, forKey: .secret)
                
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
            
            
            
            try? container.encodeIfPresent(validators, forKey: .validators)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(descriptionHtml, forKey: .descriptionHtml)
            
            
            
            
            try? container.encodeIfPresent(constants, forKey: .constants)
            
            
            
            
            try? container.encodeIfPresent(companies, forKey: .companies)
            
            
            
            
            try? container.encodeIfPresent(support, forKey: .support)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(hidden, forKey: .hidden)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(icon, forKey: .icon)
            
            
            
            
            try? container.encodeIfPresent(owner, forKey: .owner)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            
            
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: IntegrationOptIn
        Used By: Configuration
    */

    class IntegrationOptIn: Codable {
        
        
        public var validators: Validators?
        
        public var description: String?
        
        public var descriptionHtml: String?
        
        public var constants: String?
        
        public var companies: [String]?
        
        public var support: [String]?
        
        public var id: String?
        
        public var name: String?
        
        public var slug: String?
        
        public var hidden: Bool?
        
        public var meta: [IntegrationMeta]?
        
        public var icon: String?
        
        public var owner: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var token: String?
        
        public var secret: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case validators = "validators"
            
            case description = "description"
            
            case descriptionHtml = "description_html"
            
            case constants = "constants"
            
            case companies = "companies"
            
            case support = "support"
            
            case id = "_id"
            
            case name = "name"
            
            case slug = "slug"
            
            case hidden = "hidden"
            
            case meta = "meta"
            
            case icon = "icon"
            
            case owner = "owner"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case token = "token"
            
            case secret = "secret"
            
            case v = "__v"
            
        }

        public init(companies: [String]? = nil, constants: String? = nil, createdAt: String? = nil, description: String? = nil, descriptionHtml: String? = nil, hidden: Bool? = nil, icon: String? = nil, meta: [IntegrationMeta]? = nil, modifiedAt: String? = nil, name: String? = nil, owner: String? = nil, secret: String? = nil, slug: String? = nil, support: [String]? = nil, token: String? = nil, validators: Validators? = nil, id: String? = nil, v: Int? = nil) {
            
            self.validators = validators
            
            self.description = description
            
            self.descriptionHtml = descriptionHtml
            
            self.constants = constants
            
            self.companies = companies
            
            self.support = support
            
            self.id = id
            
            self.name = name
            
            self.slug = slug
            
            self.hidden = hidden
            
            self.meta = meta
            
            self.icon = icon
            
            self.owner = owner
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.token = token
            
            self.secret = secret
            
            self.v = v
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    validators = try container.decode(Validators.self, forKey: .validators)
                
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
                    descriptionHtml = try container.decode(String.self, forKey: .descriptionHtml)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    constants = try container.decode(String.self, forKey: .constants)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companies = try container.decode([String].self, forKey: .companies)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    support = try container.decode([String].self, forKey: .support)
                
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
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hidden = try container.decode(Bool.self, forKey: .hidden)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([IntegrationMeta].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    icon = try container.decode(String.self, forKey: .icon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    owner = try container.decode(String.self, forKey: .owner)
                
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
                    token = try container.decode(String.self, forKey: .token)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    secret = try container.decode(String.self, forKey: .secret)
                
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
            
            
            
            try? container.encodeIfPresent(validators, forKey: .validators)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(descriptionHtml, forKey: .descriptionHtml)
            
            
            
            
            try? container.encodeIfPresent(constants, forKey: .constants)
            
            
            
            
            try? container.encodeIfPresent(companies, forKey: .companies)
            
            
            
            
            try? container.encodeIfPresent(support, forKey: .support)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(hidden, forKey: .hidden)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(icon, forKey: .icon)
            
            
            
            
            try? container.encodeIfPresent(owner, forKey: .owner)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            
            
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}


