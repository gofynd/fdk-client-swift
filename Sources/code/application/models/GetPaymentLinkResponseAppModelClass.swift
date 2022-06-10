

import Foundation
public extension ApplicationClient {
    /*
         Model: GetPaymentLinkResponse
         Used By: Payment
     */
    class GetPaymentLinkResponse: Codable {
        public var message: String

        public var success: Bool

        public var paymentLinkUrl: String?

        public var statusCode: Int

        public var externalOrderId: String?

        public var amount: Double?

        public var paymentLinkCurrentStatus: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case paymentLinkUrl = "payment_link_url"

            case statusCode = "status_code"

            case externalOrderId = "external_order_id"

            case amount

            case paymentLinkCurrentStatus = "payment_link_current_status"
        }

        public init(amount: Double? = nil, externalOrderId: String? = nil, message: String, paymentLinkCurrentStatus: String? = nil, paymentLinkUrl: String? = nil, statusCode: Int, success: Bool) {
            self.message = message

            self.success = success

            self.paymentLinkUrl = paymentLinkUrl

            self.statusCode = statusCode

            self.externalOrderId = externalOrderId

            self.amount = amount

            self.paymentLinkCurrentStatus = paymentLinkCurrentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentLinkCurrentStatus = try container.decode(String.self, forKey: .paymentLinkCurrentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(paymentLinkUrl, forKey: .paymentLinkUrl)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encode(externalOrderId, forKey: .externalOrderId)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(paymentLinkCurrentStatus, forKey: .paymentLinkCurrentStatus)
        }
    }
}
