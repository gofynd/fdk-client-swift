

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var orderId: String

        public var countryCode: String

        public var message: String

        public var shipmentId: Int

        public var customerName: String

        public var paymentMode: String

        public var amountPaid: Int

        public var brandName: String

        public var phoneNumber: Int

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case countryCode = "country_code"

            case message

            case shipmentId = "shipment_id"

            case customerName = "customer_name"

            case paymentMode = "payment_mode"

            case amountPaid = "amount_paid"

            case brandName = "brand_name"

            case phoneNumber = "phone_number"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.orderId = orderId

            self.countryCode = countryCode

            self.message = message

            self.shipmentId = shipmentId

            self.customerName = customerName

            self.paymentMode = paymentMode

            self.amountPaid = amountPaid

            self.brandName = brandName

            self.phoneNumber = phoneNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            message = try container.decode(String.self, forKey: .message)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            customerName = try container.decode(String.self, forKey: .customerName)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            brandName = try container.decode(String.self, forKey: .brandName)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var orderId: String

        public var countryCode: String

        public var message: String

        public var shipmentId: Int

        public var customerName: String

        public var paymentMode: String

        public var amountPaid: Int

        public var brandName: String

        public var phoneNumber: Int

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case countryCode = "country_code"

            case message

            case shipmentId = "shipment_id"

            case customerName = "customer_name"

            case paymentMode = "payment_mode"

            case amountPaid = "amount_paid"

            case brandName = "brand_name"

            case phoneNumber = "phone_number"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.orderId = orderId

            self.countryCode = countryCode

            self.message = message

            self.shipmentId = shipmentId

            self.customerName = customerName

            self.paymentMode = paymentMode

            self.amountPaid = amountPaid

            self.brandName = brandName

            self.phoneNumber = phoneNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            message = try container.decode(String.self, forKey: .message)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            customerName = try container.decode(String.self, forKey: .customerName)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            brandName = try container.decode(String.self, forKey: .brandName)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        }
    }
}
