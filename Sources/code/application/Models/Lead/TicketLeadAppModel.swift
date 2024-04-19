

import Foundation
public extension ApplicationClient.Lead {
    /*
        Model: Ticket
        Used By: Lead
    */
    class Ticket: Codable {
        
        public var context: TicketContext?
        
        public var createdOn: CreatedOn?
        
        public var responseId: String?
        
        public var content: TicketContent?
        
        public var category: TicketCategory
        
        public var subCategory: String?
        
        public var source: TicketSourceEnum
        
        public var status: Status
        
        public var priority: Priority
        
        public var createdBy: [String: Any]?
        
        public var assignedTo: [String: Any]?
        
        public var tags: [String]?
        
        public var customJson: [String: Any]?
        
        public var isFeedbackPending: Bool?
        
        public var integration: [String: Any]?
        
        public var id: String
        
        public var updatedAt: String?
        
        public var createdAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case context = "context"
            
            case createdOn = "created_on"
            
            case responseId = "response_id"
            
            case content = "content"
            
            case category = "category"
            
            case subCategory = "sub_category"
            
            case source = "source"
            
            case status = "status"
            
            case priority = "priority"
            
            case createdBy = "created_by"
            
            case assignedTo = "assigned_to"
            
            case tags = "tags"
            
            case customJson = "_custom_json"
            
            case isFeedbackPending = "is_feedback_pending"
            
            case integration = "integration"
            
            case id = "_id"
            
            case updatedAt = "updated_at"
            
            case createdAt = "created_at"
            
        }

        public init(assignedTo: [String: Any]? = nil, category: TicketCategory, content: TicketContent? = nil, context: TicketContext? = nil, createdAt: String? = nil, createdBy: [String: Any]? = nil, createdOn: CreatedOn? = nil, integration: [String: Any]? = nil, isFeedbackPending: Bool? = nil, priority: Priority, responseId: String? = nil, source: TicketSourceEnum, status: Status, subCategory: String? = nil, tags: [String]? = nil, updatedAt: String? = nil, customJson: [String: Any]? = nil, id: String) {
            
            self.context = context
            
            self.createdOn = createdOn
            
            self.responseId = responseId
            
            self.content = content
            
            self.category = category
            
            self.subCategory = subCategory
            
            self.source = source
            
            self.status = status
            
            self.priority = priority
            
            self.createdBy = createdBy
            
            self.assignedTo = assignedTo
            
            self.tags = tags
            
            self.customJson = customJson
            
            self.isFeedbackPending = isFeedbackPending
            
            self.integration = integration
            
            self.id = id
            
            self.updatedAt = updatedAt
            
            self.createdAt = createdAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                context = try container.decode(TicketContext.self, forKey: .context)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                createdOn = try container.decode(CreatedOn.self, forKey: .createdOn)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                responseId = try container.decode(String.self, forKey: .responseId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                content = try container.decode(TicketContent.self, forKey: .content)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            category = try container.decode(TicketCategory.self, forKey: .category)
            
            
            
            
            do {
                subCategory = try container.decode(String.self, forKey: .subCategory)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            source = try container.decode(TicketSourceEnum.self, forKey: .source)
            
            
            
            
            status = try container.decode(Status.self, forKey: .status)
            
            
            
            
            priority = try container.decode(Priority.self, forKey: .priority)
            
            
            
            
            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                assignedTo = try container.decode([String: Any].self, forKey: .assignedTo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                tags = try container.decode([String].self, forKey: .tags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isFeedbackPending = try container.decode(Bool.self, forKey: .isFeedbackPending)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                integration = try container.decode([String: Any].self, forKey: .integration)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            id = try container.decode(String.self, forKey: .id)
            
            
            
            
            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(context, forKey: .context)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(responseId, forKey: .responseId)
            
            
            
            
            try? container.encodeIfPresent(content, forKey: .content)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(subCategory, forKey: .subCategory)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(assignedTo, forKey: .assignedTo)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(isFeedbackPending, forKey: .isFeedbackPending)
            
            
            
            
            try? container.encodeIfPresent(integration, forKey: .integration)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
        }
        
    }
}
