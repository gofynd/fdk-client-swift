

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagConfigs
         Used By: Order
     */

    class BagConfigs: Codable {
        public var isActive: Bool

        public var enableTracking: Bool

        public var allowForceReturn: Bool

        public var isReturnable: Bool

        public var canBeCancelled: Bool

        public var isCustomerReturnAllowed: Bool

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case enableTracking = "enable_tracking"

            case allowForceReturn = "allow_force_return"

            case isReturnable = "is_returnable"

            case canBeCancelled = "can_be_cancelled"

            case isCustomerReturnAllowed = "is_customer_return_allowed"
        }

        public init(allowForceReturn: Bool, canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            self.isActive = isActive

            self.enableTracking = enableTracking

            self.allowForceReturn = allowForceReturn

            self.isReturnable = isReturnable

            self.canBeCancelled = canBeCancelled

            self.isCustomerReturnAllowed = isCustomerReturnAllowed
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            allowForceReturn = try container.decode(Bool.self, forKey: .allowForceReturn)

            isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)

            isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(allowForceReturn, forKey: .allowForceReturn)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagConfigs
         Used By: Order
     */

    class BagConfigs: Codable {
        public var isActive: Bool

        public var enableTracking: Bool

        public var allowForceReturn: Bool

        public var isReturnable: Bool

        public var canBeCancelled: Bool

        public var isCustomerReturnAllowed: Bool

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case enableTracking = "enable_tracking"

            case allowForceReturn = "allow_force_return"

            case isReturnable = "is_returnable"

            case canBeCancelled = "can_be_cancelled"

            case isCustomerReturnAllowed = "is_customer_return_allowed"
        }

        public init(allowForceReturn: Bool, canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            self.isActive = isActive

            self.enableTracking = enableTracking

            self.allowForceReturn = allowForceReturn

            self.isReturnable = isReturnable

            self.canBeCancelled = canBeCancelled

            self.isCustomerReturnAllowed = isCustomerReturnAllowed
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            allowForceReturn = try container.decode(Bool.self, forKey: .allowForceReturn)

            isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)

            isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(allowForceReturn, forKey: .allowForceReturn)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)
        }
    }
}
