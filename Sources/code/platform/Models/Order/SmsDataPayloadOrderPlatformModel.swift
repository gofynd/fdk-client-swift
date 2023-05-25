

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var orderId: String

        public var countryCode: String

        public var amountPaid: Int

        public var customerName: String

        public var brandName: String

        public var phoneNumber: Int

        public var shipmentId: Int

        public var message: String

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case countryCode = "country_code"

            case amountPaid = "amount_paid"

            case customerName = "customer_name"

            case brandName = "brand_name"

            case phoneNumber = "phone_number"

            case shipmentId = "shipment_id"

            case message

            case paymentMode = "payment_mode"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.orderId = orderId

            self.countryCode = countryCode

            self.amountPaid = amountPaid

            self.customerName = customerName

            self.brandName = brandName

            self.phoneNumber = phoneNumber

            self.shipmentId = shipmentId

            self.message = message

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            customerName = try container.decode(String.self, forKey: .customerName)

            brandName = try container.decode(String.self, forKey: .brandName)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            message = try container.decode(String.self, forKey: .message)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
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

        public var amountPaid: Int

        public var customerName: String

        public var brandName: String

        public var phoneNumber: Int

        public var shipmentId: Int

        public var message: String

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case countryCode = "country_code"

            case amountPaid = "amount_paid"

            case customerName = "customer_name"

            case brandName = "brand_name"

            case phoneNumber = "phone_number"

            case shipmentId = "shipment_id"

            case message

            case paymentMode = "payment_mode"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.orderId = orderId

            self.countryCode = countryCode

            self.amountPaid = amountPaid

            self.customerName = customerName

            self.brandName = brandName

            self.phoneNumber = phoneNumber

            self.shipmentId = shipmentId

            self.message = message

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            customerName = try container.decode(String.self, forKey: .customerName)

            brandName = try container.decode(String.self, forKey: .brandName)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            message = try container.decode(String.self, forKey: .message)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}
