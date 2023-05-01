

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var countryCode: String

        public var brandName: String

        public var customerName: String

        public var message: String

        public var shipmentId: Int

        public var phoneNumber: Int

        public var orderId: String

        public var paymentMode: String

        public var amountPaid: Int

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case brandName = "brand_name"

            case customerName = "customer_name"

            case message

            case shipmentId = "shipment_id"

            case phoneNumber = "phone_number"

            case orderId = "order_id"

            case paymentMode = "payment_mode"

            case amountPaid = "amount_paid"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.countryCode = countryCode

            self.brandName = brandName

            self.customerName = customerName

            self.message = message

            self.shipmentId = shipmentId

            self.phoneNumber = phoneNumber

            self.orderId = orderId

            self.paymentMode = paymentMode

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            brandName = try container.decode(String.self, forKey: .brandName)

            customerName = try container.decode(String.self, forKey: .customerName)

            message = try container.decode(String.self, forKey: .message)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            orderId = try container.decode(String.self, forKey: .orderId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

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

        public var brandName: String

        public var customerName: String

        public var message: String

        public var shipmentId: Int

        public var phoneNumber: Int

        public var orderId: String

        public var paymentMode: String

        public var amountPaid: Int

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case brandName = "brand_name"

            case customerName = "customer_name"

            case message

            case shipmentId = "shipment_id"

            case phoneNumber = "phone_number"

            case orderId = "order_id"

            case paymentMode = "payment_mode"

            case amountPaid = "amount_paid"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.countryCode = countryCode

            self.brandName = brandName

            self.customerName = customerName

            self.message = message

            self.shipmentId = shipmentId

            self.phoneNumber = phoneNumber

            self.orderId = orderId

            self.paymentMode = paymentMode

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            brandName = try container.decode(String.self, forKey: .brandName)

            customerName = try container.decode(String.self, forKey: .customerName)

            message = try container.decode(String.self, forKey: .message)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            orderId = try container.decode(String.self, forKey: .orderId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
