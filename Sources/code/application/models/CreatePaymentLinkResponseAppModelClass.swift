

import Foundation
public extension ApplicationClient {
    /*
         Model: CreatePaymentLinkResponse
         Used By: Payment
     */
    class CreatePaymentLinkResponse: Codable {
        public var message: String

        public var paymentLinkId: String

        public var statusCode: Int

        public var success: Bool

        public var paymentLinkUrl: String

        public enum CodingKeys: String, CodingKey {
            case message

            case paymentLinkId = "payment_link_id"

            case statusCode = "status_code"

            case success

            case paymentLinkUrl = "payment_link_url"
        }

        public init(message: String, paymentLinkId: String, paymentLinkUrl: String, statusCode: Int, success: Bool) {
            self.message = message

            self.paymentLinkId = paymentLinkId

            self.statusCode = statusCode

            self.success = success

            self.paymentLinkUrl = paymentLinkUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            success = try container.decode(Bool.self, forKey: .success)

            paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(paymentLinkId, forKey: .paymentLinkId)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(paymentLinkUrl, forKey: .paymentLinkUrl)
        }
    }
}
