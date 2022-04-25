

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentConfirmationResponse
         Used By: Payment
     */

    class PaymentConfirmationResponse: Codable {
        public var message: String

        public var success: Bool

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case orderId = "order_id"
        }

        public init(message: String, orderId: String, success: Bool) {
            self.message = message

            self.success = success

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
