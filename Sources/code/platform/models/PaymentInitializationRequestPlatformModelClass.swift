

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentInitializationRequest
         Used By: Payment
     */

    class PaymentInitializationRequest: Codable {
        public var contact: String

        public var currency: String

        public var vpa: String?

        public var deviceId: String?

        public var merchantOrderId: String

        public var method: String

        public var amount: Int

        public var email: String

        public var aggregator: String

        public var timeout: Int?

        public var razorpayPaymentId: String?

        public var orderId: String

        public var customerId: String

        public enum CodingKeys: String, CodingKey {
            case contact

            case currency

            case vpa

            case deviceId = "device_id"

            case merchantOrderId = "merchant_order_id"

            case method

            case amount

            case email

            case aggregator

            case timeout

            case razorpayPaymentId = "razorpay_payment_id"

            case orderId = "order_id"

            case customerId = "customer_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            self.contact = contact

            self.currency = currency

            self.vpa = vpa

            self.deviceId = deviceId

            self.merchantOrderId = merchantOrderId

            self.method = method

            self.amount = amount

            self.email = email

            self.aggregator = aggregator

            self.timeout = timeout

            self.razorpayPaymentId = razorpayPaymentId

            self.orderId = orderId

            self.customerId = customerId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contact = try container.decode(String.self, forKey: .contact)

            currency = try container.decode(String.self, forKey: .currency)

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

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            method = try container.decode(String.self, forKey: .method)

            amount = try container.decode(Int.self, forKey: .amount)

            email = try container.decode(String.self, forKey: .email)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                timeout = try container.decode(Int.self, forKey: .timeout)

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

            orderId = try container.decode(String.self, forKey: .orderId)

            customerId = try container.decode(String.self, forKey: .customerId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(timeout, forKey: .timeout)

            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)
        }
    }
}
