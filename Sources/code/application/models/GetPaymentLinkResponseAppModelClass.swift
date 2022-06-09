

import Foundation
public extension ApplicationClient {
    /*
         Model: GetPaymentLinkResponse
         Used By: Payment
     */
    class GetPaymentLinkResponse: Codable {
        public var paymentLinkCurrentStatus: String

        public var externalOrderId: String

        public var paymentLinkUrl: String

        public var message: String

        public var amount: Double

        public var success: Bool

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case paymentLinkCurrentStatus = "payment_link_current_status"

            case externalOrderId = "external_order_id"

            case paymentLinkUrl = "payment_link_url"

            case message

            case amount

            case success

            case statusCode = "status_code"
        }

        public init(amount: Double, externalOrderId: String, message: String, paymentLinkCurrentStatus: String, paymentLinkUrl: String, statusCode: Int, success: Bool) {
            self.paymentLinkCurrentStatus = paymentLinkCurrentStatus

            self.externalOrderId = externalOrderId

            self.paymentLinkUrl = paymentLinkUrl

            self.message = message

            self.amount = amount

            self.success = success

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentLinkCurrentStatus = try container.decode(String.self, forKey: .paymentLinkCurrentStatus)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)

            message = try container.decode(String.self, forKey: .message)

            amount = try container.decode(Double.self, forKey: .amount)

            success = try container.decode(Bool.self, forKey: .success)

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentLinkCurrentStatus, forKey: .paymentLinkCurrentStatus)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(paymentLinkUrl, forKey: .paymentLinkUrl)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}
