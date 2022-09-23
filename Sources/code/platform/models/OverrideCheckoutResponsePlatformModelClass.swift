

import Foundation
public extension PlatformClient {
    /*
         Model: OverrideCheckoutResponse
         Used By: Cart
     */

    class OverrideCheckoutResponse: Codable {
        public var success: String

        public var orderId: String

        public var data: [String: Any]

        public var cart: [String: Any]

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case success

            case orderId = "order_id"

            case data

            case cart

            case message
        }

        public init(cart: [String: Any], data: [String: Any], message: String, orderId: String, success: String) {
            self.success = success

            self.orderId = orderId

            self.data = data

            self.cart = cart

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(String.self, forKey: .success)

            orderId = try container.decode(String.self, forKey: .orderId)

            data = try container.decode([String: Any].self, forKey: .data)

            cart = try container.decode([String: Any].self, forKey: .cart)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(cart, forKey: .cart)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
