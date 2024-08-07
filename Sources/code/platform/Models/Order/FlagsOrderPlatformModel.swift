

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Flags
        Used By: Order
    */

    class Flags: Codable {
        
        
        public var allowPartialTransition: [FlagData]?
        
        public var canBreakEntity: [FlagData]?
        
        public var allowedBagUpdates: [FlagData]?
        
        public var allowedBagStatusUpdates: [FlagData]?
        
        public var allowedEntityUpdates: [FlagData]?
        
        public var allowedEntityStatusUpdates: [FlagData]?
        
        public var statusUpdateType: [FlagData]?
        
        public var isBagStatusReasonAllowed: [FlagData]?
        
        public var isEntityStatusReasonAllowed: [FlagData]?
        
        public var transitionStrategy: [FlagData]?
        

        public enum CodingKeys: String, CodingKey {
            
            case allowPartialTransition = "allow_partial_transition"
            
            case canBreakEntity = "can_break_entity"
            
            case allowedBagUpdates = "allowed_bag_updates"
            
            case allowedBagStatusUpdates = "allowed_bag_status_updates"
            
            case allowedEntityUpdates = "allowed_entity_updates"
            
            case allowedEntityStatusUpdates = "allowed_entity_status_updates"
            
            case statusUpdateType = "status_update_type"
            
            case isBagStatusReasonAllowed = "is_bag_status_reason_allowed"
            
            case isEntityStatusReasonAllowed = "is_entity_status_reason_allowed"
            
            case transitionStrategy = "transition_strategy"
            
        }

        public init(allowedBagStatusUpdates: [FlagData]? = nil, allowedBagUpdates: [FlagData]? = nil, allowedEntityStatusUpdates: [FlagData]? = nil, allowedEntityUpdates: [FlagData]? = nil, allowPartialTransition: [FlagData]? = nil, canBreakEntity: [FlagData]? = nil, isBagStatusReasonAllowed: [FlagData]? = nil, isEntityStatusReasonAllowed: [FlagData]? = nil, statusUpdateType: [FlagData]? = nil, transitionStrategy: [FlagData]? = nil) {
            
            self.allowPartialTransition = allowPartialTransition
            
            self.canBreakEntity = canBreakEntity
            
            self.allowedBagUpdates = allowedBagUpdates
            
            self.allowedBagStatusUpdates = allowedBagStatusUpdates
            
            self.allowedEntityUpdates = allowedEntityUpdates
            
            self.allowedEntityStatusUpdates = allowedEntityStatusUpdates
            
            self.statusUpdateType = statusUpdateType
            
            self.isBagStatusReasonAllowed = isBagStatusReasonAllowed
            
            self.isEntityStatusReasonAllowed = isEntityStatusReasonAllowed
            
            self.transitionStrategy = transitionStrategy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    allowPartialTransition = try container.decode([FlagData].self, forKey: .allowPartialTransition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canBreakEntity = try container.decode([FlagData].self, forKey: .canBreakEntity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowedBagUpdates = try container.decode([FlagData].self, forKey: .allowedBagUpdates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowedBagStatusUpdates = try container.decode([FlagData].self, forKey: .allowedBagStatusUpdates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowedEntityUpdates = try container.decode([FlagData].self, forKey: .allowedEntityUpdates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowedEntityStatusUpdates = try container.decode([FlagData].self, forKey: .allowedEntityStatusUpdates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statusUpdateType = try container.decode([FlagData].self, forKey: .statusUpdateType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isBagStatusReasonAllowed = try container.decode([FlagData].self, forKey: .isBagStatusReasonAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isEntityStatusReasonAllowed = try container.decode([FlagData].self, forKey: .isEntityStatusReasonAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transitionStrategy = try container.decode([FlagData].self, forKey: .transitionStrategy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(allowPartialTransition, forKey: .allowPartialTransition)
            
            
            
            
            try? container.encodeIfPresent(canBreakEntity, forKey: .canBreakEntity)
            
            
            
            
            try? container.encodeIfPresent(allowedBagUpdates, forKey: .allowedBagUpdates)
            
            
            
            
            try? container.encodeIfPresent(allowedBagStatusUpdates, forKey: .allowedBagStatusUpdates)
            
            
            
            
            try? container.encodeIfPresent(allowedEntityUpdates, forKey: .allowedEntityUpdates)
            
            
            
            
            try? container.encodeIfPresent(allowedEntityStatusUpdates, forKey: .allowedEntityStatusUpdates)
            
            
            
            
            try? container.encodeIfPresent(statusUpdateType, forKey: .statusUpdateType)
            
            
            
            
            try? container.encodeIfPresent(isBagStatusReasonAllowed, forKey: .isBagStatusReasonAllowed)
            
            
            
            
            try? container.encodeIfPresent(isEntityStatusReasonAllowed, forKey: .isEntityStatusReasonAllowed)
            
            
            
            
            try? container.encodeIfPresent(transitionStrategy, forKey: .transitionStrategy)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Flags
        Used By: Order
    */

    class Flags: Codable {
        
        
        public var allowPartialTransition: [FlagData]?
        
        public var canBreakEntity: [FlagData]?
        
        public var allowedBagUpdates: [FlagData]?
        
        public var allowedBagStatusUpdates: [FlagData]?
        
        public var allowedEntityUpdates: [FlagData]?
        
        public var allowedEntityStatusUpdates: [FlagData]?
        
        public var statusUpdateType: [FlagData]?
        
        public var isBagStatusReasonAllowed: [FlagData]?
        
        public var isEntityStatusReasonAllowed: [FlagData]?
        
        public var transitionStrategy: [FlagData]?
        

        public enum CodingKeys: String, CodingKey {
            
            case allowPartialTransition = "allow_partial_transition"
            
            case canBreakEntity = "can_break_entity"
            
            case allowedBagUpdates = "allowed_bag_updates"
            
            case allowedBagStatusUpdates = "allowed_bag_status_updates"
            
            case allowedEntityUpdates = "allowed_entity_updates"
            
            case allowedEntityStatusUpdates = "allowed_entity_status_updates"
            
            case statusUpdateType = "status_update_type"
            
            case isBagStatusReasonAllowed = "is_bag_status_reason_allowed"
            
            case isEntityStatusReasonAllowed = "is_entity_status_reason_allowed"
            
            case transitionStrategy = "transition_strategy"
            
        }

        public init(allowedBagStatusUpdates: [FlagData]? = nil, allowedBagUpdates: [FlagData]? = nil, allowedEntityStatusUpdates: [FlagData]? = nil, allowedEntityUpdates: [FlagData]? = nil, allowPartialTransition: [FlagData]? = nil, canBreakEntity: [FlagData]? = nil, isBagStatusReasonAllowed: [FlagData]? = nil, isEntityStatusReasonAllowed: [FlagData]? = nil, statusUpdateType: [FlagData]? = nil, transitionStrategy: [FlagData]? = nil) {
            
            self.allowPartialTransition = allowPartialTransition
            
            self.canBreakEntity = canBreakEntity
            
            self.allowedBagUpdates = allowedBagUpdates
            
            self.allowedBagStatusUpdates = allowedBagStatusUpdates
            
            self.allowedEntityUpdates = allowedEntityUpdates
            
            self.allowedEntityStatusUpdates = allowedEntityStatusUpdates
            
            self.statusUpdateType = statusUpdateType
            
            self.isBagStatusReasonAllowed = isBagStatusReasonAllowed
            
            self.isEntityStatusReasonAllowed = isEntityStatusReasonAllowed
            
            self.transitionStrategy = transitionStrategy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    allowPartialTransition = try container.decode([FlagData].self, forKey: .allowPartialTransition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canBreakEntity = try container.decode([FlagData].self, forKey: .canBreakEntity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowedBagUpdates = try container.decode([FlagData].self, forKey: .allowedBagUpdates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowedBagStatusUpdates = try container.decode([FlagData].self, forKey: .allowedBagStatusUpdates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowedEntityUpdates = try container.decode([FlagData].self, forKey: .allowedEntityUpdates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowedEntityStatusUpdates = try container.decode([FlagData].self, forKey: .allowedEntityStatusUpdates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statusUpdateType = try container.decode([FlagData].self, forKey: .statusUpdateType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isBagStatusReasonAllowed = try container.decode([FlagData].self, forKey: .isBagStatusReasonAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isEntityStatusReasonAllowed = try container.decode([FlagData].self, forKey: .isEntityStatusReasonAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transitionStrategy = try container.decode([FlagData].self, forKey: .transitionStrategy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(allowPartialTransition, forKey: .allowPartialTransition)
            
            
            
            
            try? container.encodeIfPresent(canBreakEntity, forKey: .canBreakEntity)
            
            
            
            
            try? container.encodeIfPresent(allowedBagUpdates, forKey: .allowedBagUpdates)
            
            
            
            
            try? container.encodeIfPresent(allowedBagStatusUpdates, forKey: .allowedBagStatusUpdates)
            
            
            
            
            try? container.encodeIfPresent(allowedEntityUpdates, forKey: .allowedEntityUpdates)
            
            
            
            
            try? container.encodeIfPresent(allowedEntityStatusUpdates, forKey: .allowedEntityStatusUpdates)
            
            
            
            
            try? container.encodeIfPresent(statusUpdateType, forKey: .statusUpdateType)
            
            
            
            
            try? container.encodeIfPresent(isBagStatusReasonAllowed, forKey: .isBagStatusReasonAllowed)
            
            
            
            
            try? container.encodeIfPresent(isEntityStatusReasonAllowed, forKey: .isEntityStatusReasonAllowed)
            
            
            
            
            try? container.encodeIfPresent(transitionStrategy, forKey: .transitionStrategy)
            
            
        }
        
    }
}


