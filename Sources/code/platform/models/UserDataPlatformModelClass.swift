

import Foundation
public extension PlatformClient {
    /*
         Model: UserData
         Used By: OrderManage
     */

    class UserData: Codable {
        public var billingUser: OrderUser?

        public var shippingUser: OrderUser?

        public enum CodingKeys: String, CodingKey {
            case billingUser = "billing_user"

            case shippingUser = "shipping_user"
        }

        public init(billingUser: OrderUser? = nil, shippingUser: OrderUser? = nil) {
            self.billingUser = billingUser

            self.shippingUser = shippingUser
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                billingUser = try container.decode(OrderUser.self, forKey: .billingUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shippingUser = try container.decode(OrderUser.self, forKey: .shippingUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(billingUser, forKey: .billingUser)

            try? container.encodeIfPresent(shippingUser, forKey: .shippingUser)
        }
    }
}
