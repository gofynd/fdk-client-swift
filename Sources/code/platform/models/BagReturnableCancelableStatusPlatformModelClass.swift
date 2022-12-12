

import Foundation
public extension PlatformClient {
    /*
         Model: BagReturnableCancelableStatus
         Used By: Order
     */

    class BagReturnableCancelableStatus: Codable {
        public var isReturnable: Bool

        public var enableTracking: Bool

        public var canBeCancelled: Bool

        public var isActive: Bool

        public var isCustomerReturnAllowed: Bool

        public enum CodingKeys: String, CodingKey {
            case isReturnable = "is_returnable"

            case enableTracking = "enable_tracking"

            case canBeCancelled = "can_be_cancelled"

            case isActive = "is_active"

            case isCustomerReturnAllowed = "is_customer_return_allowed"
        }

        public init(canBeCancelled: Bool, enableTracking: Bool, isActive: Bool, isCustomerReturnAllowed: Bool, isReturnable: Bool) {
            self.isReturnable = isReturnable

            self.enableTracking = enableTracking

            self.canBeCancelled = canBeCancelled

            self.isActive = isActive

            self.isCustomerReturnAllowed = isCustomerReturnAllowed
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)
        }
    }
}
