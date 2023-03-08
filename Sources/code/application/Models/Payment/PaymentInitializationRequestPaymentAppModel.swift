

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */
    class PaymentInitializationRequest: Codable {
        public var contact: String

        public var currency: String

        public var razorpayPaymentId: String?

        public var vpa: String?

        public var deviceId: String?

        public var email: String

        public var method: String

        public var customerId: String

        public var aggregator: String

        public var amount: Int

        public var merchantOrderId: String

        public var timeout: Int?

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case contact

            case currency

            case razorpayPaymentId = "razorpay_payment_id"

            case vpa

            case deviceId = "device_id"

            case email

            case method

            case customerId = "customer_id"

            case aggregator

            case amount

            case merchantOrderId = "merchant_order_id"

            case timeout

            case orderId = "order_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.contact = contact

            self.currency = currency

            self.razorpayPaymentId = razorpayPaymentId

            self.vpa = vpa

            self.deviceId = deviceId

            self.email = email

            self.method = method

            self.customerId = customerId

            self.aggregator = aggregator

            self.amount = amount

            self.merchantOrderId = merchantOrderId

            self.timeout = timeout

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contact = try container.decode(String.self, forKey: .contact)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)

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
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            method = try container.decode(String.self, forKey: .method)

            customerId = try container.decode(String.self, forKey: .customerId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            amount = try container.decode(Int.self, forKey: .amount)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
