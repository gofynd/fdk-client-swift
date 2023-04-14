

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */

    class PaymentStatusUpdateRequest: Codable {
        public var deviceId: String?

        public var merchantOrderId: String

        public var email: String

        public var contact: String

        public var amount: Int

        public var vpa: String?

        public var status: String

        public var currency: String

        public var customerId: String

        public var method: String

        public var aggregator: String

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case deviceId = "device_id"

            case merchantOrderId = "merchant_order_id"

            case email

            case contact

            case amount

            case vpa

            case status

            case currency

            case customerId = "customer_id"

            case method

            case aggregator

            case orderId = "order_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.deviceId = deviceId

            self.merchantOrderId = merchantOrderId

            self.email = email

            self.contact = contact

            self.amount = amount

            self.vpa = vpa

            self.status = status

            self.currency = currency

            self.customerId = customerId

            self.method = method

            self.aggregator = aggregator

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

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            email = try container.decode(String.self, forKey: .email)

            contact = try container.decode(String.self, forKey: .contact)

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            currency = try container.decode(String.self, forKey: .currency)

            customerId = try container.decode(String.self, forKey: .customerId)

            method = try container.decode(String.self, forKey: .method)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */

    class PaymentStatusUpdateRequest: Codable {
        public var deviceId: String?

        public var merchantOrderId: String

        public var email: String

        public var contact: String

        public var amount: Int

        public var vpa: String?

        public var status: String

        public var currency: String

        public var customerId: String

        public var method: String

        public var aggregator: String

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case deviceId = "device_id"

            case merchantOrderId = "merchant_order_id"

            case email

            case contact

            case amount

            case vpa

            case status

            case currency

            case customerId = "customer_id"

            case method

            case aggregator

            case orderId = "order_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.deviceId = deviceId

            self.merchantOrderId = merchantOrderId

            self.email = email

            self.contact = contact

            self.amount = amount

            self.vpa = vpa

            self.status = status

            self.currency = currency

            self.customerId = customerId

            self.method = method

            self.aggregator = aggregator

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

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            email = try container.decode(String.self, forKey: .email)

            contact = try container.decode(String.self, forKey: .contact)

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(String.self, forKey: .status)

            currency = try container.decode(String.self, forKey: .currency)

            customerId = try container.decode(String.self, forKey: .customerId)

            method = try container.decode(String.self, forKey: .method)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
