

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ShipmentDetails
        Used By: Order
    */

    class ShipmentDetails: Codable {
        
        
        public var dpId: String?
        
        public var dpOptions: [String: Any]?
        
        public var lockStatus: Bool?
        
        public var actionToStatus: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case dpId = "dp_id"
            
            case dpOptions = "dp_options"
            
            case lockStatus = "lock_status"
            
            case actionToStatus = "action_to_status"
            
        }

        public init(actionToStatus: [String: Any]? = nil, dpId: String? = nil, dpOptions: [String: Any]? = nil, lockStatus: Bool? = nil) {
            
            self.dpId = dpId
            
            self.dpOptions = dpOptions
            
            self.lockStatus = lockStatus
            
            self.actionToStatus = actionToStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    dpId = try container.decode(String.self, forKey: .dpId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpOptions = try container.decode([String: Any].self, forKey: .dpOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockStatus = try container.decode(Bool.self, forKey: .lockStatus)
                
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
            
            
            
            try? container.encodeIfPresent(dpId, forKey: .dpId)
            
            
            
            
            try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)
            
            
            
            
            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)
            
            
            
            
            try? container.encodeIfPresent(actionToStatus, forKey: .actionToStatus)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ShipmentDetails
        Used By: Order
    */

    class ShipmentDetails: Codable {
        
        
        public var dpId: String?
        
        public var dpOptions: [String: Any]?
        
        public var lockStatus: Bool?
        
        public var actionToStatus: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case dpId = "dp_id"
            
            case dpOptions = "dp_options"
            
            case lockStatus = "lock_status"
            
            case actionToStatus = "action_to_status"
            
        }

        public init(actionToStatus: [String: Any]? = nil, dpId: String? = nil, dpOptions: [String: Any]? = nil, lockStatus: Bool? = nil) {
            
            self.dpId = dpId
            
            self.dpOptions = dpOptions
            
            self.lockStatus = lockStatus
            
            self.actionToStatus = actionToStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    dpId = try container.decode(String.self, forKey: .dpId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpOptions = try container.decode([String: Any].self, forKey: .dpOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockStatus = try container.decode(Bool.self, forKey: .lockStatus)
                
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
            
            
            
            try? container.encodeIfPresent(dpId, forKey: .dpId)
            
            
            
            
            try? container.encodeIfPresent(dpOptions, forKey: .dpOptions)
            
            
            
            
            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)
            
            
            
            
            try? container.encodeIfPresent(actionToStatus, forKey: .actionToStatus)
            
            
        }
        
    }
}


