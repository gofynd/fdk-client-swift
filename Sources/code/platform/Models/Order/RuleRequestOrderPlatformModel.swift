

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RuleRequest
        Used By: Order
    */

    class RuleRequest: Codable {
        
        
        public var flowType: String
        
        public var name: String
        
        public var description: String?
        
        public var entityType: String
        
        public var value: String
        
        public var channel: String
        
        public var ruleType: String
        
        public var isDeleted: Bool
        
        public var restrictForwardServicability: Bool?
        
        public var conditions: [Condition]
        
        public var meta: RuleMeta
        
        public var qcEnabled: Bool
        
        public var isActive: Bool
        
        public var actions: RuleAction
        

        public enum CodingKeys: String, CodingKey {
            
            case flowType = "flow_type"
            
            case name = "name"
            
            case description = "description"
            
            case entityType = "entity_type"
            
            case value = "value"
            
            case channel = "channel"
            
            case ruleType = "rule_type"
            
            case isDeleted = "is_deleted"
            
            case restrictForwardServicability = "restrict_forward_servicability"
            
            case conditions = "conditions"
            
            case meta = "meta"
            
            case qcEnabled = "qc_enabled"
            
            case isActive = "is_active"
            
            case actions = "actions"
            
        }

        public init(actions: RuleAction, channel: String, conditions: [Condition], description: String? = nil, entityType: String, flowType: String, isActive: Bool, isDeleted: Bool, meta: RuleMeta, name: String, qcEnabled: Bool, restrictForwardServicability: Bool? = nil, ruleType: String, value: String) {
            
            self.flowType = flowType
            
            self.name = name
            
            self.description = description
            
            self.entityType = entityType
            
            self.value = value
            
            self.channel = channel
            
            self.ruleType = ruleType
            
            self.isDeleted = isDeleted
            
            self.restrictForwardServicability = restrictForwardServicability
            
            self.conditions = conditions
            
            self.meta = meta
            
            self.qcEnabled = qcEnabled
            
            self.isActive = isActive
            
            self.actions = actions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                flowType = try container.decode(String.self, forKey: .flowType)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                entityType = try container.decode(String.self, forKey: .entityType)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                channel = try container.decode(String.self, forKey: .channel)
                
            
            
            
                ruleType = try container.decode(String.self, forKey: .ruleType)
                
            
            
            
                isDeleted = try container.decode(Bool.self, forKey: .isDeleted)
                
            
            
            
                do {
                    restrictForwardServicability = try container.decode(Bool.self, forKey: .restrictForwardServicability)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                conditions = try container.decode([Condition].self, forKey: .conditions)
                
            
            
            
                meta = try container.decode(RuleMeta.self, forKey: .meta)
                
            
            
            
                qcEnabled = try container.decode(Bool.self, forKey: .qcEnabled)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                actions = try container.decode(RuleAction.self, forKey: .actions)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(flowType, forKey: .flowType)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(channel, forKey: .channel)
            
            
            
            
            try? container.encodeIfPresent(ruleType, forKey: .ruleType)
            
            
            
            
            try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)
            
            
            
            
            try? container.encodeIfPresent(restrictForwardServicability, forKey: .restrictForwardServicability)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(qcEnabled, forKey: .qcEnabled)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(actions, forKey: .actions)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RuleRequest
        Used By: Order
    */

    class RuleRequest: Codable {
        
        
        public var flowType: String
        
        public var name: String
        
        public var description: String?
        
        public var entityType: String
        
        public var value: String
        
        public var channel: String
        
        public var ruleType: String
        
        public var isDeleted: Bool
        
        public var restrictForwardServicability: Bool?
        
        public var conditions: [Condition]
        
        public var meta: RuleMeta
        
        public var qcEnabled: Bool
        
        public var isActive: Bool
        
        public var actions: RuleAction
        

        public enum CodingKeys: String, CodingKey {
            
            case flowType = "flow_type"
            
            case name = "name"
            
            case description = "description"
            
            case entityType = "entity_type"
            
            case value = "value"
            
            case channel = "channel"
            
            case ruleType = "rule_type"
            
            case isDeleted = "is_deleted"
            
            case restrictForwardServicability = "restrict_forward_servicability"
            
            case conditions = "conditions"
            
            case meta = "meta"
            
            case qcEnabled = "qc_enabled"
            
            case isActive = "is_active"
            
            case actions = "actions"
            
        }

        public init(actions: RuleAction, channel: String, conditions: [Condition], description: String? = nil, entityType: String, flowType: String, isActive: Bool, isDeleted: Bool, meta: RuleMeta, name: String, qcEnabled: Bool, restrictForwardServicability: Bool? = nil, ruleType: String, value: String) {
            
            self.flowType = flowType
            
            self.name = name
            
            self.description = description
            
            self.entityType = entityType
            
            self.value = value
            
            self.channel = channel
            
            self.ruleType = ruleType
            
            self.isDeleted = isDeleted
            
            self.restrictForwardServicability = restrictForwardServicability
            
            self.conditions = conditions
            
            self.meta = meta
            
            self.qcEnabled = qcEnabled
            
            self.isActive = isActive
            
            self.actions = actions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                flowType = try container.decode(String.self, forKey: .flowType)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                entityType = try container.decode(String.self, forKey: .entityType)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                channel = try container.decode(String.self, forKey: .channel)
                
            
            
            
                ruleType = try container.decode(String.self, forKey: .ruleType)
                
            
            
            
                isDeleted = try container.decode(Bool.self, forKey: .isDeleted)
                
            
            
            
                do {
                    restrictForwardServicability = try container.decode(Bool.self, forKey: .restrictForwardServicability)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                conditions = try container.decode([Condition].self, forKey: .conditions)
                
            
            
            
                meta = try container.decode(RuleMeta.self, forKey: .meta)
                
            
            
            
                qcEnabled = try container.decode(Bool.self, forKey: .qcEnabled)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                actions = try container.decode(RuleAction.self, forKey: .actions)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(flowType, forKey: .flowType)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(channel, forKey: .channel)
            
            
            
            
            try? container.encodeIfPresent(ruleType, forKey: .ruleType)
            
            
            
            
            try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)
            
            
            
            
            try? container.encodeIfPresent(restrictForwardServicability, forKey: .restrictForwardServicability)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(qcEnabled, forKey: .qcEnabled)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(actions, forKey: .actions)
            
            
        }
        
    }
}


