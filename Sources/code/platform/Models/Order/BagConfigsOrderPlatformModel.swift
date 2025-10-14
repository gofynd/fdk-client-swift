

import Foundation


public extension PlatformClient.Order {
    /*
        Model: BagConfigs
        Used By: Order
    */

    class BagConfigs: Codable {
        
        
        public var isReturnable: Bool
        
        public var allowForceReturn: Bool
        
        public var isActive: Bool
        
        public var canBeCancelled: Bool
        
        public var enableTracking: Bool
        
        public var isCustomerReturnAllowed: Bool
        
        public var isBundleItem: Bool?
        
        public var bundleDetails: BundleDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case isReturnable = "is_returnable"
            
            case allowForceReturn = "allow_force_return"
            
            case isActive = "is_active"
            
            case canBeCancelled = "can_be_cancelled"
            
            case enableTracking = "enable_tracking"
            
            case isCustomerReturnAllowed = "is_customer_return_allowed"
            
            case isBundleItem = "is_bundle_item"
            
            case bundleDetails = "bundle_details"
            
        }

        public init(allowForceReturn: Bool, bundleDetails: BundleDetails? = nil, canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isBundleItem: Bool? = nil, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            
            self.isReturnable = isReturnable
            
            self.allowForceReturn = allowForceReturn
            
            self.isActive = isActive
            
            self.canBeCancelled = canBeCancelled
            
            self.enableTracking = enableTracking
            
            self.isCustomerReturnAllowed = isCustomerReturnAllowed
            
            self.isBundleItem = isBundleItem
            
            self.bundleDetails = bundleDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isReturnable = try container.decode(Bool.self, forKey: .isReturnable)
                
            
            
            
                allowForceReturn = try container.decode(Bool.self, forKey: .allowForceReturn)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)
                
            
            
            
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)
                
            
            
            
                isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)
                
            
            
            
                do {
                    isBundleItem = try container.decode(Bool.self, forKey: .isBundleItem)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bundleDetails = try container.decode(BundleDetails.self, forKey: .bundleDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)
            
            
            
            
            try? container.encodeIfPresent(allowForceReturn, forKey: .allowForceReturn)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)
            
            
            
            
            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)
            
            
            
            
            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)
            
            
            
            
            try? container.encodeIfPresent(isBundleItem, forKey: .isBundleItem)
            
            
            
            
            try? container.encodeIfPresent(bundleDetails, forKey: .bundleDetails)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: BagConfigs
        Used By: Order
    */

    class BagConfigs: Codable {
        
        
        public var isReturnable: Bool
        
        public var allowForceReturn: Bool
        
        public var isActive: Bool
        
        public var canBeCancelled: Bool
        
        public var enableTracking: Bool
        
        public var isCustomerReturnAllowed: Bool
        
        public var isBundleItem: Bool?
        
        public var bundleDetails: BundleDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case isReturnable = "is_returnable"
            
            case allowForceReturn = "allow_force_return"
            
            case isActive = "is_active"
            
            case canBeCancelled = "can_be_cancelled"
            
            case enableTracking = "enable_tracking"
            
            case isCustomerReturnAllowed = "is_customer_return_allowed"
            
            case isBundleItem = "is_bundle_item"
            
            case bundleDetails = "bundle_details"
            
        }

        public init(allowForceReturn: Bool, bundleDetails: BundleDetails? = nil, canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isBundleItem: Bool? = nil, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            
            self.isReturnable = isReturnable
            
            self.allowForceReturn = allowForceReturn
            
            self.isActive = isActive
            
            self.canBeCancelled = canBeCancelled
            
            self.enableTracking = enableTracking
            
            self.isCustomerReturnAllowed = isCustomerReturnAllowed
            
            self.isBundleItem = isBundleItem
            
            self.bundleDetails = bundleDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isReturnable = try container.decode(Bool.self, forKey: .isReturnable)
                
            
            
            
                allowForceReturn = try container.decode(Bool.self, forKey: .allowForceReturn)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)
                
            
            
            
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)
                
            
            
            
                isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)
                
            
            
            
                do {
                    isBundleItem = try container.decode(Bool.self, forKey: .isBundleItem)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bundleDetails = try container.decode(BundleDetails.self, forKey: .bundleDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)
            
            
            
            
            try? container.encodeIfPresent(allowForceReturn, forKey: .allowForceReturn)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)
            
            
            
            
            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)
            
            
            
            
            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)
            
            
            
            
            try? container.encodeIfPresent(isBundleItem, forKey: .isBundleItem)
            
            
            
            
            try? container.encodeIfPresent(bundleDetails, forKey: .bundleDetails)
            
            
        }
        
    }
}


