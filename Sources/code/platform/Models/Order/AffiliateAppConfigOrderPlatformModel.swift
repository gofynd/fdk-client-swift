

import Foundation


public extension PlatformClient.Order {
    /*
        Model: AffiliateAppConfig
        Used By: Order
    */

    class AffiliateAppConfig: Codable {
        
        
        public var id: String
        
        public var description: String?
        
        public var updatedAt: String
        
        public var name: String
        
        public var token: String
        
        public var meta: [AffiliateAppConfigMeta]?
        
        public var owner: String
        
        public var secret: String
        
        public var createdAt: String
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case description = "description"
            
            case updatedAt = "updated_at"
            
            case name = "name"
            
            case token = "token"
            
            case meta = "meta"
            
            case owner = "owner"
            
            case secret = "secret"
            
            case createdAt = "created_at"
            
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            
            self.id = id
            
            self.description = description
            
            self.updatedAt = updatedAt
            
            self.name = name
            
            self.token = token
            
            self.meta = meta
            
            self.owner = owner
            
            self.secret = secret
            
            self.createdAt = createdAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                token = try container.decode(String.self, forKey: .token)
                
            
            
            
                do {
                    meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                owner = try container.decode(String.self, forKey: .owner)
                
            
            
            
                secret = try container.decode(String.self, forKey: .secret)
                
            
            
            
                createdAt = try container.decode(String.self, forKey: .createdAt)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(owner, forKey: .owner)
            
            
            
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: AffiliateAppConfig
        Used By: Order
    */

    class AffiliateAppConfig: Codable {
        
        
        public var id: String
        
        public var description: String?
        
        public var updatedAt: String
        
        public var name: String
        
        public var token: String
        
        public var meta: [AffiliateAppConfigMeta]?
        
        public var owner: String
        
        public var secret: String
        
        public var createdAt: String
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case description = "description"
            
            case updatedAt = "updated_at"
            
            case name = "name"
            
            case token = "token"
            
            case meta = "meta"
            
            case owner = "owner"
            
            case secret = "secret"
            
            case createdAt = "created_at"
            
        }

        public init(createdAt: String, description: String? = nil, id: String, meta: [AffiliateAppConfigMeta]? = nil, name: String, owner: String, secret: String, token: String, updatedAt: String) {
            
            self.id = id
            
            self.description = description
            
            self.updatedAt = updatedAt
            
            self.name = name
            
            self.token = token
            
            self.meta = meta
            
            self.owner = owner
            
            self.secret = secret
            
            self.createdAt = createdAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                token = try container.decode(String.self, forKey: .token)
                
            
            
            
                do {
                    meta = try container.decode([AffiliateAppConfigMeta].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                owner = try container.decode(String.self, forKey: .owner)
                
            
            
            
                secret = try container.decode(String.self, forKey: .secret)
                
            
            
            
                createdAt = try container.decode(String.self, forKey: .createdAt)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(owner, forKey: .owner)
            
            
            
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
        }
        
    }
}


