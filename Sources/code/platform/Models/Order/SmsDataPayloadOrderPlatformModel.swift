

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var paymentMode: String

        public var countryCode: String

        public var phoneNumber: Int

        public var message: String

        public var customerName: String

        public var shipmentId: Int

        public var brandName: String

        public var orderId: String

        public var amountPaid: Int

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case countryCode = "country_code"

            case phoneNumber = "phone_number"

            case message

            case customerName = "customer_name"

            case shipmentId = "shipment_id"

            case brandName = "brand_name"

            case orderId = "order_id"

            case amountPaid = "amount_paid"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.paymentMode = paymentMode

            self.countryCode = countryCode

            self.phoneNumber = phoneNumber

            self.message = message

            self.customerName = customerName

            self.shipmentId = shipmentId

            self.brandName = brandName

            self.orderId = orderId

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            message = try container.decode(String.self, forKey: .message)

            customerName = try container.decode(String.self, forKey: .customerName)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            brandName = try container.decode(String.self, forKey: .brandName)

            orderId = try container.decode(String.self, forKey: .orderId)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var paymentMode: String

        public var countryCode: String

        public var phoneNumber: Int

        public var message: String

        public var customerName: String

        public var shipmentId: Int

        public var brandName: String

        public var orderId: String

        public var amountPaid: Int

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case countryCode = "country_code"

            case phoneNumber = "phone_number"

            case message

            case customerName = "customer_name"

            case shipmentId = "shipment_id"

            case brandName = "brand_name"

            case orderId = "order_id"

            case amountPaid = "amount_paid"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.paymentMode = paymentMode

            self.countryCode = countryCode

            self.phoneNumber = phoneNumber

            self.message = message

            self.customerName = customerName

            self.shipmentId = shipmentId

            self.brandName = brandName

            self.orderId = orderId

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            message = try container.decode(String.self, forKey: .message)

            customerName = try container.decode(String.self, forKey: .customerName)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            brandName = try container.decode(String.self, forKey: .brandName)

            orderId = try container.decode(String.self, forKey: .orderId)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
