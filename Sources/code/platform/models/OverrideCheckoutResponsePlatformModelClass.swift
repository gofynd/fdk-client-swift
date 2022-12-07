

import Foundation
public extension PlatformClient {
    /*
         Model: OverrideCheckoutResponse
         Used By: Cart
     */

    class OverrideCheckoutResponse: Codable {
        public var data: [String: Any]

        public var success: String

        public var orderId: String

        public var message: String

        public var cart: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case data

            case success

            case orderId = "order_id"

            case message

            case cart
        }

        public init(cart: [String: Any], data: [String: Any], message: String, orderId: String, success: String) {
            self.data = data

            self.success = success

            self.orderId = orderId

            self.message = message

            self.cart = cart
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([String: Any].self, forKey: .data)

            success = try container.decode(String.self, forKey: .success)

            orderId = try container.decode(String.self, forKey: .orderId)

            message = try container.decode(String.self, forKey: .message)

            cart = try container.decode([String: Any].self, forKey: .cart)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(cart, forKey: .cart)
        }
    }
}
