

import Foundation
public extension PlatformClient {
    /*
         Model: AppInventoryPartialUpdate
         Used By: Configuration
     */

    class AppInventoryPartialUpdate: Codable {
        public var rewardPoints: RewardPointsConfig?

        public var cart: AppCartConfig?

        public var payment: AppPaymentConfig?

        public var loyaltyPoints: LoyaltyPointsConfig?

        public var commsEnabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case rewardPoints = "reward_points"

            case cart

            case payment

            case loyaltyPoints = "loyalty_points"

            case commsEnabled = "comms_enabled"
        }

        public init(cart: AppCartConfig? = nil, commsEnabled: Bool? = nil, loyaltyPoints: LoyaltyPointsConfig? = nil, payment: AppPaymentConfig? = nil, rewardPoints: RewardPointsConfig? = nil) {
            self.rewardPoints = rewardPoints

            self.cart = cart

            self.payment = payment

            self.loyaltyPoints = loyaltyPoints

            self.commsEnabled = commsEnabled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                rewardPoints = try container.decode(RewardPointsConfig.self, forKey: .rewardPoints)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cart = try container.decode(AppCartConfig.self, forKey: .cart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payment = try container.decode(AppPaymentConfig.self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                loyaltyPoints = try container.decode(LoyaltyPointsConfig.self, forKey: .loyaltyPoints)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                commsEnabled = try container.decode(Bool.self, forKey: .commsEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rewardPoints, forKey: .rewardPoints)

            try? container.encodeIfPresent(cart, forKey: .cart)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)

            try? container.encodeIfPresent(commsEnabled, forKey: .commsEnabled)
        }
    }
}
