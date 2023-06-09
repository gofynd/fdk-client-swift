

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var success: Bool?

        public var method: String

        public var orderId: String?

        public var email: String?

        public var vpa: String

        public var customerId: String

        public var amount: Int

        public var currency: String?

        public var paymentId: String?

        public var aggregator: String

        public var merchantOrderId: String

        public var contact: String?

        public var razorpayPaymentId: String?

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case success

            case method

            case orderId = "order_id"

            case email

            case vpa

            case customerId = "customer_id"

            case amount

            case currency

            case paymentId = "payment_id"

            case aggregator

            case merchantOrderId = "merchant_order_id"

            case contact

            case razorpayPaymentId = "razorpay_payment_id"

            case status
        }

        public init(aggregator: String, amount: Int, contact: String? = nil, currency: String? = nil, customerId: String, email: String? = nil, merchantOrderId: String, method: String, orderId: String? = nil, paymentId: String? = nil, razorpayPaymentId: String? = nil, status: String, success: Bool? = nil, vpa: String) {
            self.success = success

            self.method = method

            self.orderId = orderId

            self.email = email

            self.vpa = vpa

            self.customerId = customerId

            self.amount = amount

            self.currency = currency

            self.paymentId = paymentId

            self.aggregator = aggregator

            self.merchantOrderId = merchantOrderId

            self.contact = contact

            self.razorpayPaymentId = razorpayPaymentId

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            method = try container.decode(String.self, forKey: .method)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            vpa = try container.decode(String.self, forKey: .vpa)

            customerId = try container.decode(String.self, forKey: .customerId)

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                contact = try container.decode(String.self, forKey: .contact)

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

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(success, forKey: .success)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
