

import Foundation


public extension PlatformClient.Order {
    /*
        Model: UpdateShipmentStatusRequestSchema
        Used By: Order
    */

    class UpdateShipmentStatusRequestSchema: Codable {
        
        
        public var forceTransition: Bool?
        
        public var statuses: [StatuesRequestSchema]?
        
        public var lockAfterTransition: Bool?
        
        public var unlockBeforeTransition: Bool?
        
        public var task: Bool?
        
        public var resumeTasksAfterUnlock: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case forceTransition = "force_transition"
            
            case statuses = "statuses"
            
            case lockAfterTransition = "lock_after_transition"
            
            case unlockBeforeTransition = "unlock_before_transition"
            
            case task = "task"
            
            case resumeTasksAfterUnlock = "resume_tasks_after_unlock"
            
        }

        public init(forceTransition: Bool? = nil, lockAfterTransition: Bool? = nil, resumeTasksAfterUnlock: Bool? = nil, statuses: [StatuesRequestSchema]? = nil, task: Bool? = nil, unlockBeforeTransition: Bool? = nil) {
            
            self.forceTransition = forceTransition
            
            self.statuses = statuses
            
            self.lockAfterTransition = lockAfterTransition
            
            self.unlockBeforeTransition = unlockBeforeTransition
            
            self.task = task
            
            self.resumeTasksAfterUnlock = resumeTasksAfterUnlock
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    forceTransition = try container.decode(Bool.self, forKey: .forceTransition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statuses = try container.decode([StatuesRequestSchema].self, forKey: .statuses)
                
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
                
            
            
                do {
                    task = try container.decode(Bool.self, forKey: .task)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            try? container.encodeIfPresent(forceTransition, forKey: .forceTransition)
            
            
            
            
            try? container.encodeIfPresent(statuses, forKey: .statuses)
            
            
            
            
            try? container.encodeIfPresent(lockAfterTransition, forKey: .lockAfterTransition)
            
            
            
            
            try? container.encodeIfPresent(unlockBeforeTransition, forKey: .unlockBeforeTransition)
            
            
            
            
            try? container.encodeIfPresent(task, forKey: .task)
            
            
            
            
            try? container.encodeIfPresent(resumeTasksAfterUnlock, forKey: .resumeTasksAfterUnlock)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: UpdateShipmentStatusRequestSchema
        Used By: Order
    */

    class UpdateShipmentStatusRequestSchema: Codable {
        
        
        public var forceTransition: Bool?
        
        public var statuses: [StatuesRequestSchema]?
        
        public var lockAfterTransition: Bool?
        
        public var unlockBeforeTransition: Bool?
        
        public var task: Bool?
        
        public var resumeTasksAfterUnlock: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case forceTransition = "force_transition"
            
            case statuses = "statuses"
            
            case lockAfterTransition = "lock_after_transition"
            
            case unlockBeforeTransition = "unlock_before_transition"
            
            case task = "task"
            
            case resumeTasksAfterUnlock = "resume_tasks_after_unlock"
            
        }

        public init(forceTransition: Bool? = nil, lockAfterTransition: Bool? = nil, resumeTasksAfterUnlock: Bool? = nil, statuses: [StatuesRequestSchema]? = nil, task: Bool? = nil, unlockBeforeTransition: Bool? = nil) {
            
            self.forceTransition = forceTransition
            
            self.statuses = statuses
            
            self.lockAfterTransition = lockAfterTransition
            
            self.unlockBeforeTransition = unlockBeforeTransition
            
            self.task = task
            
            self.resumeTasksAfterUnlock = resumeTasksAfterUnlock
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    forceTransition = try container.decode(Bool.self, forKey: .forceTransition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statuses = try container.decode([StatuesRequestSchema].self, forKey: .statuses)
                
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
                
            
            
                do {
                    task = try container.decode(Bool.self, forKey: .task)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            try? container.encodeIfPresent(forceTransition, forKey: .forceTransition)
            
            
            
            
            try? container.encodeIfPresent(statuses, forKey: .statuses)
            
            
            
            
            try? container.encodeIfPresent(lockAfterTransition, forKey: .lockAfterTransition)
            
            
            
            
            try? container.encodeIfPresent(unlockBeforeTransition, forKey: .unlockBeforeTransition)
            
            
            
            
            try? container.encodeIfPresent(task, forKey: .task)
            
            
            
            
            try? container.encodeIfPresent(resumeTasksAfterUnlock, forKey: .resumeTasksAfterUnlock)
            
            
        }
        
    }
}


