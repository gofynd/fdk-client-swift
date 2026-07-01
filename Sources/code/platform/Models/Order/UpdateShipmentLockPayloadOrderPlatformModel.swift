

import Foundation


public extension PlatformClient.Order {
    /*
        Model: UpdateShipmentLockPayload
        Used By: Order
    */

    class UpdateShipmentLockPayload: Codable {
        
        
        public var entityType: String
        
        public var action: String
        
        public var actionType: String
        
        public var entities: [LockManagerEntities]
        
        public var resumeTasksAfterUnlock: Bool?
        
        public var lockAfterTransition: Bool?
        
        public var unlockBeforeTransition: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case entityType = "entity_type"
            
            case action = "action"
            
            case actionType = "action_type"
            
            case entities = "entities"
            
            case resumeTasksAfterUnlock = "resume_tasks_after_unlock"
            
            case lockAfterTransition = "lock_after_transition"
            
            case unlockBeforeTransition = "unlock_before_transition"
            
        }

        public init(action: String, actionType: String, entities: [LockManagerEntities], entityType: String, lockAfterTransition: Bool? = nil, resumeTasksAfterUnlock: Bool? = nil, unlockBeforeTransition: Bool? = nil) {
            
            self.entityType = entityType
            
            self.action = action
            
            self.actionType = actionType
            
            self.entities = entities
            
            self.resumeTasksAfterUnlock = resumeTasksAfterUnlock
            
            self.lockAfterTransition = lockAfterTransition
            
            self.unlockBeforeTransition = unlockBeforeTransition
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                entityType = try container.decode(String.self, forKey: .entityType)
                
            
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                actionType = try container.decode(String.self, forKey: .actionType)
                
            
            
            
                entities = try container.decode([LockManagerEntities].self, forKey: .entities)
                
            
            
            
                do {
                    resumeTasksAfterUnlock = try container.decode(Bool.self, forKey: .resumeTasksAfterUnlock)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockAfterTransition = try container.decode(Bool.self, forKey: .lockAfterTransition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unlockBeforeTransition = try container.decode(Bool.self, forKey: .unlockBeforeTransition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(actionType, forKey: .actionType)
            
            
            
            
            try? container.encodeIfPresent(entities, forKey: .entities)
            
            
            
            
            try? container.encodeIfPresent(resumeTasksAfterUnlock, forKey: .resumeTasksAfterUnlock)
            
            
            
            
            try? container.encodeIfPresent(lockAfterTransition, forKey: .lockAfterTransition)
            
            
            
            
            try? container.encodeIfPresent(unlockBeforeTransition, forKey: .unlockBeforeTransition)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: UpdateShipmentLockPayload
        Used By: Order
    */

    class UpdateShipmentLockPayload: Codable {
        
        
        public var entityType: String
        
        public var action: String
        
        public var actionType: String
        
        public var entities: [LockManagerEntities]
        
        public var resumeTasksAfterUnlock: Bool?
        
        public var lockAfterTransition: Bool?
        
        public var unlockBeforeTransition: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case entityType = "entity_type"
            
            case action = "action"
            
            case actionType = "action_type"
            
            case entities = "entities"
            
            case resumeTasksAfterUnlock = "resume_tasks_after_unlock"
            
            case lockAfterTransition = "lock_after_transition"
            
            case unlockBeforeTransition = "unlock_before_transition"
            
        }

        public init(action: String, actionType: String, entities: [LockManagerEntities], entityType: String, lockAfterTransition: Bool? = nil, resumeTasksAfterUnlock: Bool? = nil, unlockBeforeTransition: Bool? = nil) {
            
            self.entityType = entityType
            
            self.action = action
            
            self.actionType = actionType
            
            self.entities = entities
            
            self.resumeTasksAfterUnlock = resumeTasksAfterUnlock
            
            self.lockAfterTransition = lockAfterTransition
            
            self.unlockBeforeTransition = unlockBeforeTransition
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                entityType = try container.decode(String.self, forKey: .entityType)
                
            
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                actionType = try container.decode(String.self, forKey: .actionType)
                
            
            
            
                entities = try container.decode([LockManagerEntities].self, forKey: .entities)
                
            
            
            
                do {
                    resumeTasksAfterUnlock = try container.decode(Bool.self, forKey: .resumeTasksAfterUnlock)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockAfterTransition = try container.decode(Bool.self, forKey: .lockAfterTransition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unlockBeforeTransition = try container.decode(Bool.self, forKey: .unlockBeforeTransition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(actionType, forKey: .actionType)
            
            
            
            
            try? container.encodeIfPresent(entities, forKey: .entities)
            
            
            
            
            try? container.encodeIfPresent(resumeTasksAfterUnlock, forKey: .resumeTasksAfterUnlock)
            
            
            
            
            try? container.encodeIfPresent(lockAfterTransition, forKey: .lockAfterTransition)
            
            
            
            
            try? container.encodeIfPresent(unlockBeforeTransition, forKey: .unlockBeforeTransition)
            
            
        }
        
    }
}


