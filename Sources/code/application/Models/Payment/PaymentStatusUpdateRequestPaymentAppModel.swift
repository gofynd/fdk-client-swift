

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var deviceId: String?

        public var customerId: String

        public var merchantOrderId: String

        public var paymentId: String?

        public var currency: String?

        public var razorpayPaymentId: String?

        public var amount: Int

        public var vpa: String?

        public var contact: String?

        public var method: String

        public var email: String?

        public var status: String

        public var aggregator: String

        public var merchantTransactionId: String

        public var orderId: String?

        public enum CodingKeys: String, CodingKey {
            case deviceId = "device_id"

            case customerId = "customer_id"

            case merchantOrderId = "merchant_order_id"

            case paymentId = "payment_id"

            case currency

            case razorpayPaymentId = "razorpay_payment_id"

            case amount

            case vpa

            case contact

            case method

            case email

            case status

            case aggregator

            case merchantTransactionId = "merchant_transaction_id"

            case orderId = "order_id"
        }

        public init(aggregator: String, amount: Int, contact: String? = nil, currency: String? = nil, customerId: String, deviceId: String? = nil, email: String? = nil, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String? = nil, paymentId: String? = nil, razorpayPaymentId: String? = nil, status: String, vpa: String? = nil) {
            self.deviceId = deviceId

            self.customerId = customerId

            self.merchantOrderId = merchantOrderId

            self.paymentId = paymentId

            self.currency = currency

            self.razorpayPaymentId = razorpayPaymentId

            self.amount = amount

            self.vpa = vpa

            self.contact = contact

            self.method = method

            self.email = email

            self.status = status

            self.aggregator = aggregator

            self.merchantTransactionId = merchantTransactionId

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerId = try container.decode(String.self, forKey: .customerId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

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

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contact = try container.decode(String.self, forKey: .contact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            method = try container.decode(String.self, forKey: .method)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
