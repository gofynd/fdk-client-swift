

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: DowngradeRes
        Used By: Billing
    */

    class DowngradeRes: Codable {
        
        
        public var id: String?
        
        public var status: String?
        
        public var subscriberId: String?
        
        public var activated: Bool?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var planId: String?
        
        public var reason: String?
        
        public var requestUserId: String?
        
        public var subscriptionId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case status = "status"
            
            case subscriberId = "subscriber_id"
            
            case activated = "activated"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case planId = "plan_id"
            
            case reason = "reason"
            
            case requestUserId = "request_user_id"
            
            case subscriptionId = "subscription_id"
            
        }

        public init(activated: Bool? = nil, createdAt: String? = nil, modifiedAt: String? = nil, planId: String? = nil, reason: String? = nil, requestUserId: String? = nil, status: String? = nil, subscriberId: String? = nil, subscriptionId: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.status = status
            
            self.subscriberId = subscriberId
            
            self.activated = activated
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.planId = planId
            
            self.reason = reason
            
            self.requestUserId = requestUserId
            
            self.subscriptionId = subscriptionId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
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
                    activated = try container.decode(Bool.self, forKey: .activated)
                
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
                    planId = try container.decode(String.self, forKey: .planId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    requestUserId = try container.decode(String.self, forKey: .requestUserId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subscriptionId = try container.decode(String.self, forKey: .subscriptionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(subscriberId, forKey: .subscriberId)
            
            
            
            
            try? container.encodeIfPresent(activated, forKey: .activated)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(planId, forKey: .planId)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            
            try? container.encodeIfPresent(requestUserId, forKey: .requestUserId)
            
            
            
            
            try? container.encodeIfPresent(subscriptionId, forKey: .subscriptionId)
            
            
        }
        
    }
}




