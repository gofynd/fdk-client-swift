

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PollingPaymentLinkResponse
         Used By: Payment
     */
    class PollingPaymentLinkResponse: Codable {
        public var statusCode: Int?

        public var redirectUrl: String?

        public var message: String?

        public var success: Bool?

        public var aggregatorName: String?

        public var paymentLinkId: String?

        public var amount: Double?

        public var status: String?

        public var orderId: String?

        public var httpStatus: Int?

        public enum CodingKeys: String, CodingKey {
            case statusCode = "status_code"

            case redirectUrl = "redirect_url"

            case message

            case success

            case aggregatorName = "aggregator_name"

            case paymentLinkId = "payment_link_id"

            case amount

            case status

            case orderId = "order_id"

            case httpStatus = "http_status"
        }

        public init(aggregatorName: String? = nil, amount: Double? = nil, httpStatus: Int? = nil, message: String? = nil, orderId: String? = nil, paymentLinkId: String? = nil, redirectUrl: String? = nil, status: String? = nil, statusCode: Int? = nil, success: Bool? = nil) {
            self.statusCode = statusCode

            self.redirectUrl = redirectUrl

            self.message = message

            self.success = success

            self.aggregatorName = aggregatorName

            self.paymentLinkId = paymentLinkId

            self.amount = amount

            self.status = status

            self.orderId = orderId

            self.httpStatus = httpStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                statusCode = try container.decode(Int.self, forKey: .statusCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                redirectUrl = try container.decode(String.self, forKey: .redirectUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)

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
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                httpStatus = try container.decode(Int.self, forKey: .httpStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(statusCode, forKey: .statusCode)

            try? container.encode(redirectUrl, forKey: .redirectUrl)

            try? container.encode(message, forKey: .message)

            try? container.encode(success, forKey: .success)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encode(paymentLinkId, forKey: .paymentLinkId)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(status, forKey: .status)

            try? container.encode(orderId, forKey: .orderId)

            try? container.encode(httpStatus, forKey: .httpStatus)
        }
    }
}
