

import Foundation
public extension ApplicationClient {
    /*
         Model: GetPaymentLinkResponse
         Used By: Payment
     */
    class GetPaymentLinkResponse: Codable {
        public var externalOrderId: String

        public var paymentLinkCurrentStatus: String

        public var message: String

        public var success: Bool

        public var amount: Double

        public var paymentLinkUrl: String

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case externalOrderId = "external_order_id"

            case paymentLinkCurrentStatus = "payment_link_current_status"

            case message

            case success

            case amount

            case paymentLinkUrl = "payment_link_url"

            case statusCode = "status_code"
        }

        public init(amount: Double, externalOrderId: String, message: String, paymentLinkCurrentStatus: String, paymentLinkUrl: String, statusCode: Int, success: Bool) {
            self.externalOrderId = externalOrderId

            self.paymentLinkCurrentStatus = paymentLinkCurrentStatus

            self.message = message

            self.success = success

            self.amount = amount

            self.paymentLinkUrl = paymentLinkUrl

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            paymentLinkCurrentStatus = try container.decode(String.self, forKey: .paymentLinkCurrentStatus)

            message = try container.decode(String.self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)

            amount = try container.decode(Double.self, forKey: .amount)

            paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(paymentLinkCurrentStatus, forKey: .paymentLinkCurrentStatus)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(paymentLinkUrl, forKey: .paymentLinkUrl)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}
