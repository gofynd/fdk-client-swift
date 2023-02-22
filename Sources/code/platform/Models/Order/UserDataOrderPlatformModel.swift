

import Foundation

public extension PlatformClient.Order {
    /*
         Model: UserData
         Used By: Order
     */

    class UserData: Codable {
        public var shippingUser: OrderUser?

        public var billingUser: OrderUser?

        public enum CodingKeys: String, CodingKey {
            case shippingUser = "shipping_user"

            case billingUser = "billing_user"
        }

        public init(billingUser: OrderUser? = nil, shippingUser: OrderUser? = nil) {
            self.shippingUser = shippingUser

            self.billingUser = billingUser
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shippingUser = try container.decode(OrderUser.self, forKey: .shippingUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingUser = try container.decode(OrderUser.self, forKey: .billingUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingUser, forKey: .shippingUser)

            try? container.encodeIfPresent(billingUser, forKey: .billingUser)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: UserData
         Used By: Order
     */

    class UserData: Codable {
        public var shippingUser: OrderUser?

        public var billingUser: OrderUser?

        public enum CodingKeys: String, CodingKey {
            case shippingUser = "shipping_user"

            case billingUser = "billing_user"
        }

        public init(billingUser: OrderUser? = nil, shippingUser: OrderUser? = nil) {
            self.shippingUser = shippingUser

            self.billingUser = billingUser
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shippingUser = try container.decode(OrderUser.self, forKey: .shippingUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingUser = try container.decode(OrderUser.self, forKey: .billingUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shippingUser, forKey: .shippingUser)

            try? container.encodeIfPresent(billingUser, forKey: .billingUser)
        }
    }
}
