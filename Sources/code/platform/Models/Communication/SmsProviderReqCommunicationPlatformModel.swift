

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: SmsProviderReq
        Used By: Communication
    */

    class SmsProviderReq: Codable {
        
        
        public var name: String?
        
        public var description: String?
        
        public var sender: String?
        
        public var username: String?
        
        public var authkey: String?
        
        public var type: String?
        
        public var provider: String?
        
        public var password: String?
        
        public var senderid: String?
        
        public var feedid: String?
        
        public var entityid: String?
        
        public var overrideDnd: Bool?
        
        public var host: String?
        
        public var port: Int?
        
        public var entityId: String?
        
        public var apikey: String?
        
        public var versionId: Int?
        
        public var senderId: String?
        
        public var apiKey: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case description = "description"
            
            case sender = "sender"
            
            case username = "username"
            
            case authkey = "authkey"
            
            case type = "type"
            
            case provider = "provider"
            
            case password = "password"
            
            case senderid = "senderid"
            
            case feedid = "feedid"
            
            case entityid = "entityid"
            
            case overrideDnd = "override_dnd"
            
            case host = "host"
            
            case port = "port"
            
            case entityId = "entity_id"
            
            case apikey = "apikey"
            
            case versionId = "version_id"
            
            case senderId = "sender_id"
            
            case apiKey = "api_key"
            
        }

        public init(apikey: String? = nil, apiKey: String? = nil, authkey: String? = nil, description: String? = nil, entityid: String? = nil, entityId: String? = nil, feedid: String? = nil, host: String? = nil, name: String? = nil, overrideDnd: Bool? = nil, password: String? = nil, port: Int? = nil, provider: String? = nil, sender: String? = nil, senderid: String? = nil, senderId: String? = nil, type: String? = nil, username: String? = nil, versionId: Int? = nil) {
            
            self.name = name
            
            self.description = description
            
            self.sender = sender
            
            self.username = username
            
            self.authkey = authkey
            
            self.type = type
            
            self.provider = provider
            
            self.password = password
            
            self.senderid = senderid
            
            self.feedid = feedid
            
            self.entityid = entityid
            
            self.overrideDnd = overrideDnd
            
            self.host = host
            
            self.port = port
            
            self.entityId = entityId
            
            self.apikey = apikey
            
            self.versionId = versionId
            
            self.senderId = senderId
            
            self.apiKey = apiKey
            
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
                    password = try container.decode(String.self, forKey: .password)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    senderid = try container.decode(String.self, forKey: .senderid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    feedid = try container.decode(String.self, forKey: .feedid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entityid = try container.decode(String.self, forKey: .entityid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    overrideDnd = try container.decode(Bool.self, forKey: .overrideDnd)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    host = try container.decode(String.self, forKey: .host)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    port = try container.decode(Int.self, forKey: .port)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entityId = try container.decode(String.self, forKey: .entityId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    apikey = try container.decode(String.self, forKey: .apikey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    versionId = try container.decode(Int.self, forKey: .versionId)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(sender, forKey: .sender)
            
            
            
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            
            
            
            try? container.encodeIfPresent(authkey, forKey: .authkey)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
            
            
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            
            
            
            try? container.encodeIfPresent(senderid, forKey: .senderid)
            
            
            
            
            try? container.encodeIfPresent(feedid, forKey: .feedid)
            
            
            
            
            try? container.encodeIfPresent(entityid, forKey: .entityid)
            
            
            
            
            try? container.encodeIfPresent(overrideDnd, forKey: .overrideDnd)
            
            
            
            
            try? container.encodeIfPresent(host, forKey: .host)
            
            
            
            
            try? container.encodeIfPresent(port, forKey: .port)
            
            
            
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            
            
            
            try? container.encodeIfPresent(apikey, forKey: .apikey)
            
            
            
            
            try? container.encodeIfPresent(versionId, forKey: .versionId)
            
            
            
            
            try? container.encodeIfPresent(senderId, forKey: .senderId)
            
            
            
            
            try? container.encodeIfPresent(apiKey, forKey: .apiKey)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: SmsProviderReq
        Used By: Communication
    */

    class SmsProviderReq: Codable {
        
        
        public var name: String?
        
        public var description: String?
        
        public var sender: String?
        
        public var username: String?
        
        public var authkey: String?
        
        public var type: String?
        
        public var provider: String?
        
        public var password: String?
        
        public var senderid: String?
        
        public var feedid: String?
        
        public var entityid: String?
        
        public var overrideDnd: Bool?
        
        public var host: String?
        
        public var port: Int?
        
        public var entityId: String?
        
        public var apikey: String?
        
        public var versionId: Int?
        
        public var senderId: String?
        
        public var apiKey: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case description = "description"
            
            case sender = "sender"
            
            case username = "username"
            
            case authkey = "authkey"
            
            case type = "type"
            
            case provider = "provider"
            
            case password = "password"
            
            case senderid = "senderid"
            
            case feedid = "feedid"
            
            case entityid = "entityid"
            
            case overrideDnd = "override_dnd"
            
            case host = "host"
            
            case port = "port"
            
            case entityId = "entity_id"
            
            case apikey = "apikey"
            
            case versionId = "version_id"
            
            case senderId = "sender_id"
            
            case apiKey = "api_key"
            
        }

        public init(apikey: String? = nil, apiKey: String? = nil, authkey: String? = nil, description: String? = nil, entityid: String? = nil, entityId: String? = nil, feedid: String? = nil, host: String? = nil, name: String? = nil, overrideDnd: Bool? = nil, password: String? = nil, port: Int? = nil, provider: String? = nil, sender: String? = nil, senderid: String? = nil, senderId: String? = nil, type: String? = nil, username: String? = nil, versionId: Int? = nil) {
            
            self.name = name
            
            self.description = description
            
            self.sender = sender
            
            self.username = username
            
            self.authkey = authkey
            
            self.type = type
            
            self.provider = provider
            
            self.password = password
            
            self.senderid = senderid
            
            self.feedid = feedid
            
            self.entityid = entityid
            
            self.overrideDnd = overrideDnd
            
            self.host = host
            
            self.port = port
            
            self.entityId = entityId
            
            self.apikey = apikey
            
            self.versionId = versionId
            
            self.senderId = senderId
            
            self.apiKey = apiKey
            
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
                    password = try container.decode(String.self, forKey: .password)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    senderid = try container.decode(String.self, forKey: .senderid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    feedid = try container.decode(String.self, forKey: .feedid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entityid = try container.decode(String.self, forKey: .entityid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    overrideDnd = try container.decode(Bool.self, forKey: .overrideDnd)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    host = try container.decode(String.self, forKey: .host)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    port = try container.decode(Int.self, forKey: .port)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entityId = try container.decode(String.self, forKey: .entityId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    apikey = try container.decode(String.self, forKey: .apikey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    versionId = try container.decode(Int.self, forKey: .versionId)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(sender, forKey: .sender)
            
            
            
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            
            
            
            try? container.encodeIfPresent(authkey, forKey: .authkey)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
            
            
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            
            
            
            try? container.encodeIfPresent(senderid, forKey: .senderid)
            
            
            
            
            try? container.encodeIfPresent(feedid, forKey: .feedid)
            
            
            
            
            try? container.encodeIfPresent(entityid, forKey: .entityid)
            
            
            
            
            try? container.encodeIfPresent(overrideDnd, forKey: .overrideDnd)
            
            
            
            
            try? container.encodeIfPresent(host, forKey: .host)
            
            
            
            
            try? container.encodeIfPresent(port, forKey: .port)
            
            
            
            
            try? container.encodeIfPresent(entityId, forKey: .entityId)
            
            
            
            
            try? container.encodeIfPresent(apikey, forKey: .apikey)
            
            
            
            
            try? container.encodeIfPresent(versionId, forKey: .versionId)
            
            
            
            
            try? container.encodeIfPresent(senderId, forKey: .senderId)
            
            
            
            
            try? container.encodeIfPresent(apiKey, forKey: .apiKey)
            
            
        }
        
    }
}


