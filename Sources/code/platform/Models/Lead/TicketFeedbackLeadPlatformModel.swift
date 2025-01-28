

import Foundation


public extension PlatformClient.Lead {
    /*
        Model: TicketFeedback
        Used By: Lead
    */

    class TicketFeedback: Codable {
        
        
        public var id: String
        
        public var ticketId: String
        
        public var companyId: String
        
        public var response: [FeedbackResponseItem]
        
        public var category: String?
        
        public var user: [String: Any]?
        
        public var updatedAt: String?
        
        public var createdAt: String?
        
        public var v: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case ticketId = "ticket_id"
            
            case companyId = "company_id"
            
            case response = "response"
            
            case category = "category"
            
            case user = "user"
            
            case updatedAt = "updated_at"
            
            case createdAt = "created_at"
            
            case v = "__v"
            
        }

        public init(category: String? = nil, companyId: String, createdAt: String? = nil, response: [FeedbackResponseItem], ticketId: String, updatedAt: String? = nil, user: [String: Any]? = nil, id: String, v: Double? = nil) {
            
            self.id = id
            
            self.ticketId = ticketId
            
            self.companyId = companyId
            
            self.response = response
            
            self.category = category
            
            self.user = user
            
            self.updatedAt = updatedAt
            
            self.createdAt = createdAt
            
            self.v = v
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                ticketId = try container.decode(String.self, forKey: .ticketId)
                
            
            
            
                companyId = try container.decode(String.self, forKey: .companyId)
                
            
            
            
                response = try container.decode([FeedbackResponseItem].self, forKey: .response)
                
            
            
            
                do {
                    category = try container.decode(String.self, forKey: .category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    user = try container.decode([String: Any].self, forKey: .user)
                
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
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Double.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(ticketId, forKey: .ticketId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(response, forKey: .response)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Lead {
    /*
        Model: TicketFeedback
        Used By: Lead
    */

    class TicketFeedback: Codable {
        
        
        public var id: String
        
        public var ticketId: String
        
        public var companyId: String
        
        public var response: [FeedbackResponseItem]
        
        public var category: String?
        
        public var user: [String: Any]?
        
        public var updatedAt: String?
        
        public var createdAt: String?
        
        public var v: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case ticketId = "ticket_id"
            
            case companyId = "company_id"
            
            case response = "response"
            
            case category = "category"
            
            case user = "user"
            
            case updatedAt = "updated_at"
            
            case createdAt = "created_at"
            
            case v = "__v"
            
        }

        public init(category: String? = nil, companyId: String, createdAt: String? = nil, response: [FeedbackResponseItem], ticketId: String, updatedAt: String? = nil, user: [String: Any]? = nil, id: String, v: Double? = nil) {
            
            self.id = id
            
            self.ticketId = ticketId
            
            self.companyId = companyId
            
            self.response = response
            
            self.category = category
            
            self.user = user
            
            self.updatedAt = updatedAt
            
            self.createdAt = createdAt
            
            self.v = v
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                ticketId = try container.decode(String.self, forKey: .ticketId)
                
            
            
            
                companyId = try container.decode(String.self, forKey: .companyId)
                
            
            
            
                response = try container.decode([FeedbackResponseItem].self, forKey: .response)
                
            
            
            
                do {
                    category = try container.decode(String.self, forKey: .category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    user = try container.decode([String: Any].self, forKey: .user)
                
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
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Double.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(ticketId, forKey: .ticketId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(response, forKey: .response)
            
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
        }
        
    }
}


