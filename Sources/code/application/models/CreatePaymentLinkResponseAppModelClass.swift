

import Foundation
public extension ApplicationClient {
    /*
         Model: CreatePaymentLinkResponse
         Used By: Payment
     */
    class CreatePaymentLinkResponse: Codable {
        public var paymentLinkId: String

        public var paymentLinkUrl: String

        public var message: String

        public var success: Bool

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case paymentLinkId = "payment_link_id"

            case paymentLinkUrl = "payment_link_url"

            case message

            case success

            case statusCode = "status_code"
        }

        public init(message: String, paymentLinkId: String, paymentLinkUrl: String, statusCode: Int, success: Bool) {
            self.paymentLinkId = paymentLinkId

            self.paymentLinkUrl = paymentLinkUrl

            self.message = message

            self.success = success

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)

            paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)

            message = try container.decode(String.self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentLinkId, forKey: .paymentLinkId)

            try? container.encodeIfPresent(paymentLinkUrl, forKey: .paymentLinkUrl)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}
