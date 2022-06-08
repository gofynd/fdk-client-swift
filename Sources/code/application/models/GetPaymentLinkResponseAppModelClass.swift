

import Foundation
public extension ApplicationClient {
    /*
         Model: GetPaymentLinkResponse
         Used By: Payment
     */
    class GetPaymentLinkResponse: Codable {
        public var paymentLinkCurrentStatus: String

        public var paymentLinkUrl: String

        public var message: String

        public var statusCode: Int

        public var amount: Double

        public var externalOrderId: String

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case paymentLinkCurrentStatus = "payment_link_current_status"

            case paymentLinkUrl = "payment_link_url"

            case message

            case statusCode = "status_code"

            case amount

            case externalOrderId = "external_order_id"

            case success
        }

        public init(amount: Double, externalOrderId: String, message: String, paymentLinkCurrentStatus: String, paymentLinkUrl: String, statusCode: Int, success: Bool) {
            self.paymentLinkCurrentStatus = paymentLinkCurrentStatus

            self.paymentLinkUrl = paymentLinkUrl

            self.message = message

            self.statusCode = statusCode

            self.amount = amount

            self.externalOrderId = externalOrderId

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentLinkCurrentStatus = try container.decode(String.self, forKey: .paymentLinkCurrentStatus)

            paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)

            message = try container.decode(String.self, forKey: .message)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            amount = try container.decode(Double.self, forKey: .amount)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentLinkCurrentStatus, forKey: .paymentLinkCurrentStatus)

            try? container.encodeIfPresent(paymentLinkUrl, forKey: .paymentLinkUrl)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
