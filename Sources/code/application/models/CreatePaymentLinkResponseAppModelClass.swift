

import Foundation
public extension ApplicationClient {
    /*
         Model: CreatePaymentLinkResponse
         Used By: Payment
     */
    class CreatePaymentLinkResponse: Codable {
        public var paymentLinkUrl: String

        public var success: Bool

        public var paymentLinkId: String

        public var statusCode: Int

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case paymentLinkUrl = "payment_link_url"

            case success

            case paymentLinkId = "payment_link_id"

            case statusCode = "status_code"

            case message
        }

        public init(message: String, paymentLinkId: String, paymentLinkUrl: String, statusCode: Int, success: Bool) {
            self.paymentLinkUrl = paymentLinkUrl

            self.success = success

            self.paymentLinkId = paymentLinkId

            self.statusCode = statusCode

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)

            success = try container.decode(Bool.self, forKey: .success)

            paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentLinkUrl, forKey: .paymentLinkUrl)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(paymentLinkId, forKey: .paymentLinkId)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
