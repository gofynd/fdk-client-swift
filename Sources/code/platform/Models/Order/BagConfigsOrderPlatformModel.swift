

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagConfigs
         Used By: Order
     */

    class BagConfigs: Codable {
        public var canBeCancelled: Bool

        public var enableTracking: Bool

        public var isReturnable: Bool

        public var allowForceReturn: Bool

        public var isCustomerReturnAllowed: Bool

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case canBeCancelled = "can_be_cancelled"

            case enableTracking = "enable_tracking"

            case isReturnable = "is_returnable"

            case allowForceReturn = "allow_force_return"

            case isCustomerReturnAllowed = "is_customer_return_allowed"

            case isActive = "is_active"
        }

        public init(allowForceReturn: Bool, canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            self.canBeCancelled = canBeCancelled

            self.enableTracking = enableTracking

            self.isReturnable = isReturnable

            self.allowForceReturn = allowForceReturn

            self.isCustomerReturnAllowed = isCustomerReturnAllowed

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)

            enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            allowForceReturn = try container.decode(Bool.self, forKey: .allowForceReturn)

            isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

            try? container.encodeIfPresent(allowForceReturn, forKey: .allowForceReturn)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagConfigs
         Used By: Order
     */

    class BagConfigs: Codable {
        public var canBeCancelled: Bool

        public var enableTracking: Bool

        public var isReturnable: Bool

        public var allowForceReturn: Bool

        public var isCustomerReturnAllowed: Bool

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case canBeCancelled = "can_be_cancelled"

            case enableTracking = "enable_tracking"

            case isReturnable = "is_returnable"

            case allowForceReturn = "allow_force_return"

            case isCustomerReturnAllowed = "is_customer_return_allowed"

            case isActive = "is_active"
        }

        public init(allowForceReturn: Bool, canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            self.canBeCancelled = canBeCancelled

            self.enableTracking = enableTracking

            self.isReturnable = isReturnable

            self.allowForceReturn = allowForceReturn

            self.isCustomerReturnAllowed = isCustomerReturnAllowed

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)

            enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            allowForceReturn = try container.decode(Bool.self, forKey: .allowForceReturn)

            isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

            try? container.encodeIfPresent(allowForceReturn, forKey: .allowForceReturn)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
