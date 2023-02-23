

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var deviceId: String?

        public var customerId: String

        public var currency: String

        public var merchantOrderId: String

        public var vpa: String?

        public var orderId: String

        public var status: String

        public var amount: Int

        public var aggregator: String

        public var contact: String

        public var method: String

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case deviceId = "device_id"

            case customerId = "customer_id"

            case currency

            case merchantOrderId = "merchant_order_id"

            case vpa

            case orderId = "order_id"

            case status

            case amount

            case aggregator

            case contact

            case method

            case email
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.deviceId = deviceId

            self.customerId = customerId

            self.currency = currency

            self.merchantOrderId = merchantOrderId

            self.vpa = vpa

            self.orderId = orderId

            self.status = status

            self.amount = amount

            self.aggregator = aggregator

            self.contact = contact

            self.method = method

            self.email = email
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

            currency = try container.decode(String.self, forKey: .currency)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            status = try container.decode(String.self, forKey: .status)

            amount = try container.decode(Int.self, forKey: .amount)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            contact = try container.decode(String.self, forKey: .contact)

            method = try container.decode(String.self, forKey: .method)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
