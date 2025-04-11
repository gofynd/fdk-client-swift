

import Foundation


public extension PlatformClient.Order {
    /*
        Model: HistoryDict
        Used By: Order
    */

    class HistoryDict: Codable {
        
        
        public var userDetails: [String: Any]?
        
        public var displayMessage: String?
        
        public var bagId: Int?
        
        public var ticketUrl: String?
        
        public var l3Detail: String?
        
        public var createdat: String
        
        public var createdTs: String?
        
        public var ticketId: String?
        
        public var type: String?
        
        public var activityType: String
        
        public var l2Detail: String?
        
        public var assignedAgent: String?
        
        public var meta: HistoryMeta?
        
        public var l1Detail: String?
        
        public var message: String
        
        public var user: String
        

        public enum CodingKeys: String, CodingKey {
            
            case userDetails = "user_details"
            
            case displayMessage = "display_message"
            
            case bagId = "bag_id"
            
            case ticketUrl = "ticket_url"
            
            case l3Detail = "l3_detail"
            
            case createdat = "createdat"
            
            case createdTs = "created_ts"
            
            case ticketId = "ticket_id"
            
            case type = "type"
            
            case activityType = "activity_type"
            
            case l2Detail = "l2_detail"
            
            case assignedAgent = "assigned_agent"
            
            case meta = "meta"
            
            case l1Detail = "l1_detail"
            
            case message = "message"
            
            case user = "user"
            
        }

        public init(activityType: String, assignedAgent: String? = nil, bagId: Int? = nil, createdat: String, createdTs: String? = nil, displayMessage: String? = nil, l1Detail: String? = nil, l2Detail: String? = nil, l3Detail: String? = nil, message: String, meta: HistoryMeta? = nil, ticketId: String? = nil, ticketUrl: String? = nil, type: String? = nil, user: String, userDetails: [String: Any]? = nil) {
            
            self.userDetails = userDetails
            
            self.displayMessage = displayMessage
            
            self.bagId = bagId
            
            self.ticketUrl = ticketUrl
            
            self.l3Detail = l3Detail
            
            self.createdat = createdat
            
            self.createdTs = createdTs
            
            self.ticketId = ticketId
            
            self.type = type
            
            self.activityType = activityType
            
            self.l2Detail = l2Detail
            
            self.assignedAgent = assignedAgent
            
            self.meta = meta
            
            self.l1Detail = l1Detail
            
            self.message = message
            
            self.user = user
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    userDetails = try container.decode([String: Any].self, forKey: .userDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayMessage = try container.decode(String.self, forKey: .displayMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagId = try container.decode(Int.self, forKey: .bagId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ticketUrl = try container.decode(String.self, forKey: .ticketUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l3Detail = try container.decode(String.self, forKey: .l3Detail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                createdat = try container.decode(String.self, forKey: .createdat)
                
            
            
            
                do {
                    createdTs = try container.decode(String.self, forKey: .createdTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ticketId = try container.decode(String.self, forKey: .ticketId)
                
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
                
            
            
                activityType = try container.decode(String.self, forKey: .activityType)
                
            
            
            
                do {
                    l2Detail = try container.decode(String.self, forKey: .l2Detail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    assignedAgent = try container.decode(String.self, forKey: .assignedAgent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(HistoryMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l1Detail = try container.decode(String.self, forKey: .l1Detail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                user = try container.decode(String.self, forKey: .user)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userDetails, forKey: .userDetails)
            
            
            
            
            try? container.encodeIfPresent(displayMessage, forKey: .displayMessage)
            
            
            
            
            try? container.encodeIfPresent(bagId, forKey: .bagId)
            
            
            
            
            try? container.encodeIfPresent(ticketUrl, forKey: .ticketUrl)
            
            
            
            
            try? container.encodeIfPresent(l3Detail, forKey: .l3Detail)
            
            
            
            
            try? container.encodeIfPresent(createdat, forKey: .createdat)
            
            
            
            
            try? container.encodeIfPresent(createdTs, forKey: .createdTs)
            
            
            
            
            try? container.encodeIfPresent(ticketId, forKey: .ticketId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(activityType, forKey: .activityType)
            
            
            
            
            try? container.encodeIfPresent(l2Detail, forKey: .l2Detail)
            
            
            
            
            try? container.encodeIfPresent(assignedAgent, forKey: .assignedAgent)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(l1Detail, forKey: .l1Detail)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: HistoryDict
        Used By: Order
    */

    class HistoryDict: Codable {
        
        
        public var userDetails: [String: Any]?
        
        public var displayMessage: String?
        
        public var bagId: Int?
        
        public var ticketUrl: String?
        
        public var l3Detail: String?
        
        public var createdat: String
        
        public var createdTs: String?
        
        public var ticketId: String?
        
        public var type: String?
        
        public var activityType: String
        
        public var l2Detail: String?
        
        public var assignedAgent: String?
        
        public var meta: HistoryMeta?
        
        public var l1Detail: String?
        
        public var message: String
        
        public var user: String
        

        public enum CodingKeys: String, CodingKey {
            
            case userDetails = "user_details"
            
            case displayMessage = "display_message"
            
            case bagId = "bag_id"
            
            case ticketUrl = "ticket_url"
            
            case l3Detail = "l3_detail"
            
            case createdat = "createdat"
            
            case createdTs = "created_ts"
            
            case ticketId = "ticket_id"
            
            case type = "type"
            
            case activityType = "activity_type"
            
            case l2Detail = "l2_detail"
            
            case assignedAgent = "assigned_agent"
            
            case meta = "meta"
            
            case l1Detail = "l1_detail"
            
            case message = "message"
            
            case user = "user"
            
        }

        public init(activityType: String, assignedAgent: String? = nil, bagId: Int? = nil, createdat: String, createdTs: String? = nil, displayMessage: String? = nil, l1Detail: String? = nil, l2Detail: String? = nil, l3Detail: String? = nil, message: String, meta: HistoryMeta? = nil, ticketId: String? = nil, ticketUrl: String? = nil, type: String? = nil, user: String, userDetails: [String: Any]? = nil) {
            
            self.userDetails = userDetails
            
            self.displayMessage = displayMessage
            
            self.bagId = bagId
            
            self.ticketUrl = ticketUrl
            
            self.l3Detail = l3Detail
            
            self.createdat = createdat
            
            self.createdTs = createdTs
            
            self.ticketId = ticketId
            
            self.type = type
            
            self.activityType = activityType
            
            self.l2Detail = l2Detail
            
            self.assignedAgent = assignedAgent
            
            self.meta = meta
            
            self.l1Detail = l1Detail
            
            self.message = message
            
            self.user = user
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    userDetails = try container.decode([String: Any].self, forKey: .userDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayMessage = try container.decode(String.self, forKey: .displayMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagId = try container.decode(Int.self, forKey: .bagId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ticketUrl = try container.decode(String.self, forKey: .ticketUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l3Detail = try container.decode(String.self, forKey: .l3Detail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                createdat = try container.decode(String.self, forKey: .createdat)
                
            
            
            
                do {
                    createdTs = try container.decode(String.self, forKey: .createdTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ticketId = try container.decode(String.self, forKey: .ticketId)
                
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
                
            
            
                activityType = try container.decode(String.self, forKey: .activityType)
                
            
            
            
                do {
                    l2Detail = try container.decode(String.self, forKey: .l2Detail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    assignedAgent = try container.decode(String.self, forKey: .assignedAgent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(HistoryMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l1Detail = try container.decode(String.self, forKey: .l1Detail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                user = try container.decode(String.self, forKey: .user)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userDetails, forKey: .userDetails)
            
            
            
            
            try? container.encodeIfPresent(displayMessage, forKey: .displayMessage)
            
            
            
            
            try? container.encodeIfPresent(bagId, forKey: .bagId)
            
            
            
            
            try? container.encodeIfPresent(ticketUrl, forKey: .ticketUrl)
            
            
            
            
            try? container.encodeIfPresent(l3Detail, forKey: .l3Detail)
            
            
            
            
            try? container.encodeIfPresent(createdat, forKey: .createdat)
            
            
            
            
            try? container.encodeIfPresent(createdTs, forKey: .createdTs)
            
            
            
            
            try? container.encodeIfPresent(ticketId, forKey: .ticketId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(activityType, forKey: .activityType)
            
            
            
            
            try? container.encodeIfPresent(l2Detail, forKey: .l2Detail)
            
            
            
            
            try? container.encodeIfPresent(assignedAgent, forKey: .assignedAgent)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(l1Detail, forKey: .l1Detail)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
        }
        
    }
}


