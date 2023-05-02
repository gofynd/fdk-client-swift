

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var phoneNumber: Int

        public var countryCode: String

        public var orderId: String

        public var message: String

        public var brandName: String

        public var amountPaid: Int

        public var paymentMode: String

        public var shipmentId: Int

        public var customerName: String

        public enum CodingKeys: String, CodingKey {
            case phoneNumber = "phone_number"

            case countryCode = "country_code"

            case orderId = "order_id"

            case message

            case brandName = "brand_name"

            case amountPaid = "amount_paid"

            case paymentMode = "payment_mode"

            case shipmentId = "shipment_id"

            case customerName = "customer_name"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.phoneNumber = phoneNumber

            self.countryCode = countryCode

            self.orderId = orderId

            self.message = message

            self.brandName = brandName

            self.amountPaid = amountPaid

            self.paymentMode = paymentMode

            self.shipmentId = shipmentId

            self.customerName = customerName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            orderId = try container.decode(String.self, forKey: .orderId)

            message = try container.decode(String.self, forKey: .message)

            brandName = try container.decode(String.self, forKey: .brandName)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            customerName = try container.decode(String.self, forKey: .customerName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(customerName, forKey: .customerName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var phoneNumber: Int

        public var countryCode: String

        public var orderId: String

        public var message: String

        public var brandName: String

        public var amountPaid: Int

        public var paymentMode: String

        public var shipmentId: Int

        public var customerName: String

        public enum CodingKeys: String, CodingKey {
            case phoneNumber = "phone_number"

            case countryCode = "country_code"

            case orderId = "order_id"

            case message

            case brandName = "brand_name"

            case amountPaid = "amount_paid"

            case paymentMode = "payment_mode"

            case shipmentId = "shipment_id"

            case customerName = "customer_name"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.phoneNumber = phoneNumber

            self.countryCode = countryCode

            self.orderId = orderId

            self.message = message

            self.brandName = brandName

            self.amountPaid = amountPaid

            self.paymentMode = paymentMode

            self.shipmentId = shipmentId

            self.customerName = customerName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            orderId = try container.decode(String.self, forKey: .orderId)

            message = try container.decode(String.self, forKey: .message)

            brandName = try container.decode(String.self, forKey: .brandName)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            customerName = try container.decode(String.self, forKey: .customerName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(customerName, forKey: .customerName)
        }
    }
}
