

import Foundation
public extension PlatformClient {
    /*
         Model: BagConfigs
         Used By: Order
     */

    class BagConfigs: Codable {
        public var enableTracking: Bool

        public var allowForceReturn: Bool

        public var canBeCancelled: Bool

        public var isReturnable: Bool

        public var isCustomerReturnAllowed: Bool

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case enableTracking = "enable_tracking"

            case allowForceReturn = "allow_force_return"

            case canBeCancelled = "can_be_cancelled"

            case isReturnable = "is_returnable"

            case isCustomerReturnAllowed = "is_customer_return_allowed"

            case isActive = "is_active"
        }

        public init(allowForceReturn: Bool, canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            self.enableTracking = enableTracking

            self.allowForceReturn = allowForceReturn

            self.canBeCancelled = canBeCancelled

            self.isReturnable = isReturnable

            self.isCustomerReturnAllowed = isCustomerReturnAllowed

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            allowForceReturn = try container.decode(Bool.self, forKey: .allowForceReturn)

            canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)

            isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(allowForceReturn, forKey: .allowForceReturn)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
