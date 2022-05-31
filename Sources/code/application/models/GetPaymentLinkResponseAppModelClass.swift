

import Foundation
public extension ApplicationClient {
    /*
         Model: GetPaymentLinkResponse
         Used By: Payment
     */
    class GetPaymentLinkResponse: Codable {
        public var message: String

        public var statusCode: Int

        public var amount: Double

        public var success: Bool

        public var externalOrderId: String

        public var paymentLinkCurrentStatus: String

        public var paymentLinkUrl: String

        public enum CodingKeys: String, CodingKey {
            case message

            case statusCode = "status_code"

            case amount

            case success

            case externalOrderId = "external_order_id"

            case paymentLinkCurrentStatus = "payment_link_current_status"

            case paymentLinkUrl = "payment_link_url"
        }

        public init(amount: Double, externalOrderId: String, message: String, paymentLinkCurrentStatus: String, paymentLinkUrl: String, statusCode: Int, success: Bool) {
            self.message = message

            self.statusCode = statusCode

            self.amount = amount

            self.success = success

            self.externalOrderId = externalOrderId

            self.paymentLinkCurrentStatus = paymentLinkCurrentStatus

            self.paymentLinkUrl = paymentLinkUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            amount = try container.decode(Double.self, forKey: .amount)

            success = try container.decode(Bool.self, forKey: .success)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            paymentLinkCurrentStatus = try container.decode(String.self, forKey: .paymentLinkCurrentStatus)

            paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(paymentLinkCurrentStatus, forKey: .paymentLinkCurrentStatus)

            try? container.encodeIfPresent(paymentLinkUrl, forKey: .paymentLinkUrl)
        }
    }
}
