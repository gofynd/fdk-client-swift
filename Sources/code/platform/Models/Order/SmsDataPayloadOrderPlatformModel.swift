

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var message: String

        public var customerName: String

        public var countryCode: String

        public var brandName: String

        public var amountPaid: Int

        public var orderId: String

        public var phoneNumber: Int

        public var shipmentId: Int

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case message

            case customerName = "customer_name"

            case countryCode = "country_code"

            case brandName = "brand_name"

            case amountPaid = "amount_paid"

            case orderId = "order_id"

            case phoneNumber = "phone_number"

            case shipmentId = "shipment_id"

            case paymentMode = "payment_mode"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.message = message

            self.customerName = customerName

            self.countryCode = countryCode

            self.brandName = brandName

            self.amountPaid = amountPaid

            self.orderId = orderId

            self.phoneNumber = phoneNumber

            self.shipmentId = shipmentId

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            customerName = try container.decode(String.self, forKey: .customerName)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            brandName = try container.decode(String.self, forKey: .brandName)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            orderId = try container.decode(String.self, forKey: .orderId)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

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
        public var message: String

        public var customerName: String

        public var countryCode: String

        public var brandName: String

        public var amountPaid: Int

        public var orderId: String

        public var phoneNumber: Int

        public var shipmentId: Int

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case message

            case customerName = "customer_name"

            case countryCode = "country_code"

            case brandName = "brand_name"

            case amountPaid = "amount_paid"

            case orderId = "order_id"

            case phoneNumber = "phone_number"

            case shipmentId = "shipment_id"

            case paymentMode = "payment_mode"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.message = message

            self.customerName = customerName

            self.countryCode = countryCode

            self.brandName = brandName

            self.amountPaid = amountPaid

            self.orderId = orderId

            self.phoneNumber = phoneNumber

            self.shipmentId = shipmentId

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            customerName = try container.decode(String.self, forKey: .customerName)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            brandName = try container.decode(String.self, forKey: .brandName)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            orderId = try container.decode(String.self, forKey: .orderId)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}
