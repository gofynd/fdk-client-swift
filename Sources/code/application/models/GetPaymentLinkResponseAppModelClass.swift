

import Foundation
public extension ApplicationClient {
    /*
         Model: GetPaymentLinkResponse
         Used By: Payment
     */
    class GetPaymentLinkResponse: Codable {
        public var paymentLinkCurrentStatus: String

        public var paymentLinkUrl: String

        public var statusCode: Int

        public var success: Bool

        public var externalOrderId: String

        public var amount: Double

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case paymentLinkCurrentStatus = "payment_link_current_status"

            case paymentLinkUrl = "payment_link_url"

            case statusCode = "status_code"

            case success

            case externalOrderId = "external_order_id"

            case amount

            case message
        }

        public init(amount: Double, externalOrderId: String, message: String, paymentLinkCurrentStatus: String, paymentLinkUrl: String, statusCode: Int, success: Bool) {
            self.paymentLinkCurrentStatus = paymentLinkCurrentStatus

            self.paymentLinkUrl = paymentLinkUrl

            self.statusCode = statusCode

            self.success = success

            self.externalOrderId = externalOrderId

            self.amount = amount

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentLinkCurrentStatus = try container.decode(String.self, forKey: .paymentLinkCurrentStatus)

            paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            success = try container.decode(Bool.self, forKey: .success)

            externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            amount = try container.decode(Double.self, forKey: .amount)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentLinkCurrentStatus, forKey: .paymentLinkCurrentStatus)

            try? container.encodeIfPresent(paymentLinkUrl, forKey: .paymentLinkUrl)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
