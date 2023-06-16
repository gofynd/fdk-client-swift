

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: GetPaymentLinkResponse
         Used By: Payment
     */

    class GetPaymentLinkResponse: Codable {
        public var paymentLinkUrl: String?

        public var amount: Double?

        public var message: String

        public var externalOrderId: String?

        public var pollingTimeout: Int?

        public var merchantName: String?

        public var paymentLinkCurrentStatus: String?

        public var statusCode: Int

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case paymentLinkUrl = "payment_link_url"

            case amount

            case message

            case externalOrderId = "external_order_id"

            case pollingTimeout = "polling_timeout"

            case merchantName = "merchant_name"

            case paymentLinkCurrentStatus = "payment_link_current_status"

            case statusCode = "status_code"

            case success
        }

        public init(amount: Double? = nil, externalOrderId: String? = nil, merchantName: String? = nil, message: String, paymentLinkCurrentStatus: String? = nil, paymentLinkUrl: String? = nil, pollingTimeout: Int? = nil, statusCode: Int, success: Bool) {
            self.paymentLinkUrl = paymentLinkUrl

            self.amount = amount

            self.message = message

            self.externalOrderId = externalOrderId

            self.pollingTimeout = pollingTimeout

            self.merchantName = merchantName

            self.paymentLinkCurrentStatus = paymentLinkCurrentStatus

            self.statusCode = statusCode

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)

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

            message = try container.decode(String.self, forKey: .message)

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pollingTimeout = try container.decode(Int.self, forKey: .pollingTimeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantName = try container.decode(String.self, forKey: .merchantName)

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

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentLinkUrl, forKey: .paymentLinkUrl)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(externalOrderId, forKey: .externalOrderId)

            try? container.encode(pollingTimeout, forKey: .pollingTimeout)

            try? container.encode(merchantName, forKey: .merchantName)

            try? container.encode(paymentLinkCurrentStatus, forKey: .paymentLinkCurrentStatus)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: GetPaymentLinkResponse
         Used By: Payment
     */

    class GetPaymentLinkResponse: Codable {
        public var paymentLinkUrl: String?

        public var amount: Double?

        public var message: String

        public var externalOrderId: String?

        public var pollingTimeout: Int?

        public var merchantName: String?

        public var paymentLinkCurrentStatus: String?

        public var statusCode: Int

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case paymentLinkUrl = "payment_link_url"

            case amount

            case message

            case externalOrderId = "external_order_id"

            case pollingTimeout = "polling_timeout"

            case merchantName = "merchant_name"

            case paymentLinkCurrentStatus = "payment_link_current_status"

            case statusCode = "status_code"

            case success
        }

        public init(amount: Double? = nil, externalOrderId: String? = nil, merchantName: String? = nil, message: String, paymentLinkCurrentStatus: String? = nil, paymentLinkUrl: String? = nil, pollingTimeout: Int? = nil, statusCode: Int, success: Bool) {
            self.paymentLinkUrl = paymentLinkUrl

            self.amount = amount

            self.message = message

            self.externalOrderId = externalOrderId

            self.pollingTimeout = pollingTimeout

            self.merchantName = merchantName

            self.paymentLinkCurrentStatus = paymentLinkCurrentStatus

            self.statusCode = statusCode

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)

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

            message = try container.decode(String.self, forKey: .message)

            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pollingTimeout = try container.decode(Int.self, forKey: .pollingTimeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantName = try container.decode(String.self, forKey: .merchantName)

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

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentLinkUrl, forKey: .paymentLinkUrl)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encode(externalOrderId, forKey: .externalOrderId)

            try? container.encode(pollingTimeout, forKey: .pollingTimeout)

            try? container.encode(merchantName, forKey: .merchantName)

            try? container.encode(paymentLinkCurrentStatus, forKey: .paymentLinkCurrentStatus)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
