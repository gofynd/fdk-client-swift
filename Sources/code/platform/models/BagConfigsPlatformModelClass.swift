

import Foundation
public extension PlatformClient {
    /*
         Model: BagConfigs
         Used By: Orders
     */

    class BagConfigs: Codable {
        public var allowForceReturn: Bool

        public var canBeCancelled: Bool

        public var isActive: Bool

        public var isReturnable: Bool

        public var isCustomerReturnAllowed: Bool

        public var enableTracking: Bool

        public enum CodingKeys: String, CodingKey {
            case allowForceReturn = "allow_force_return"

            case canBeCancelled = "can_be_cancelled"

            case isActive = "is_active"

            case isReturnable = "is_returnable"

            case isCustomerReturnAllowed = "is_customer_return_allowed"

            case enableTracking = "enable_tracking"
        }

        public init(allowForceReturn: Bool, canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            self.allowForceReturn = allowForceReturn

            self.canBeCancelled = canBeCancelled

            self.isActive = isActive

            self.isReturnable = isReturnable

            self.isCustomerReturnAllowed = isCustomerReturnAllowed

            self.enableTracking = enableTracking
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            allowForceReturn = try container.decode(Bool.self, forKey: .allowForceReturn)

            canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)

            enableTracking = try container.decode(Bool.self, forKey: .enableTracking)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allowForceReturn, forKey: .allowForceReturn)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)
        }
    }
}
