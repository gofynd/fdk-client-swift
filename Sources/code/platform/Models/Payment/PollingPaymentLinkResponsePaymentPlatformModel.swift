

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PollingPaymentLinkResponse
         Used By: Payment
     */

    class PollingPaymentLinkResponse: Codable {
        public var aggregatorName: String?

        public var status: String?

        public var httpStatus: Int?

        public var success: Bool?

        public var orderId: String?

        public var redirectUrl: String?

        public var statusCode: Int?

        public var amount: Double?

        public var paymentLinkId: String?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case status

            case httpStatus = "http_status"

            case success

            case orderId = "order_id"

            case redirectUrl = "redirect_url"

            case statusCode = "status_code"

            case amount

            case paymentLinkId = "payment_link_id"

            case message
        }

        public init(aggregatorName: String? = nil, amount: Double? = nil, httpStatus: Int? = nil, message: String? = nil, orderId: String? = nil, paymentLinkId: String? = nil, redirectUrl: String? = nil, status: String? = nil, statusCode: Int? = nil, success: Bool? = nil) {
            self.aggregatorName = aggregatorName

            self.status = status

            self.httpStatus = httpStatus

            self.success = success

            self.orderId = orderId

            self.redirectUrl = redirectUrl

            self.statusCode = statusCode

            self.amount = amount

            self.paymentLinkId = paymentLinkId

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

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
                httpStatus = try container.decode(Int.self, forKey: .httpStatus)

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
                orderId = try container.decode(String.self, forKey: .orderId)

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
                statusCode = try container.decode(Int.self, forKey: .statusCode)

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
                paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encode(status, forKey: .status)

            try? container.encode(httpStatus, forKey: .httpStatus)

            try? container.encode(success, forKey: .success)

            try? container.encode(orderId, forKey: .orderId)

            try? container.encode(redirectUrl, forKey: .redirectUrl)

            try? container.encode(statusCode, forKey: .statusCode)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(paymentLinkId, forKey: .paymentLinkId)

            try? container.encode(message, forKey: .message)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PollingPaymentLinkResponse
         Used By: Payment
     */

    class PollingPaymentLinkResponse: Codable {
        public var aggregatorName: String?

        public var status: String?

        public var httpStatus: Int?

        public var success: Bool?

        public var orderId: String?

        public var redirectUrl: String?

        public var statusCode: Int?

        public var amount: Double?

        public var paymentLinkId: String?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case status

            case httpStatus = "http_status"

            case success

            case orderId = "order_id"

            case redirectUrl = "redirect_url"

            case statusCode = "status_code"

            case amount

            case paymentLinkId = "payment_link_id"

            case message
        }

        public init(aggregatorName: String? = nil, amount: Double? = nil, httpStatus: Int? = nil, message: String? = nil, orderId: String? = nil, paymentLinkId: String? = nil, redirectUrl: String? = nil, status: String? = nil, statusCode: Int? = nil, success: Bool? = nil) {
            self.aggregatorName = aggregatorName

            self.status = status

            self.httpStatus = httpStatus

            self.success = success

            self.orderId = orderId

            self.redirectUrl = redirectUrl

            self.statusCode = statusCode

            self.amount = amount

            self.paymentLinkId = paymentLinkId

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

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
                httpStatus = try container.decode(Int.self, forKey: .httpStatus)

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
                orderId = try container.decode(String.self, forKey: .orderId)

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
                statusCode = try container.decode(Int.self, forKey: .statusCode)

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
                paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encode(status, forKey: .status)

            try? container.encode(httpStatus, forKey: .httpStatus)

            try? container.encode(success, forKey: .success)

            try? container.encode(orderId, forKey: .orderId)

            try? container.encode(redirectUrl, forKey: .redirectUrl)

            try? container.encode(statusCode, forKey: .statusCode)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(paymentLinkId, forKey: .paymentLinkId)

            try? container.encode(message, forKey: .message)
        }
    }
}