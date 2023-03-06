

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var phoneNumber: Int

        public var shipmentId: Int

        public var message: String

        public var paymentMode: String

        public var orderId: String

        public var amountPaid: Int

        public var countryCode: String

        public var customerName: String

        public var brandName: String

        public enum CodingKeys: String, CodingKey {
            case phoneNumber = "phone_number"

            case shipmentId = "shipment_id"

            case message

            case paymentMode = "payment_mode"

            case orderId = "order_id"

            case amountPaid = "amount_paid"

            case countryCode = "country_code"

            case customerName = "customer_name"

            case brandName = "brand_name"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.phoneNumber = phoneNumber

            self.shipmentId = shipmentId

            self.message = message

            self.paymentMode = paymentMode

            self.orderId = orderId

            self.amountPaid = amountPaid

            self.countryCode = countryCode

            self.customerName = customerName

            self.brandName = brandName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            message = try container.decode(String.self, forKey: .message)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            orderId = try container.decode(String.self, forKey: .orderId)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            customerName = try container.decode(String.self, forKey: .customerName)

            brandName = try container.decode(String.self, forKey: .brandName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(brandName, forKey: .brandName)
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

        public var shipmentId: Int

        public var message: String

        public var paymentMode: String

        public var orderId: String

        public var amountPaid: Int

        public var countryCode: String

        public var customerName: String

        public var brandName: String

        public enum CodingKeys: String, CodingKey {
            case phoneNumber = "phone_number"

            case shipmentId = "shipment_id"

            case message

            case paymentMode = "payment_mode"

            case orderId = "order_id"

            case amountPaid = "amount_paid"

            case countryCode = "country_code"

            case customerName = "customer_name"

            case brandName = "brand_name"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.phoneNumber = phoneNumber

            self.shipmentId = shipmentId

            self.message = message

            self.paymentMode = paymentMode

            self.orderId = orderId

            self.amountPaid = amountPaid

            self.countryCode = countryCode

            self.customerName = customerName

            self.brandName = brandName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            message = try container.decode(String.self, forKey: .message)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            orderId = try container.decode(String.self, forKey: .orderId)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            customerName = try container.decode(String.self, forKey: .customerName)

            brandName = try container.decode(String.self, forKey: .brandName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(brandName, forKey: .brandName)
        }
    }
}
