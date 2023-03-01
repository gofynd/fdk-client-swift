

import Foundation
public extension ApplicationClient {
    /*
         Model: CreatePaymentLinkResponse
         Used By: Payment
     */
    class CreatePaymentLinkResponse: Codable {
        public var paymentLinkId: String?

        public var message: String

        public var success: Bool

        public var pollingTimeout: Int?

        public var paymentLinkUrl: String?

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case paymentLinkId = "payment_link_id"

            case message

            case success

            case pollingTimeout = "polling_timeout"

            case paymentLinkUrl = "payment_link_url"

            case statusCode = "status_code"
        }

        public init(message: String, paymentLinkId: String? = nil, paymentLinkUrl: String? = nil, pollingTimeout: Int? = nil, statusCode: Int, success: Bool) {
            self.paymentLinkId = paymentLinkId

            self.message = message

            self.success = success

            self.pollingTimeout = pollingTimeout

            self.paymentLinkUrl = paymentLinkUrl

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                pollingTimeout = try container.decode(Int.self, forKey: .pollingTimeout)

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

            try? container.encode(paymentLinkId, forKey: .paymentLinkId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encode(pollingTimeout, forKey: .pollingTimeout)

            try? container.encode(paymentLinkUrl, forKey: .paymentLinkUrl)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}
