import Foundation


import Foundation
public extension PlatformClient {
    
    /*
        Model: EventConfig
        Used By: Webhook
    */

    class EventConfig: Codable {
        
        
        public var id: Int?
        
        public var eventName: String?
        
        public var eventType: String?
        
        public var eventCategory: String?
        
        public var version: String?
        
        public var displayName: String?
        
        public var description: String?
        
        public var createdOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case eventName = "event_name"
            
            case eventType = "event_type"
            
            case eventCategory = "event_category"
            
            case version = "version"
            
            case displayName = "display_name"
            
            case description = "description"
            
            case createdOn = "created_on"
            
        }

        public init(createdOn: String?, description: String?, displayName: String?, eventCategory: String?, eventName: String?, eventType: String?, id: Int?, version: String?) {
            
            self.id = id
            
            self.eventName = eventName
            
            self.eventType = eventType
            
            self.eventCategory = eventCategory
            
            self.version = version
            
            self.displayName = displayName
            
            self.description = description
            
            self.createdOn = createdOn
            
        }

        public func duplicate() -> EventConfig {
            let dict = self.dictionary!
            let copy = EventConfig(dictionary: dict)!
            return copy
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
                    eventName = try container.decode(String.self, forKey: .eventName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventType = try container.decode(String.self, forKey: .eventType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventCategory = try container.decode(String.self, forKey: .eventCategory)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(eventName, forKey: .eventName)
            
            
            
            
            try? container.encodeIfPresent(eventType, forKey: .eventType)
            
            
            
            
            try? container.encodeIfPresent(eventCategory, forKey: .eventCategory)
            
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
        }
        
    }
    
    /*
        Model: EventConfigList
        Used By: Webhook
    */

    class EventConfigList: Codable {
        
        
        public var items: [EventConfig]?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [EventConfig]?, page: Page?) {
            
            self.items = items
            
            self.page = page
            
        }

        public func duplicate() -> EventConfigList {
            let dict = self.dictionary!
            let copy = EventConfigList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([EventConfig].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
    
    /*
        Model: EventConfigResponse
        Used By: Webhook
    */

    class EventConfigResponse: Codable {
        
        
        public var eventConfigs: [EventConfig]?
        

        public enum CodingKeys: String, CodingKey {
            
            case eventConfigs = "event_configs"
            
        }

        public init(eventConfigs: [EventConfig]?) {
            
            self.eventConfigs = eventConfigs
            
        }

        public func duplicate() -> EventConfigResponse {
            let dict = self.dictionary!
            let copy = EventConfigResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    eventConfigs = try container.decode([EventConfig].self, forKey: .eventConfigs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(eventConfigs, forKey: .eventConfigs)
            
            
        }
        
    }
    
    /*
        Model: SubscriberConfigList
        Used By: Webhook
    */

    class SubscriberConfigList: Codable {
        
        
        public var items: [SubscriberResponse]?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [SubscriberResponse]?, page: Page?) {
            
            self.items = items
            
            self.page = page
            
        }

        public func duplicate() -> SubscriberConfigList {
            let dict = self.dictionary!
            let copy = SubscriberConfigList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([SubscriberResponse].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
    
    /*
        Model: EventProcessedStatus
        Used By: Webhook
    */

    class EventProcessedStatus: Codable {
        
        
        public var id: Int?
        
        public var subscriberId: String?
        
        public var attempt: Int?
        
        public var responseCode: String?
        
        public var responseMessage: String?
        
        public var createdOn: String?
        
        public var processedOn: String?
        
        public var status: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case subscriberId = "subscriber_id"
            
            case attempt = "attempt"
            
            case responseCode = "response_code"
            
            case responseMessage = "response_message"
            
            case createdOn = "created_on"
            
            case processedOn = "processed_on"
            
            case status = "status"
            
        }

        public init(attempt: Int?, createdOn: String?, id: Int?, processedOn: String?, responseCode: String?, responseMessage: String?, status: Bool?, subscriberId: String?) {
            
            self.id = id
            
            self.subscriberId = subscriberId
            
            self.attempt = attempt
            
            self.responseCode = responseCode
            
            self.responseMessage = responseMessage
            
            self.createdOn = createdOn
            
            self.processedOn = processedOn
            
            self.status = status
            
        }

        public func duplicate() -> EventProcessedStatus {
            let dict = self.dictionary!
            let copy = EventProcessedStatus(dictionary: dict)!
            return copy
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
                    subscriberId = try container.decode(String.self, forKey: .subscriberId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attempt = try container.decode(Int.self, forKey: .attempt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    responseCode = try container.decode(String.self, forKey: .responseCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    responseMessage = try container.decode(String.self, forKey: .responseMessage)
                
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
                    processedOn = try container.decode(String.self, forKey: .processedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(Bool.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(subscriberId, forKey: .subscriberId)
            
            
            
            
            try? container.encodeIfPresent(attempt, forKey: .attempt)
            
            
            
            
            try? container.encodeIfPresent(responseCode, forKey: .responseCode)
            
            
            
            
            try? container.encodeIfPresent(responseMessage, forKey: .responseMessage)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(processedOn, forKey: .processedOn)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
    
    /*
        Model: EventPayload
        Used By: Webhook
    */

    class EventPayload: Codable {
        
        
        public var id: Int?
        
        public var eventTraceId: String?
        
        public var messageId: String?
        
        public var eventName: String?
        
        public var eventType: String?
        
        public var version: String?
        
        public var status: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case eventTraceId = "event_trace_id"
            
            case messageId = "message_id"
            
            case eventName = "event_name"
            
            case eventType = "event_type"
            
            case version = "version"
            
            case status = "status"
            
        }

        public init(eventName: String?, eventTraceId: String?, eventType: String?, id: Int?, messageId: String?, status: Bool?, version: String?) {
            
            self.id = id
            
            self.eventTraceId = eventTraceId
            
            self.messageId = messageId
            
            self.eventName = eventName
            
            self.eventType = eventType
            
            self.version = version
            
            self.status = status
            
        }

        public func duplicate() -> EventPayload {
            let dict = self.dictionary!
            let copy = EventPayload(dictionary: dict)!
            return copy
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
                    eventTraceId = try container.decode(String.self, forKey: .eventTraceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    messageId = try container.decode(String.self, forKey: .messageId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventName = try container.decode(String.self, forKey: .eventName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventType = try container.decode(String.self, forKey: .eventType)
                
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
                    status = try container.decode(Bool.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(eventTraceId, forKey: .eventTraceId)
            
            
            
            
            try? container.encodeIfPresent(messageId, forKey: .messageId)
            
            
            
            
            try? container.encodeIfPresent(eventName, forKey: .eventName)
            
            
            
            
            try? container.encodeIfPresent(eventType, forKey: .eventType)
            
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
    
    /*
        Model: SubscriberConfig
        Used By: Webhook
    */

    class SubscriberConfig: Codable {
        
        
        public var id: Int?
        
        public var name: String?
        
        public var webhookUrl: String?
        
        public var association: Association?
        
        public var customHeaders: [String: Any]?
        
        public var status: SubscriberStatus?
        
        public var emailId: String?
        
        public var authMeta: AuthMeta?
        
        public var eventId: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case webhookUrl = "webhook_url"
            
            case association = "association"
            
            case customHeaders = "custom_headers"
            
            case status = "status"
            
            case emailId = "email_id"
            
            case authMeta = "auth_meta"
            
            case eventId = "event_id"
            
        }

        public init(association: Association?, authMeta: AuthMeta?, customHeaders: [String: Any]?, emailId: String?, eventId: [Int]?, id: Int?, name: String?, status: SubscriberStatus?, webhookUrl: String?) {
            
            self.id = id
            
            self.name = name
            
            self.webhookUrl = webhookUrl
            
            self.association = association
            
            self.customHeaders = customHeaders
            
            self.status = status
            
            self.emailId = emailId
            
            self.authMeta = authMeta
            
            self.eventId = eventId
            
        }

        public func duplicate() -> SubscriberConfig {
            let dict = self.dictionary!
            let copy = SubscriberConfig(dictionary: dict)!
            return copy
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
                    association = try container.decode(Association.self, forKey: .association)
                
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
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(webhookUrl, forKey: .webhookUrl)
            
            
            
            
            try? container.encodeIfPresent(association, forKey: .association)
            
            
            
            
            try? container.encodeIfPresent(customHeaders, forKey: .customHeaders)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(emailId, forKey: .emailId)
            
            
            
            
            try? container.encodeIfPresent(authMeta, forKey: .authMeta)
            
            
            
            
            try? container.encodeIfPresent(eventId, forKey: .eventId)
            
            
        }
        
    }
    
    /*
        Model: SubscriberResponse
        Used By: Webhook
    */

    class SubscriberResponse: Codable {
        
        
        public var id: Int?
        
        public var name: String?
        
        public var webhookUrl: String?
        
        public var association: Association?
        
        public var customHeaders: [String: Any]?
        
        public var emailId: String?
        
        public var status: SubscriberStatus?
        
        public var authMeta: AuthMeta?
        
        public var createdOn: String?
        
        public var updatedOn: String?
        
        public var eventConfigs: [EventConfig]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case webhookUrl = "webhook_url"
            
            case association = "association"
            
            case customHeaders = "custom_headers"
            
            case emailId = "email_id"
            
            case status = "status"
            
            case authMeta = "auth_meta"
            
            case createdOn = "created_on"
            
            case updatedOn = "updated_on"
            
            case eventConfigs = "event_configs"
            
        }

        public init(association: Association?, authMeta: AuthMeta?, createdOn: String?, customHeaders: [String: Any]?, emailId: String?, eventConfigs: [EventConfig]?, id: Int?, name: String?, status: SubscriberStatus?, updatedOn: String?, webhookUrl: String?) {
            
            self.id = id
            
            self.name = name
            
            self.webhookUrl = webhookUrl
            
            self.association = association
            
            self.customHeaders = customHeaders
            
            self.emailId = emailId
            
            self.status = status
            
            self.authMeta = authMeta
            
            self.createdOn = createdOn
            
            self.updatedOn = updatedOn
            
            self.eventConfigs = eventConfigs
            
        }

        public func duplicate() -> SubscriberResponse {
            let dict = self.dictionary!
            let copy = SubscriberResponse(dictionary: dict)!
            return copy
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
                    association = try container.decode(Association.self, forKey: .association)
                
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
                    emailId = try container.decode(String.self, forKey: .emailId)
                
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
                    authMeta = try container.decode(AuthMeta.self, forKey: .authMeta)
                
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
                    updatedOn = try container.decode(String.self, forKey: .updatedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventConfigs = try container.decode([EventConfig].self, forKey: .eventConfigs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(webhookUrl, forKey: .webhookUrl)
            
            
            
            
            try? container.encodeIfPresent(association, forKey: .association)
            
            
            
            
            try? container.encodeIfPresent(customHeaders, forKey: .customHeaders)
            
            
            
            
            try? container.encodeIfPresent(emailId, forKey: .emailId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(authMeta, forKey: .authMeta)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(updatedOn, forKey: .updatedOn)
            
            
            
            
            try? container.encodeIfPresent(eventConfigs, forKey: .eventConfigs)
            
            
        }
        
    }
    
    /*
        Model: SubscriberEvent
        Used By: Webhook
    */

    class SubscriberEvent: Codable {
        
        
        public var id: Int?
        
        public var subscriberId: Int?
        
        public var eventId: Int?
        
        public var createdDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case subscriberId = "subscriber_id"
            
            case eventId = "event_id"
            
            case createdDate = "created_date"
            
        }

        public init(createdDate: String?, eventId: Int?, id: Int?, subscriberId: Int?) {
            
            self.id = id
            
            self.subscriberId = subscriberId
            
            self.eventId = eventId
            
            self.createdDate = createdDate
            
        }

        public func duplicate() -> SubscriberEvent {
            let dict = self.dictionary!
            let copy = SubscriberEvent(dictionary: dict)!
            return copy
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
                    subscriberId = try container.decode(Int.self, forKey: .subscriberId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventId = try container.decode(Int.self, forKey: .eventId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdDate = try container.decode(String.self, forKey: .createdDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(subscriberId, forKey: .subscriberId)
            
            
            
            
            try? container.encodeIfPresent(eventId, forKey: .eventId)
            
            
            
            
            try? container.encodeIfPresent(createdDate, forKey: .createdDate)
            
            
        }
        
    }
    
    /*
        Model: AuthMeta
        Used By: Webhook
    */

    class AuthMeta: Codable {
        
        
        public var type: String?
        
        public var secret: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case secret = "secret"
            
        }

        public init(secret: String?, type: String?) {
            
            self.type = type
            
            self.secret = secret
            
        }

        public func duplicate() -> AuthMeta {
            let dict = self.dictionary!
            let copy = AuthMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(secret, forKey: .secret)
            
            
        }
        
    }
    
    /*
        Model: Association
        Used By: Webhook
    */

    class Association: Codable {
        
        
        public var companyId: Int?
        
        public var applicationId: [String]?
        
        public var extensionId: String?
        
        public var criteria: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case extensionId = "extension_id"
            
            case criteria = "criteria"
            
        }

        public init(applicationId: [String]?, companyId: Int?, criteria: String?, extensionId: String?) {
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.extensionId = extensionId
            
            self.criteria = criteria
            
        }

        public func duplicate() -> Association {
            let dict = self.dictionary!
            let copy = Association(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode([String].self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extensionId = try container.decode(String.self, forKey: .extensionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    criteria = try container.decode(String.self, forKey: .criteria)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(criteria, forKey: .criteria)
            
            
        }
        
    }
    
    /*
        Model: EventConfigBase
        Used By: Webhook
    */

    class EventConfigBase: Codable {
        
        
        public var eventName: String?
        
        public var eventType: String?
        
        public var eventCategory: String?
        
        public var version: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case eventName = "event_name"
            
            case eventType = "event_type"
            
            case eventCategory = "event_category"
            
            case version = "version"
            
        }

        public init(eventCategory: String?, eventName: String?, eventType: String?, version: String?) {
            
            self.eventName = eventName
            
            self.eventType = eventType
            
            self.eventCategory = eventCategory
            
            self.version = version
            
        }

        public func duplicate() -> EventConfigBase {
            let dict = self.dictionary!
            let copy = EventConfigBase(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    eventName = try container.decode(String.self, forKey: .eventName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventType = try container.decode(String.self, forKey: .eventType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    eventCategory = try container.decode(String.self, forKey: .eventCategory)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(eventName, forKey: .eventName)
            
            
            
            
            try? container.encodeIfPresent(eventType, forKey: .eventType)
            
            
            
            
            try? container.encodeIfPresent(eventCategory, forKey: .eventCategory)
            
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
        }
        
    }
    
}
