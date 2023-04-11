

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */

    class PaymentStatusUpdateRequest: Codable {
        public var contact: String

        public var vpa: String?

        public var email: String

        public var status: String

        public var customerId: String

        public var currency: String

        public var merchantOrderId: String

        public var deviceId: String?

        public var orderId: String

        public var amount: Int

        public var aggregator: String

        public var method: String

        public enum CodingKeys: String, CodingKey {
            case contact

            case vpa

            case email

            case status

            case customerId = "customer_id"

            case currency

            case merchantOrderId = "merchant_order_id"

            case deviceId = "device_id"

            case orderId = "order_id"

            case amount

            case aggregator

            case method
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.contact = contact

            self.vpa = vpa

            self.email = email

            self.status = status

            self.customerId = customerId

            self.currency = currency

            self.merchantOrderId = merchantOrderId

            self.deviceId = deviceId

            self.orderId = orderId

            self.amount = amount

            self.aggregator = aggregator

            self.method = method
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contact = try container.decode(String.self, forKey: .contact)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            status = try container.decode(String.self, forKey: .status)

            customerId = try container.decode(String.self, forKey: .customerId)

            currency = try container.decode(String.self, forKey: .currency)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            amount = try container.decode(Int.self, forKey: .amount)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            method = try container.decode(String.self, forKey: .method)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(method, forKey: .method)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */

    class PaymentStatusUpdateRequest: Codable {
        public var contact: String

        public var vpa: String?

        public var email: String

        public var status: String

        public var customerId: String

        public var currency: String

        public var merchantOrderId: String

        public var deviceId: String?

        public var orderId: String

        public var amount: Int

        public var aggregator: String

        public var method: String

        public enum CodingKeys: String, CodingKey {
            case contact

            case vpa

            case email

            case status

            case customerId = "customer_id"

            case currency

            case merchantOrderId = "merchant_order_id"

            case deviceId = "device_id"

            case orderId = "order_id"

            case amount

            case aggregator

            case method
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.contact = contact

            self.vpa = vpa

            self.email = email

            self.status = status

            self.customerId = customerId

            self.currency = currency

            self.merchantOrderId = merchantOrderId

            self.deviceId = deviceId

            self.orderId = orderId

            self.amount = amount

            self.aggregator = aggregator

            self.method = method
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contact = try container.decode(String.self, forKey: .contact)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            status = try container.decode(String.self, forKey: .status)

            customerId = try container.decode(String.self, forKey: .customerId)

            currency = try container.decode(String.self, forKey: .currency)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            amount = try container.decode(Int.self, forKey: .amount)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            method = try container.decode(String.self, forKey: .method)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(method, forKey: .method)
        }
    }
}
