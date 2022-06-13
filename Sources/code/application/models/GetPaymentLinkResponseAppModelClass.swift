

import Foundation
public extension ApplicationClient {
    /*
         Model: GetPaymentLinkResponse
         Used By: Payment
     */
    class GetPaymentLinkResponse: Codable {
        public var statusCode: Int

        public var message: String

        public var externalOrderId: String?

        public var paymentLinkCurrentStatus: String?

        public var amount: Double?

        public var success: Bool

        public var paymentLinkUrl: String?

        public enum CodingKeys: String, CodingKey {
            case statusCode = "status_code"

            case message

            case externalOrderId = "external_order_id"

            case paymentLinkCurrentStatus = "payment_link_current_status"

            case amount

            case success

            case paymentLinkUrl = "payment_link_url"
        }

        public init(amount: Double? = nil, externalOrderId: String? = nil, message: String, paymentLinkCurrentStatus: String? = nil, paymentLinkUrl: String? = nil, statusCode: Int, success: Bool) {
            self.statusCode = statusCode

            self.message = message

            self.externalOrderId = externalOrderId

            self.paymentLinkCurrentStatus = paymentLinkCurrentStatus

            self.amount = amount

            self.success = success

            self.paymentLinkUrl = paymentLinkUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            message = try container.decode(String.self, forKey: .message)

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

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

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(externalOrderId, forKey: .externalOrderId)

            try? container.encode(paymentLinkCurrentStatus, forKey: .paymentLinkCurrentStatus)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(paymentLinkUrl, forKey: .paymentLinkUrl)
        }
    }
}
