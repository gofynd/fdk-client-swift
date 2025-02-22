

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: UpdateShipmentStatusRequestSchema
        Used By: Order
    */
    class UpdateShipmentStatusRequestSchema: Codable {
        
        public var statuses: [StatuesRequestSchema]?
        
        public var task: Bool?
        
        public var lockAfterTransition: Bool?
        
        public var forceTransition: Bool?
        
        public var unlockBeforeTransition: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case statuses = "statuses"
            
            case task = "task"
            
            case lockAfterTransition = "lock_after_transition"
            
            case forceTransition = "force_transition"
            
            case unlockBeforeTransition = "unlock_before_transition"
            
        }

        public init(forceTransition: Bool? = nil, lockAfterTransition: Bool? = nil, statuses: [StatuesRequestSchema]? = nil, task: Bool? = nil, unlockBeforeTransition: Bool? = nil) {
            
            self.statuses = statuses
            
            self.task = task
            
            self.lockAfterTransition = lockAfterTransition
            
            self.forceTransition = forceTransition
            
            self.unlockBeforeTransition = unlockBeforeTransition
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                statuses = try container.decode([StatuesRequestSchema].self, forKey: .statuses)
            
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
                lockAfterTransition = try container.decode(Bool.self, forKey: .lockAfterTransition)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                forceTransition = try container.decode(Bool.self, forKey: .forceTransition)
            
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
            
            
            try? container.encodeIfPresent(statuses, forKey: .statuses)
            
            
            
            try? container.encodeIfPresent(task, forKey: .task)
            
            
            
            try? container.encodeIfPresent(lockAfterTransition, forKey: .lockAfterTransition)
            
            
            
            try? container.encodeIfPresent(forceTransition, forKey: .forceTransition)
            
            
            
            try? container.encodeIfPresent(unlockBeforeTransition, forKey: .unlockBeforeTransition)
            
            
        }
        
    }
}
