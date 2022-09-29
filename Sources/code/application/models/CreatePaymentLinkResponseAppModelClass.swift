

import Foundation
public extension ApplicationClient {
    /*
         Model: CreatePaymentLinkResponse
         Used By: Payment
     */
    class CreatePaymentLinkResponse: Codable {
        public var pollingTimeout: Int?

        public var success: Bool

        public var message: String

        public var paymentLinkId: String?

        public var paymentLinkUrl: String?

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case pollingTimeout = "polling_timeout"

            case success

            case message

            case paymentLinkId = "payment_link_id"

            case paymentLinkUrl = "payment_link_url"

            case statusCode = "status_code"
        }

        public init(message: String, paymentLinkId: String? = nil, paymentLinkUrl: String? = nil, pollingTimeout: Int? = nil, statusCode: Int, success: Bool) {
            self.pollingTimeout = pollingTimeout

            self.success = success

            self.message = message

            self.paymentLinkId = paymentLinkId

            self.paymentLinkUrl = paymentLinkUrl

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pollingTimeout = try container.decode(Int.self, forKey: .pollingTimeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)

            do {
                paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(pollingTimeout, forKey: .pollingTimeout)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(paymentLinkId, forKey: .paymentLinkId)

            try? container.encode(paymentLinkUrl, forKey: .paymentLinkUrl)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}
