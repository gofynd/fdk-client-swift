

import Foundation


public extension PlatformClient.Order {
    /*
        Model: BagReturnableCancelableStatus
        Used By: Order
    */

    class BagReturnableCancelableStatus: Codable {
        
        
        public var isReturnable: Bool
        
        public var isActive: Bool
        
        public var canBeCancelled: Bool
        
        public var enableTracking: Bool
        
        public var isCustomerReturnAllowed: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case isReturnable = "is_returnable"
            
            case isActive = "is_active"
            
            case canBeCancelled = "can_be_cancelled"
            
            case enableTracking = "enable_tracking"
            
            case isCustomerReturnAllowed = "is_customer_return_allowed"
            
        }

        public init(canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            
            self.isReturnable = isReturnable
            
            self.isActive = isActive
            
            self.canBeCancelled = canBeCancelled
            
            self.enableTracking = enableTracking
            
            self.isCustomerReturnAllowed = isCustomerReturnAllowed
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isReturnable = try container.decode(Bool.self, forKey: .isReturnable)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)
                
            
            
            
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)
                
            
            
            
                isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)
            
            
            
            
            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)
            
            
            
            
            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: BagReturnableCancelableStatus
        Used By: Order
    */

    class BagReturnableCancelableStatus: Codable {
        
        
        public var isReturnable: Bool
        
        public var isActive: Bool
        
        public var canBeCancelled: Bool
        
        public var enableTracking: Bool
        
        public var isCustomerReturnAllowed: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case isReturnable = "is_returnable"
            
            case isActive = "is_active"
            
            case canBeCancelled = "can_be_cancelled"
            
            case enableTracking = "enable_tracking"
            
            case isCustomerReturnAllowed = "is_customer_return_allowed"
            
        }

        public init(canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            
            self.isReturnable = isReturnable
            
            self.isActive = isActive
            
            self.canBeCancelled = canBeCancelled
            
            self.enableTracking = enableTracking
            
            self.isCustomerReturnAllowed = isCustomerReturnAllowed
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isReturnable = try container.decode(Bool.self, forKey: .isReturnable)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)
                
            
            
            
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)
                
            
            
            
                isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)
            
            
            
            
            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)
            
            
            
            
            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)
            
            
        }
        
    }
}


