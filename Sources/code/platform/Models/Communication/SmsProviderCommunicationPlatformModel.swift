

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: SmsProvider
        Used By: Communication
    */

    class SmsProvider: Codable {
        
        
        public var token: String?
        
        public var senderId: String?
        
        public var apiKey: String?
        
        public var expiryDate: Int?
        
        public var rpt: Int?
        
        public var type: String?
        
        public var provider: String?
        
        public var id: String?
        
        public var name: String?
        
        public var description: String?
        
        public var sender: String?
        
        public var username: String?
        
        public var authkey: String?
        
        public var application: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var slug: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case token = "token"
            
            case senderId = "sender_id"
            
            case apiKey = "api_key"
            
            case expiryDate = "expiry_date"
            
            case rpt = "rpt"
            
            case type = "type"
            
            case provider = "provider"
            
            case id = "_id"
            
            case name = "name"
            
            case description = "description"
            
            case sender = "sender"
            
            case username = "username"
            
            case authkey = "authkey"
            
            case application = "application"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case slug = "slug"
            
            case v = "__v"
            
        }

        public init(apiKey: String? = nil, application: String? = nil, authkey: String? = nil, createdAt: String? = nil, description: String? = nil, expiryDate: Int? = nil, name: String? = nil, provider: String? = nil, rpt: Int? = nil, sender: String? = nil, senderId: String? = nil, slug: String? = nil, token: String? = nil, type: String? = nil, updatedAt: String? = nil, username: String? = nil, id: String? = nil, v: Int? = nil) {
            
            self.token = token
            
            self.senderId = senderId
            
            self.apiKey = apiKey
            
            self.expiryDate = expiryDate
            
            self.rpt = rpt
            
            self.type = type
            
            self.provider = provider
            
            self.id = id
            
            self.name = name
            
            self.description = description
            
            self.sender = sender
            
            self.username = username
            
            self.authkey = authkey
            
            self.application = application
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.slug = slug
            
            self.v = v
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    token = try container.decode(String.self, forKey: .token)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    senderId = try container.decode(String.self, forKey: .senderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    apiKey = try container.decode(String.self, forKey: .apiKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    expiryDate = try container.decode(Int.self, forKey: .expiryDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rpt = try container.decode(Int.self, forKey: .rpt)
                
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
                    provider = try container.decode(String.self, forKey: .provider)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sender = try container.decode(String.self, forKey: .sender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    username = try container.decode(String.self, forKey: .username)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    authkey = try container.decode(String.self, forKey: .authkey)
                
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
                    slug = try container.decode(String.self, forKey: .slug)
                
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
            
            
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            
            
            
            try? container.encodeIfPresent(senderId, forKey: .senderId)
            
            
            
            
            try? container.encodeIfPresent(apiKey, forKey: .apiKey)
            
            
            
            
            try? container.encodeIfPresent(expiryDate, forKey: .expiryDate)
            
            
            
            
            try? container.encodeIfPresent(rpt, forKey: .rpt)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(sender, forKey: .sender)
            
            
            
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            
            
            
            try? container.encodeIfPresent(authkey, forKey: .authkey)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: SmsProvider
        Used By: Communication
    */

    class SmsProvider: Codable {
        
        
        public var token: String?
        
        public var senderId: String?
        
        public var apiKey: String?
        
        public var expiryDate: Int?
        
        public var rpt: Int?
        
        public var type: String?
        
        public var provider: String?
        
        public var id: String?
        
        public var name: String?
        
        public var description: String?
        
        public var sender: String?
        
        public var username: String?
        
        public var authkey: String?
        
        public var application: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var slug: String?
        
        public var v: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case token = "token"
            
            case senderId = "sender_id"
            
            case apiKey = "api_key"
            
            case expiryDate = "expiry_date"
            
            case rpt = "rpt"
            
            case type = "type"
            
            case provider = "provider"
            
            case id = "_id"
            
            case name = "name"
            
            case description = "description"
            
            case sender = "sender"
            
            case username = "username"
            
            case authkey = "authkey"
            
            case application = "application"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case slug = "slug"
            
            case v = "__v"
            
        }

        public init(apiKey: String? = nil, application: String? = nil, authkey: String? = nil, createdAt: String? = nil, description: String? = nil, expiryDate: Int? = nil, name: String? = nil, provider: String? = nil, rpt: Int? = nil, sender: String? = nil, senderId: String? = nil, slug: String? = nil, token: String? = nil, type: String? = nil, updatedAt: String? = nil, username: String? = nil, id: String? = nil, v: Int? = nil) {
            
            self.token = token
            
            self.senderId = senderId
            
            self.apiKey = apiKey
            
            self.expiryDate = expiryDate
            
            self.rpt = rpt
            
            self.type = type
            
            self.provider = provider
            
            self.id = id
            
            self.name = name
            
            self.description = description
            
            self.sender = sender
            
            self.username = username
            
            self.authkey = authkey
            
            self.application = application
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.slug = slug
            
            self.v = v
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    token = try container.decode(String.self, forKey: .token)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    senderId = try container.decode(String.self, forKey: .senderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    apiKey = try container.decode(String.self, forKey: .apiKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    expiryDate = try container.decode(Int.self, forKey: .expiryDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rpt = try container.decode(Int.self, forKey: .rpt)
                
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
                    provider = try container.decode(String.self, forKey: .provider)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sender = try container.decode(String.self, forKey: .sender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    username = try container.decode(String.self, forKey: .username)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    authkey = try container.decode(String.self, forKey: .authkey)
                
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
                    slug = try container.decode(String.self, forKey: .slug)
                
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
            
            
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            
            
            
            try? container.encodeIfPresent(senderId, forKey: .senderId)
            
            
            
            
            try? container.encodeIfPresent(apiKey, forKey: .apiKey)
            
            
            
            
            try? container.encodeIfPresent(expiryDate, forKey: .expiryDate)
            
            
            
            
            try? container.encodeIfPresent(rpt, forKey: .rpt)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(sender, forKey: .sender)
            
            
            
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            
            
            
            try? container.encodeIfPresent(authkey, forKey: .authkey)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}


