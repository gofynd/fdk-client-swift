

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagConfigs
         Used By: Order
     */

    class BagConfigs: Codable {
        public var isCustomerReturnAllowed: Bool

        public var canBeCancelled: Bool

        public var allowForceReturn: Bool

        public var enableTracking: Bool

        public var isReturnable: Bool

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case isCustomerReturnAllowed = "is_customer_return_allowed"

            case canBeCancelled = "can_be_cancelled"

            case allowForceReturn = "allow_force_return"

            case enableTracking = "enable_tracking"

            case isReturnable = "is_returnable"

            case isActive = "is_active"
        }

        public init(allowForceReturn: Bool, canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            self.isCustomerReturnAllowed = isCustomerReturnAllowed

            self.canBeCancelled = canBeCancelled

            self.allowForceReturn = allowForceReturn

            self.enableTracking = enableTracking

            self.isReturnable = isReturnable

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)

            canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)

            allowForceReturn = try container.decode(Bool.self, forKey: .allowForceReturn)

            enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)

            try? container.encodeIfPresent(allowForceReturn, forKey: .allowForceReturn)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

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
        public var isCustomerReturnAllowed: Bool

        public var canBeCancelled: Bool

        public var allowForceReturn: Bool

        public var enableTracking: Bool

        public var isReturnable: Bool

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case isCustomerReturnAllowed = "is_customer_return_allowed"

            case canBeCancelled = "can_be_cancelled"

            case allowForceReturn = "allow_force_return"

            case enableTracking = "enable_tracking"

            case isReturnable = "is_returnable"

            case isActive = "is_active"
        }

        public init(allowForceReturn: Bool, canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            self.isCustomerReturnAllowed = isCustomerReturnAllowed

            self.canBeCancelled = canBeCancelled

            self.allowForceReturn = allowForceReturn

            self.enableTracking = enableTracking

            self.isReturnable = isReturnable

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)

            canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)

            allowForceReturn = try container.decode(Bool.self, forKey: .allowForceReturn)

            enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)

            try? container.encodeIfPresent(allowForceReturn, forKey: .allowForceReturn)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
