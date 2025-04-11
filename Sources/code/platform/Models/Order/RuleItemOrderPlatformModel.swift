

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RuleItem
        Used By: Order
    */

    class RuleItem: Codable {
        
        
        public var id: String
        
        public var entityType: String
        
        public var value: String?
        
        public var channel: String
        
        public var actions: RuleAction
        
        public var qcEnabled: Bool
        
        public var isDeleted: Bool
        
        public var restrictForwardServiceability: Bool
        
        public var conditions: [Condition]
        
        public var meta: RuleMeta
        
        public var ruleType: String
        
        public var isActive: Bool
        
        public var name: String
        
        public var description: String
        
        public var flowType: String
        
        public var position: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case entityType = "entity_type"
            
            case value = "value"
            
            case channel = "channel"
            
            case actions = "actions"
            
            case qcEnabled = "qc_enabled"
            
            case isDeleted = "is_deleted"
            
            case restrictForwardServiceability = "restrict_forward_serviceability"
            
            case conditions = "conditions"
            
            case meta = "meta"
            
            case ruleType = "rule_type"
            
            case isActive = "is_active"
            
            case name = "name"
            
            case description = "description"
            
            case flowType = "flow_type"
            
            case position = "position"
            
        }

        public init(actions: RuleAction, channel: String, conditions: [Condition], description: String, entityType: String, flowType: String, id: String, isActive: Bool, isDeleted: Bool, meta: RuleMeta, name: String, position: Int, qcEnabled: Bool, restrictForwardServiceability: Bool, ruleType: String, value: String? = nil) {
            
            self.id = id
            
            self.entityType = entityType
            
            self.value = value
            
            self.channel = channel
            
            self.actions = actions
            
            self.qcEnabled = qcEnabled
            
            self.isDeleted = isDeleted
            
            self.restrictForwardServiceability = restrictForwardServiceability
            
            self.conditions = conditions
            
            self.meta = meta
            
            self.ruleType = ruleType
            
            self.isActive = isActive
            
            self.name = name
            
            self.description = description
            
            self.flowType = flowType
            
            self.position = position
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                entityType = try container.decode(String.self, forKey: .entityType)
                
            
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                channel = try container.decode(String.self, forKey: .channel)
                
            
            
            
                actions = try container.decode(RuleAction.self, forKey: .actions)
                
            
            
            
                qcEnabled = try container.decode(Bool.self, forKey: .qcEnabled)
                
            
            
            
                isDeleted = try container.decode(Bool.self, forKey: .isDeleted)
                
            
            
            
                restrictForwardServiceability = try container.decode(Bool.self, forKey: .restrictForwardServiceability)
                
            
            
            
                conditions = try container.decode([Condition].self, forKey: .conditions)
                
            
            
            
                meta = try container.decode(RuleMeta.self, forKey: .meta)
                
            
            
            
                ruleType = try container.decode(String.self, forKey: .ruleType)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                flowType = try container.decode(String.self, forKey: .flowType)
                
            
            
            
                position = try container.decode(Int.self, forKey: .position)
                
            
            
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
            
            
            
            
            try? container.encodeIfPresent(restrictForwardServiceability, forKey: .restrictForwardServiceability)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(ruleType, forKey: .ruleType)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(flowType, forKey: .flowType)
            
            
            
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            
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
        
        public var value: String?
        
        public var channel: String
        
        public var actions: RuleAction
        
        public var qcEnabled: Bool
        
        public var isDeleted: Bool
        
        public var restrictForwardServiceability: Bool
        
        public var conditions: [Condition]
        
        public var meta: RuleMeta
        
        public var ruleType: String
        
        public var isActive: Bool
        
        public var name: String
        
        public var description: String
        
        public var flowType: String
        
        public var position: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case entityType = "entity_type"
            
            case value = "value"
            
            case channel = "channel"
            
            case actions = "actions"
            
            case qcEnabled = "qc_enabled"
            
            case isDeleted = "is_deleted"
            
            case restrictForwardServiceability = "restrict_forward_serviceability"
            
            case conditions = "conditions"
            
            case meta = "meta"
            
            case ruleType = "rule_type"
            
            case isActive = "is_active"
            
            case name = "name"
            
            case description = "description"
            
            case flowType = "flow_type"
            
            case position = "position"
            
        }

        public init(actions: RuleAction, channel: String, conditions: [Condition], description: String, entityType: String, flowType: String, id: String, isActive: Bool, isDeleted: Bool, meta: RuleMeta, name: String, position: Int, qcEnabled: Bool, restrictForwardServiceability: Bool, ruleType: String, value: String? = nil) {
            
            self.id = id
            
            self.entityType = entityType
            
            self.value = value
            
            self.channel = channel
            
            self.actions = actions
            
            self.qcEnabled = qcEnabled
            
            self.isDeleted = isDeleted
            
            self.restrictForwardServiceability = restrictForwardServiceability
            
            self.conditions = conditions
            
            self.meta = meta
            
            self.ruleType = ruleType
            
            self.isActive = isActive
            
            self.name = name
            
            self.description = description
            
            self.flowType = flowType
            
            self.position = position
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                entityType = try container.decode(String.self, forKey: .entityType)
                
            
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                channel = try container.decode(String.self, forKey: .channel)
                
            
            
            
                actions = try container.decode(RuleAction.self, forKey: .actions)
                
            
            
            
                qcEnabled = try container.decode(Bool.self, forKey: .qcEnabled)
                
            
            
            
                isDeleted = try container.decode(Bool.self, forKey: .isDeleted)
                
            
            
            
                restrictForwardServiceability = try container.decode(Bool.self, forKey: .restrictForwardServiceability)
                
            
            
            
                conditions = try container.decode([Condition].self, forKey: .conditions)
                
            
            
            
                meta = try container.decode(RuleMeta.self, forKey: .meta)
                
            
            
            
                ruleType = try container.decode(String.self, forKey: .ruleType)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                flowType = try container.decode(String.self, forKey: .flowType)
                
            
            
            
                position = try container.decode(Int.self, forKey: .position)
                
            
            
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
            
            
            
            
            try? container.encodeIfPresent(restrictForwardServiceability, forKey: .restrictForwardServiceability)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(ruleType, forKey: .ruleType)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(flowType, forKey: .flowType)
            
            
            
            
            try? container.encodeIfPresent(position, forKey: .position)
            
            
        }
        
    }
}


