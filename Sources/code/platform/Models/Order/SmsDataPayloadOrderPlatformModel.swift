

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var countryCode: String

        public var paymentMode: String

        public var brandName: String

        public var orderId: String

        public var phoneNumber: Int

        public var customerName: String

        public var shipmentId: Int

        public var amountPaid: Int

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case paymentMode = "payment_mode"

            case brandName = "brand_name"

            case orderId = "order_id"

            case phoneNumber = "phone_number"

            case customerName = "customer_name"

            case shipmentId = "shipment_id"

            case amountPaid = "amount_paid"

            case message
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.countryCode = countryCode

            self.paymentMode = paymentMode

            self.brandName = brandName

            self.orderId = orderId

            self.phoneNumber = phoneNumber

            self.customerName = customerName

            self.shipmentId = shipmentId

            self.amountPaid = amountPaid

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            brandName = try container.decode(String.self, forKey: .brandName)

            orderId = try container.decode(String.self, forKey: .orderId)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            customerName = try container.decode(String.self, forKey: .customerName)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var countryCode: String

        public var paymentMode: String

        public var brandName: String

        public var orderId: String

        public var phoneNumber: Int

        public var customerName: String

        public var shipmentId: Int

        public var amountPaid: Int

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case paymentMode = "payment_mode"

            case brandName = "brand_name"

            case orderId = "order_id"

            case phoneNumber = "phone_number"

            case customerName = "customer_name"

            case shipmentId = "shipment_id"

            case amountPaid = "amount_paid"

            case message
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.countryCode = countryCode

            self.paymentMode = paymentMode

            self.brandName = brandName

            self.orderId = orderId

            self.phoneNumber = phoneNumber

            self.customerName = customerName

            self.shipmentId = shipmentId

            self.amountPaid = amountPaid

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            brandName = try container.decode(String.self, forKey: .brandName)

            orderId = try container.decode(String.self, forKey: .orderId)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            customerName = try container.decode(String.self, forKey: .customerName)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
