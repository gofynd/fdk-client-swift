

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var shipmentId: Int

        public var message: String

        public var paymentMode: String

        public var amountPaid: Int

        public var customerName: String

        public var countryCode: String

        public var phoneNumber: Int

        public var orderId: String

        public var brandName: String

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case message

            case paymentMode = "payment_mode"

            case amountPaid = "amount_paid"

            case customerName = "customer_name"

            case countryCode = "country_code"

            case phoneNumber = "phone_number"

            case orderId = "order_id"

            case brandName = "brand_name"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.shipmentId = shipmentId

            self.message = message

            self.paymentMode = paymentMode

            self.amountPaid = amountPaid

            self.customerName = customerName

            self.countryCode = countryCode

            self.phoneNumber = phoneNumber

            self.orderId = orderId

            self.brandName = brandName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            message = try container.decode(String.self, forKey: .message)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            customerName = try container.decode(String.self, forKey: .customerName)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            orderId = try container.decode(String.self, forKey: .orderId)

            brandName = try container.decode(String.self, forKey: .brandName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

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
        public var shipmentId: Int

        public var message: String

        public var paymentMode: String

        public var amountPaid: Int

        public var customerName: String

        public var countryCode: String

        public var phoneNumber: Int

        public var orderId: String

        public var brandName: String

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case message

            case paymentMode = "payment_mode"

            case amountPaid = "amount_paid"

            case customerName = "customer_name"

            case countryCode = "country_code"

            case phoneNumber = "phone_number"

            case orderId = "order_id"

            case brandName = "brand_name"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.shipmentId = shipmentId

            self.message = message

            self.paymentMode = paymentMode

            self.amountPaid = amountPaid

            self.customerName = customerName

            self.countryCode = countryCode

            self.phoneNumber = phoneNumber

            self.orderId = orderId

            self.brandName = brandName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            message = try container.decode(String.self, forKey: .message)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            customerName = try container.decode(String.self, forKey: .customerName)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            orderId = try container.decode(String.self, forKey: .orderId)

            brandName = try container.decode(String.self, forKey: .brandName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(brandName, forKey: .brandName)
        }
    }
}
