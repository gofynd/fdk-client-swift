

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: SubscriberConfigResponse
        Used By: Webhook
    */

    class SubscriberConfigResponse: Codable {
        
        
        public var id: Int?
        
        public var modifiedBy: String?
        
        public var name: String?
        
        public var webhookUrl: String?
        
        public var provider: String?
        
        public var association: AssociationResp?
        
        public var customHeaders: [String: Any]?
        
        public var status: SubscriberStatus?
        
        public var emailId: String?
        
        public var updatedOn: String?
        
        public var createdOn: String?
        
        public var type: String?
        
        public var authMeta: AuthMeta?
        
        public var eventId: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case modifiedBy = "modified_by"
            
            case name = "name"
            
            case webhookUrl = "webhook_url"
            
            case provider = "provider"
            
            case association = "association"
            
            case customHeaders = "custom_headers"
            
            case status = "status"
            
            case emailId = "email_id"
            
            case updatedOn = "updated_on"
            
            case createdOn = "created_on"
            
            case type = "type"
            
            case authMeta = "auth_meta"
            
            case eventId = "event_id"
            
        }

        public init(association: AssociationResp? = nil, authMeta: AuthMeta? = nil, createdOn: String? = nil, customHeaders: [String: Any]? = nil, emailId: String? = nil, eventId: [Int]? = nil, id: Int? = nil, modifiedBy: String? = nil, name: String? = nil, provider: String? = nil, status: SubscriberStatus? = nil, type: String? = nil, updatedOn: String? = nil, webhookUrl: String? = nil) {
            
            self.id = id
            
            self.modifiedBy = modifiedBy
            
            self.name = name
            
            self.webhookUrl = webhookUrl
            
            self.provider = provider
            
            self.association = association
            
            self.customHeaders = customHeaders
            
            self.status = status
            
            self.emailId = emailId
            
            self.updatedOn = updatedOn
            
            self.createdOn = createdOn
            
            self.type = type
            
            self.authMeta = authMeta
            
            self.eventId = eventId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
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
                    webhookUrl = try container.decode(String.self, forKey: .webhookUrl)
                
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
                    association = try container.decode(AssociationResp.self, forKey: .association)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customHeaders = try container.decode([String: Any].self, forKey: .customHeaders)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(SubscriberStatus.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    emailId = try container.decode(String.self, forKey: .emailId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedOn = try container.decode(String.self, forKey: .updatedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
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
                    authMeta = try container.decode(AuthMeta.self, forKey: .authMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventId = try container.decode([Int].self, forKey: .eventId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(webhookUrl, forKey: .webhookUrl)
            
            
            
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
            
            
            
            try? container.encodeIfPresent(association, forKey: .association)
            
            
            
            
            try? container.encodeIfPresent(customHeaders, forKey: .customHeaders)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(emailId, forKey: .emailId)
            
            
            
            
            try? container.encodeIfPresent(updatedOn, forKey: .updatedOn)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(authMeta, forKey: .authMeta)
            
            
            
            
            try? container.encodeIfPresent(eventId, forKey: .eventId)
            
            
        }
        
    }
}




