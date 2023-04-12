

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var amountPaid: Int

        public var shipmentId: Int

        public var customerName: String

        public var orderId: String

        public var paymentMode: String

        public var countryCode: String

        public var message: String

        public var phoneNumber: Int

        public var brandName: String

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case shipmentId = "shipment_id"

            case customerName = "customer_name"

            case orderId = "order_id"

            case paymentMode = "payment_mode"

            case countryCode = "country_code"

            case message

            case phoneNumber = "phone_number"

            case brandName = "brand_name"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.amountPaid = amountPaid

            self.shipmentId = shipmentId

            self.customerName = customerName

            self.orderId = orderId

            self.paymentMode = paymentMode

            self.countryCode = countryCode

            self.message = message

            self.phoneNumber = phoneNumber

            self.brandName = brandName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            customerName = try container.decode(String.self, forKey: .customerName)

            orderId = try container.decode(String.self, forKey: .orderId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            message = try container.decode(String.self, forKey: .message)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            brandName = try container.decode(String.self, forKey: .brandName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

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
        public var amountPaid: Int

        public var shipmentId: Int

        public var customerName: String

        public var orderId: String

        public var paymentMode: String

        public var countryCode: String

        public var message: String

        public var phoneNumber: Int

        public var brandName: String

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case shipmentId = "shipment_id"

            case customerName = "customer_name"

            case orderId = "order_id"

            case paymentMode = "payment_mode"

            case countryCode = "country_code"

            case message

            case phoneNumber = "phone_number"

            case brandName = "brand_name"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.amountPaid = amountPaid

            self.shipmentId = shipmentId

            self.customerName = customerName

            self.orderId = orderId

            self.paymentMode = paymentMode

            self.countryCode = countryCode

            self.message = message

            self.phoneNumber = phoneNumber

            self.brandName = brandName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            customerName = try container.decode(String.self, forKey: .customerName)

            orderId = try container.decode(String.self, forKey: .orderId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            message = try container.decode(String.self, forKey: .message)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            brandName = try container.decode(String.self, forKey: .brandName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(brandName, forKey: .brandName)
        }
    }
}
