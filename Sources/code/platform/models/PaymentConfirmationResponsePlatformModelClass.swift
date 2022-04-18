import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentConfirmationResponse
         Used By: Payment
     */

    class PaymentConfirmationResponse: Codable {
        public var success: Bool

        public var message: String

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case success

            case message

            case orderId = "order_id"
        }

        public init(message: String, orderId: String, success: Bool) {
            self.success = success

            self.message = message

            self.orderId = orderId
        }

        public func duplicate() -> PaymentConfirmationResponse {
            let dict = self.dictionary!
            let copy = PaymentConfirmationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
