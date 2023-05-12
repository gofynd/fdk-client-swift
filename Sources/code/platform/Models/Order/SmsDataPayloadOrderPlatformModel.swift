

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

        public var amountPaid: Int

        public var paymentMode: String

        public var customerName: String

        public var brandName: String

        public var message: String

        public var shipmentId: Int

        public enum CodingKeys: String, CodingKey {
            case phoneNumber = "phone_number"

            case countryCode = "country_code"

            case orderId = "order_id"

            case amountPaid = "amount_paid"

            case paymentMode = "payment_mode"

            case customerName = "customer_name"

            case brandName = "brand_name"

            case message

            case shipmentId = "shipment_id"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.phoneNumber = phoneNumber

            self.countryCode = countryCode

            self.orderId = orderId

            self.amountPaid = amountPaid

            self.paymentMode = paymentMode

            self.customerName = customerName

            self.brandName = brandName

            self.message = message

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            orderId = try container.decode(String.self, forKey: .orderId)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            customerName = try container.decode(String.self, forKey: .customerName)

            brandName = try container.decode(String.self, forKey: .brandName)

            message = try container.decode(String.self, forKey: .message)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
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

        public var amountPaid: Int

        public var paymentMode: String

        public var customerName: String

        public var brandName: String

        public var message: String

        public var shipmentId: Int

        public enum CodingKeys: String, CodingKey {
            case phoneNumber = "phone_number"

            case countryCode = "country_code"

            case orderId = "order_id"

            case amountPaid = "amount_paid"

            case paymentMode = "payment_mode"

            case customerName = "customer_name"

            case brandName = "brand_name"

            case message

            case shipmentId = "shipment_id"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.phoneNumber = phoneNumber

            self.countryCode = countryCode

            self.orderId = orderId

            self.amountPaid = amountPaid

            self.paymentMode = paymentMode

            self.customerName = customerName

            self.brandName = brandName

            self.message = message

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            orderId = try container.decode(String.self, forKey: .orderId)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            customerName = try container.decode(String.self, forKey: .customerName)

            brandName = try container.decode(String.self, forKey: .brandName)

            message = try container.decode(String.self, forKey: .message)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
