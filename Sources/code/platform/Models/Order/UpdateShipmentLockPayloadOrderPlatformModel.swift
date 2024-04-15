

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
        
        public var entities: [Entities]
        
        public var resumeTasksAfterUnlock: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case entityType = "entity_type"
            
            case action = "action"
            
            case actionType = "action_type"
            
            case entities = "entities"
            
            case resumeTasksAfterUnlock = "resume_tasks_after_unlock"
            
        }

        public init(action: String, actionType: String, entities: [Entities], entityType: String, resumeTasksAfterUnlock: Bool? = nil) {
            
            self.entityType = entityType
            
            self.action = action
            
            self.actionType = actionType
            
            self.entities = entities
            
            self.resumeTasksAfterUnlock = resumeTasksAfterUnlock
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                entityType = try container.decode(String.self, forKey: .entityType)
                
            
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                actionType = try container.decode(String.self, forKey: .actionType)
                
            
            
            
                entities = try container.decode([Entities].self, forKey: .entities)
                
            
            
            
                do {
                    resumeTasksAfterUnlock = try container.decode(Bool.self, forKey: .resumeTasksAfterUnlock)
                
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
        
        public var entities: [Entities]
        
        public var resumeTasksAfterUnlock: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case entityType = "entity_type"
            
            case action = "action"
            
            case actionType = "action_type"
            
            case entities = "entities"
            
            case resumeTasksAfterUnlock = "resume_tasks_after_unlock"
            
        }

        public init(action: String, actionType: String, entities: [Entities], entityType: String, resumeTasksAfterUnlock: Bool? = nil) {
            
            self.entityType = entityType
            
            self.action = action
            
            self.actionType = actionType
            
            self.entities = entities
            
            self.resumeTasksAfterUnlock = resumeTasksAfterUnlock
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                entityType = try container.decode(String.self, forKey: .entityType)
                
            
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
            
                actionType = try container.decode(String.self, forKey: .actionType)
                
            
            
            
                entities = try container.decode([Entities].self, forKey: .entities)
                
            
            
            
                do {
                    resumeTasksAfterUnlock = try container.decode(Bool.self, forKey: .resumeTasksAfterUnlock)
                
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
            
            
        }
        
    }
}


