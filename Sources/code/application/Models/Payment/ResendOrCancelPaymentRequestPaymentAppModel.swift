

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: ResendOrCancelPaymentRequest
         Used By: Payment
     */
    class ResendOrCancelPaymentRequest: Codable {
        public var orderId: String

        public var requestType: String

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case requestType = "request_type"
        }

        public init(orderId: String, requestType: String) {
            self.orderId = orderId

            self.requestType = requestType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            requestType = try container.decode(String.self, forKey: .requestType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(requestType, forKey: .requestType)
        }
    }
}
