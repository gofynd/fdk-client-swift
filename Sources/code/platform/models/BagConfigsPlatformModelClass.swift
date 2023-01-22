

import Foundation
public extension PlatformClient {
    /*
        Model: BagConfigs
        Used By: Order
    */

    class BagConfigs: Codable {
        
        
        public var isReturnable: Bool
        
        public var isActive: Bool
        
        public var isCustomerReturnAllowed: Bool
        
        public var allowForceReturn: Bool
        
        public var canBeCancelled: Bool
        
        public var enableTracking: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case isReturnable = "is_returnable"
            
            case isActive = "is_active"
            
            case isCustomerReturnAllowed = "is_customer_return_allowed"
            
            case allowForceReturn = "allow_force_return"
            
            case canBeCancelled = "can_be_cancelled"
            
            case enableTracking = "enable_tracking"
            
        }

        public init(allowForceReturn: Bool, canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            
            self.isReturnable = isReturnable
            
            self.isActive = isActive
            
            self.isCustomerReturnAllowed = isCustomerReturnAllowed
            
            self.allowForceReturn = allowForceReturn
            
            self.canBeCancelled = canBeCancelled
            
            self.enableTracking = enableTracking
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isReturnable = try container.decode(Bool.self, forKey: .isReturnable)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)
                
            
            
            
                allowForceReturn = try container.decode(Bool.self, forKey: .allowForceReturn)
                
            
            
            
                canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)
                
            
            
            
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)
            
            
            
            
            try? container.encodeIfPresent(allowForceReturn, forKey: .allowForceReturn)
            
            
            
            
            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)
            
            
            
            
            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)
            
            
        }
        
    }
}
