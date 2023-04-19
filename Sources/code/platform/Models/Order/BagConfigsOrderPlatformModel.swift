

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagConfigs
         Used By: Order
     */

    class BagConfigs: Codable {
        public var canBeCancelled: Bool

        public var isCustomerReturnAllowed: Bool

        public var enableTracking: Bool

        public var isActive: Bool

        public var isReturnable: Bool

        public var allowForceReturn: Bool

        public enum CodingKeys: String, CodingKey {
            case canBeCancelled = "can_be_cancelled"

            case isCustomerReturnAllowed = "is_customer_return_allowed"

            case enableTracking = "enable_tracking"

            case isActive = "is_active"

            case isReturnable = "is_returnable"

            case allowForceReturn = "allow_force_return"
        }

        public init(allowForceReturn: Bool, canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            self.canBeCancelled = canBeCancelled

            self.isCustomerReturnAllowed = isCustomerReturnAllowed

            self.enableTracking = enableTracking

            self.isActive = isActive

            self.isReturnable = isReturnable

            self.allowForceReturn = allowForceReturn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)

            isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)

            enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            allowForceReturn = try container.decode(Bool.self, forKey: .allowForceReturn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

            try? container.encodeIfPresent(allowForceReturn, forKey: .allowForceReturn)
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

        public var isCustomerReturnAllowed: Bool

        public var enableTracking: Bool

        public var isActive: Bool

        public var isReturnable: Bool

        public var allowForceReturn: Bool

        public enum CodingKeys: String, CodingKey {
            case canBeCancelled = "can_be_cancelled"

            case isCustomerReturnAllowed = "is_customer_return_allowed"

            case enableTracking = "enable_tracking"

            case isActive = "is_active"

            case isReturnable = "is_returnable"

            case allowForceReturn = "allow_force_return"
        }

        public init(allowForceReturn: Bool, canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            self.canBeCancelled = canBeCancelled

            self.isCustomerReturnAllowed = isCustomerReturnAllowed

            self.enableTracking = enableTracking

            self.isActive = isActive

            self.isReturnable = isReturnable

            self.allowForceReturn = allowForceReturn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)

            isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)

            enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            allowForceReturn = try container.decode(Bool.self, forKey: .allowForceReturn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

            try? container.encodeIfPresent(allowForceReturn, forKey: .allowForceReturn)
        }
    }
}
