

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RuleItem
        Used By: Order
    */

    class RuleItem: Codable {
        
        
        public var id: String
        
        public var entityType: String
        
        public var value: String
        
        public var channel: String
        
        public var actions: RuleAction
        
        public var qcEnabled: Bool
        
        public var isDeleted: Bool
        
        public var conditions: Conditions
        
        public var meta: [String: Any]
        
        public var ruleType: String
        
        public var isActive: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case entityType = "entity_type"
            
            case value = "value"
            
            case channel = "channel"
            
            case actions = "actions"
            
            case qcEnabled = "qc_enabled"
            
            case isDeleted = "is_deleted"
            
            case conditions = "conditions"
            
            case meta = "meta"
            
            case ruleType = "rule_type"
            
            case isActive = "is_active"
            
        }

        public init(actions: RuleAction, channel: String, conditions: Conditions, entityType: String, id: String, isActive: Bool, isDeleted: Bool, meta: [String: Any], qcEnabled: Bool, ruleType: String, value: String) {
            
            self.id = id
            
            self.entityType = entityType
            
            self.value = value
            
            self.channel = channel
            
            self.actions = actions
            
            self.qcEnabled = qcEnabled
            
            self.isDeleted = isDeleted
            
            self.conditions = conditions
            
            self.meta = meta
            
            self.ruleType = ruleType
            
            self.isActive = isActive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                entityType = try container.decode(String.self, forKey: .entityType)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                channel = try container.decode(String.self, forKey: .channel)
                
            
            
            
                actions = try container.decode(RuleAction.self, forKey: .actions)
                
            
            
            
                qcEnabled = try container.decode(Bool.self, forKey: .qcEnabled)
                
            
            
            
                isDeleted = try container.decode(Bool.self, forKey: .isDeleted)
                
            
            
            
                conditions = try container.decode(Conditions.self, forKey: .conditions)
                
            
            
            
                meta = try container.decode([String: Any].self, forKey: .meta)
                
            
            
            
                ruleType = try container.decode(String.self, forKey: .ruleType)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(channel, forKey: .channel)
            
            
            
            
            try? container.encodeIfPresent(actions, forKey: .actions)
            
            
            
            
            try? container.encodeIfPresent(qcEnabled, forKey: .qcEnabled)
            
            
            
            
            try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(ruleType, forKey: .ruleType)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RuleItem
        Used By: Order
    */

    class RuleItem: Codable {
        
        
        public var id: String
        
        public var entityType: String
        
        public var value: String
        
        public var channel: String
        
        public var actions: RuleAction
        
        public var qcEnabled: Bool
        
        public var isDeleted: Bool
        
        public var conditions: Conditions
        
        public var meta: [String: Any]
        
        public var ruleType: String
        
        public var isActive: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case entityType = "entity_type"
            
            case value = "value"
            
            case channel = "channel"
            
            case actions = "actions"
            
            case qcEnabled = "qc_enabled"
            
            case isDeleted = "is_deleted"
            
            case conditions = "conditions"
            
            case meta = "meta"
            
            case ruleType = "rule_type"
            
            case isActive = "is_active"
            
        }

        public init(actions: RuleAction, channel: String, conditions: Conditions, entityType: String, id: String, isActive: Bool, isDeleted: Bool, meta: [String: Any], qcEnabled: Bool, ruleType: String, value: String) {
            
            self.id = id
            
            self.entityType = entityType
            
            self.value = value
            
            self.channel = channel
            
            self.actions = actions
            
            self.qcEnabled = qcEnabled
            
            self.isDeleted = isDeleted
            
            self.conditions = conditions
            
            self.meta = meta
            
            self.ruleType = ruleType
            
            self.isActive = isActive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                entityType = try container.decode(String.self, forKey: .entityType)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                channel = try container.decode(String.self, forKey: .channel)
                
            
            
            
                actions = try container.decode(RuleAction.self, forKey: .actions)
                
            
            
            
                qcEnabled = try container.decode(Bool.self, forKey: .qcEnabled)
                
            
            
            
                isDeleted = try container.decode(Bool.self, forKey: .isDeleted)
                
            
            
            
                conditions = try container.decode(Conditions.self, forKey: .conditions)
                
            
            
            
                meta = try container.decode([String: Any].self, forKey: .meta)
                
            
            
            
                ruleType = try container.decode(String.self, forKey: .ruleType)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(channel, forKey: .channel)
            
            
            
            
            try? container.encodeIfPresent(actions, forKey: .actions)
            
            
            
            
            try? container.encodeIfPresent(qcEnabled, forKey: .qcEnabled)
            
            
            
            
            try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(ruleType, forKey: .ruleType)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}


