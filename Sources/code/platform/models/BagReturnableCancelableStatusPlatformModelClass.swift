

import Foundation
public extension PlatformClient {
    /*
         Model: BagReturnableCancelableStatus
         Used By: Order
     */

    class BagReturnableCancelableStatus: Codable {
        public var isReturnable: Bool

        public var enableTracking: Bool

        public var isCustomerReturnAllowed: Bool

        public var canBeCancelled: Bool

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case isReturnable = "is_returnable"

            case enableTracking = "enable_tracking"

            case isCustomerReturnAllowed = "is_customer_return_allowed"

            case canBeCancelled = "can_be_cancelled"

            case isActive = "is_active"
        }

        public init(canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            self.isReturnable = isReturnable

            self.enableTracking = enableTracking

            self.isCustomerReturnAllowed = isCustomerReturnAllowed

            self.canBeCancelled = canBeCancelled

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)

            canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
