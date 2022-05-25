

import Foundation
public extension ApplicationClient {
    /*
         Model: GetPaymentLinkResponse
         Used By: Payment
     */
    class GetPaymentLinkResponse: Codable {
        public var externalOrderId: String

        public var paymentLinkUrl: String

        public var paymentLinkCurrentStatus: String

        public var success: Bool

        public var statusCode: Int

        public var message: String

        public var amount: Double

        public enum CodingKeys: String, CodingKey {
            case externalOrderId = "external_order_id"

            case paymentLinkUrl = "payment_link_url"

            case paymentLinkCurrentStatus = "payment_link_current_status"

            case success

            case statusCode = "status_code"

            case message

            case amount
        }

        public init(amount: Double, externalOrderId: String, message: String, paymentLinkCurrentStatus: String, paymentLinkUrl: String, statusCode: Int, success: Bool) {
            self.externalOrderId = externalOrderId

            self.paymentLinkUrl = paymentLinkUrl

            self.paymentLinkCurrentStatus = paymentLinkCurrentStatus

            self.success = success

            self.statusCode = statusCode

            self.message = message

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)

            paymentLinkCurrentStatus = try container.decode(String.self, forKey: .paymentLinkCurrentStatus)

            success = try container.decode(Bool.self, forKey: .success)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            message = try container.decode(String.self, forKey: .message)

            amount = try container.decode(Double.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(paymentLinkUrl, forKey: .paymentLinkUrl)

            try? container.encodeIfPresent(paymentLinkCurrentStatus, forKey: .paymentLinkCurrentStatus)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(amount, forKey: .amount)
        }
    }
}
