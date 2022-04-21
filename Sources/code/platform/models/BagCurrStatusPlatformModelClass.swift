

import Foundation
public extension PlatformClient {
    /*
         Model: BagCurrStatus
         Used By: Order
     */

    class BagCurrStatus: Codable {
        public var enableTracking: Bool?

        public var isCustomerReturnAllowed: Bool?

        public var isActive: Bool?

        public var isReturnable: Bool?

        public var canBeCancelled: Bool?

        public enum CodingKeys: String, CodingKey {
            case enableTracking = "enable_tracking"

            case isCustomerReturnAllowed = "is_customer_return_allowed"

            case isActive = "is_active"

            case isReturnable = "is_returnable"

            case canBeCancelled = "can_be_cancelled"
        }

        public init(canBeCancelled: Bool? = nil, enableTracking: Bool? = nil, isActive: Bool? = nil, isCustomerReturnAllowed: Bool? = nil, isReturnable: Bool? = nil) {
            self.enableTracking = enableTracking

            self.isCustomerReturnAllowed = isCustomerReturnAllowed

            self.isActive = isActive

            self.isReturnable = isReturnable

            self.canBeCancelled = canBeCancelled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isCustomerReturnAllowed = try container.decode(Bool.self, forKey: .isCustomerReturnAllowed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isReturnable = try container.decode(Bool.self, forKey: .isReturnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canBeCancelled = try container.decode(Bool.self, forKey: .canBeCancelled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(isCustomerReturnAllowed, forKey: .isCustomerReturnAllowed)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isReturnable, forKey: .isReturnable)

            try? container.encodeIfPresent(canBeCancelled, forKey: .canBeCancelled)
        }
    }
}
