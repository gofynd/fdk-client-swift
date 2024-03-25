

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RuleListItem
        Used By: Order
    */

    class RuleListItem: Codable {
        
        
        public var id: String
        
        public var entityType: String
        
        public var value: String
        
        public var channel: String
        
        public var actions: RuleAction
        
        public var qcEnabled: Bool
        
        public var isDeleted: Bool
        
        public var conditions: Condition
        
        public var meta: Meta
        
        public var ruleType: String
        
        public var isActive: Bool
        
        public var name: String
        
        public var description: String
        
        public var flowType: String
        
        public var position: Int
        
        public var success: Bool
        
        public var error: RuleError
        

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
            
            case name = "name"
            
            case description = "description"
            
            case flowType = "flow_type"
            
            case position = "position"
            
            case success = "success"
            
            case error = "error"
            
        }

        public init(actions: RuleAction, channel: String, conditions: Condition, description: String, entityType: String, error: RuleError, flowType: String, id: String, isActive: Bool, isDeleted: Bool, meta: Meta, name: String, position: Int, qcEnabled: Bool, ruleType: String, success: Bool, value: String) {
            
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
            
            self.name = name
            
            self.description = description
            
            self.flowType = flowType
            
            self.position = position
            
            self.success = success
            
            self.error = error
            
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
                
            
            
            
                conditions = try container.decode(Condition.self, forKey: .conditions)
                
            
            
            
                meta = try container.decode(Meta.self, forKey: .meta)
                
            
            
            
                ruleType = try container.decode(String.self, forKey: .ruleType)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                flowType = try container.decode(String.self, forKey: .flowType)
                
            
            
            
                position = try container.decode(Int.self, forKey: .position)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                error = try container.decode(RuleError.self, forKey: .error)
                
            
            
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
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(flowType, forKey: .flowType)
            
            
            
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RuleListItem
        Used By: Order
    */

    class RuleListItem: Codable {
        
        
        public var id: String
        
        public var entityType: String
        
        public var value: String
        
        public var channel: String
        
        public var actions: RuleAction
        
        public var qcEnabled: Bool
        
        public var isDeleted: Bool
        
        public var conditions: Condition
        
        public var meta: Meta
        
        public var ruleType: String
        
        public var isActive: Bool
        
        public var name: String
        
        public var description: String
        
        public var flowType: String
        
        public var position: Int
        
        public var success: Bool
        
        public var error: RuleError
        

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
            
            case name = "name"
            
            case description = "description"
            
            case flowType = "flow_type"
            
            case position = "position"
            
            case success = "success"
            
            case error = "error"
            
        }

        public init(actions: RuleAction, channel: String, conditions: Condition, description: String, entityType: String, error: RuleError, flowType: String, id: String, isActive: Bool, isDeleted: Bool, meta: Meta, name: String, position: Int, qcEnabled: Bool, ruleType: String, success: Bool, value: String) {
            
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
            
            self.name = name
            
            self.description = description
            
            self.flowType = flowType
            
            self.position = position
            
            self.success = success
            
            self.error = error
            
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
                
            
            
            
                conditions = try container.decode(Condition.self, forKey: .conditions)
                
            
            
            
                meta = try container.decode(Meta.self, forKey: .meta)
                
            
            
            
                ruleType = try container.decode(String.self, forKey: .ruleType)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                flowType = try container.decode(String.self, forKey: .flowType)
                
            
            
            
                position = try container.decode(Int.self, forKey: .position)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                error = try container.decode(RuleError.self, forKey: .error)
                
            
            
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
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(flowType, forKey: .flowType)
            
            
            
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}


