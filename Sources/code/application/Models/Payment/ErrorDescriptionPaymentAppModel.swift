

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: ErrorDescription
         Used By: Payment
     */
    class ErrorDescription: Codable {
        public var merchantOrderId: String?

        public var msg: String?

        public var expired: Bool?

        public var cancelled: Bool?

        public var invalidId: Bool?

        public var amount: Double?

        public var merchantName: String?

        public var paymentTransactionId: String?

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case msg

            case expired

            case cancelled

            case invalidId = "invalid_id"

            case amount

            case merchantName = "merchant_name"

            case paymentTransactionId = "payment_transaction_id"
        }

        public init(amount: Double? = nil, cancelled: Bool? = nil, expired: Bool? = nil, invalidId: Bool? = nil, merchantName: String? = nil, merchantOrderId: String? = nil, msg: String? = nil, paymentTransactionId: String? = nil) {
            self.merchantOrderId = merchantOrderId

            self.msg = msg

            self.expired = expired

            self.cancelled = cancelled

            self.invalidId = invalidId

            self.amount = amount

            self.merchantName = merchantName

            self.paymentTransactionId = paymentTransactionId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                msg = try container.decode(String.self, forKey: .msg)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expired = try container.decode(Bool.self, forKey: .expired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cancelled = try container.decode(Bool.self, forKey: .cancelled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invalidId = try container.decode(Bool.self, forKey: .invalidId)

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
                merchantName = try container.decode(String.self, forKey: .merchantName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentTransactionId = try container.decode(String.self, forKey: .paymentTransactionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(msg, forKey: .msg)

            try? container.encode(expired, forKey: .expired)

            try? container.encode(cancelled, forKey: .cancelled)

            try? container.encode(invalidId, forKey: .invalidId)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(merchantName, forKey: .merchantName)

            try? container.encode(paymentTransactionId, forKey: .paymentTransactionId)
        }
    }
}
