

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var countryCode: String

        public var phoneNumber: Int

        public var paymentMode: String

        public var customerName: String

        public var orderId: String

        public var shipmentId: Int

        public var message: String

        public var brandName: String

        public var amountPaid: Int

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case phoneNumber = "phone_number"

            case paymentMode = "payment_mode"

            case customerName = "customer_name"

            case orderId = "order_id"

            case shipmentId = "shipment_id"

            case message

            case brandName = "brand_name"

            case amountPaid = "amount_paid"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.countryCode = countryCode

            self.phoneNumber = phoneNumber

            self.paymentMode = paymentMode

            self.customerName = customerName

            self.orderId = orderId

            self.shipmentId = shipmentId

            self.message = message

            self.brandName = brandName

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            customerName = try container.decode(String.self, forKey: .customerName)

            orderId = try container.decode(String.self, forKey: .orderId)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            message = try container.decode(String.self, forKey: .message)

            brandName = try container.decode(String.self, forKey: .brandName)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

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
        public var countryCode: String

        public var phoneNumber: Int

        public var paymentMode: String

        public var customerName: String

        public var orderId: String

        public var shipmentId: Int

        public var message: String

        public var brandName: String

        public var amountPaid: Int

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case phoneNumber = "phone_number"

            case paymentMode = "payment_mode"

            case customerName = "customer_name"

            case orderId = "order_id"

            case shipmentId = "shipment_id"

            case message

            case brandName = "brand_name"

            case amountPaid = "amount_paid"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.countryCode = countryCode

            self.phoneNumber = phoneNumber

            self.paymentMode = paymentMode

            self.customerName = customerName

            self.orderId = orderId

            self.shipmentId = shipmentId

            self.message = message

            self.brandName = brandName

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            customerName = try container.decode(String.self, forKey: .customerName)

            orderId = try container.decode(String.self, forKey: .orderId)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            message = try container.decode(String.self, forKey: .message)

            brandName = try container.decode(String.self, forKey: .brandName)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
