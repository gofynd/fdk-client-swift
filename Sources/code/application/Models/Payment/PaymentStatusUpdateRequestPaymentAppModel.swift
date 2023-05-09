

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var status: String

        public var method: String

        public var contact: String?

        public var orderId: String?

        public var deviceId: String?

        public var customerId: String

        public var merchantTransactionId: String

        public var currency: String?

        public var vpa: String?

        public var razorpayPaymentId: String?

        public var amount: Int

        public var aggregator: String

        public var email: String?

        public var merchantOrderId: String

        public var paymentId: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case method

            case contact

            case orderId = "order_id"

            case deviceId = "device_id"

            case customerId = "customer_id"

            case merchantTransactionId = "merchant_transaction_id"

            case currency

            case vpa

            case razorpayPaymentId = "razorpay_payment_id"

            case amount

            case aggregator

            case email

            case merchantOrderId = "merchant_order_id"

            case paymentId = "payment_id"
        }

        public init(aggregator: String, amount: Int, contact: String? = nil, currency: String? = nil, customerId: String, deviceId: String? = nil, email: String? = nil, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String? = nil, paymentId: String? = nil, razorpayPaymentId: String? = nil, status: String, vpa: String? = nil) {
            self.status = status

            self.method = method

            self.contact = contact

            self.orderId = orderId

            self.deviceId = deviceId

            self.customerId = customerId

            self.merchantTransactionId = merchantTransactionId

            self.currency = currency

            self.vpa = vpa

            self.razorpayPaymentId = razorpayPaymentId

            self.amount = amount

            self.aggregator = aggregator

            self.email = email

            self.merchantOrderId = merchantOrderId

            self.paymentId = paymentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            method = try container.decode(String.self, forKey: .method)

            do {
                contact = try container.decode(String.self, forKey: .contact)

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
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerId = try container.decode(String.self, forKey: .customerId)

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amount = try container.decode(Int.self, forKey: .amount)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(paymentId, forKey: .paymentId)
        }
    }
}
