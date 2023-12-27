

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ShipmentLockDetails
        Used By: Order
    */

    class ShipmentLockDetails: Codable {
        
        
        public var lockStatus: Bool?
        
        public var lockMessage: String?
        
        public var actionToStatus: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case lockStatus = "lock_status"
            
            case lockMessage = "lock_message"
            
            case actionToStatus = "action_to_status"
            
        }

        public init(actionToStatus: [String: Any]? = nil, lockMessage: String? = nil, lockStatus: Bool? = nil) {
            
            self.lockStatus = lockStatus
            
            self.lockMessage = lockMessage
            
            self.actionToStatus = actionToStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    lockStatus = try container.decode(Bool.self, forKey: .lockStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockMessage = try container.decode(String.self, forKey: .lockMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    actionToStatus = try container.decode([String: Any].self, forKey: .actionToStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(lockStatus, forKey: .lockStatus)
            
            
            
            
            try? container.encode(lockMessage, forKey: .lockMessage)
            
            
            
            
            try? container.encode(actionToStatus, forKey: .actionToStatus)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ShipmentLockDetails
        Used By: Order
    */

    class ShipmentLockDetails: Codable {
        
        
        public var lockStatus: Bool?
        
        public var lockMessage: String?
        
        public var actionToStatus: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case lockStatus = "lock_status"
            
            case lockMessage = "lock_message"
            
            case actionToStatus = "action_to_status"
            
        }

        public init(actionToStatus: [String: Any]? = nil, lockMessage: String? = nil, lockStatus: Bool? = nil) {
            
            self.lockStatus = lockStatus
            
            self.lockMessage = lockMessage
            
            self.actionToStatus = actionToStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    lockStatus = try container.decode(Bool.self, forKey: .lockStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockMessage = try container.decode(String.self, forKey: .lockMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    actionToStatus = try container.decode([String: Any].self, forKey: .actionToStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(lockStatus, forKey: .lockStatus)
            
            
            
            
            try? container.encode(lockMessage, forKey: .lockMessage)
            
            
            
            
            try? container.encode(actionToStatus, forKey: .actionToStatus)
            
            
        }
        
    }
}


