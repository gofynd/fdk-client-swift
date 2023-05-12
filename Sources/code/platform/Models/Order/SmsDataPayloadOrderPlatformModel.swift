

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var message: String

        public var customerName: String

        public var brandName: String

        public var paymentMode: String

        public var shipmentId: Int

        public var countryCode: String

        public var orderId: String

        public var phoneNumber: Int

        public var amountPaid: Int

        public enum CodingKeys: String, CodingKey {
            case message

            case customerName = "customer_name"

            case brandName = "brand_name"

            case paymentMode = "payment_mode"

            case shipmentId = "shipment_id"

            case countryCode = "country_code"

            case orderId = "order_id"

            case phoneNumber = "phone_number"

            case amountPaid = "amount_paid"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.message = message

            self.customerName = customerName

            self.brandName = brandName

            self.paymentMode = paymentMode

            self.shipmentId = shipmentId

            self.countryCode = countryCode

            self.orderId = orderId

            self.phoneNumber = phoneNumber

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            customerName = try container.decode(String.self, forKey: .customerName)

            brandName = try container.decode(String.self, forKey: .brandName)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            orderId = try container.decode(String.self, forKey: .orderId)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

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
        public var message: String

        public var customerName: String

        public var brandName: String

        public var paymentMode: String

        public var shipmentId: Int

        public var countryCode: String

        public var orderId: String

        public var phoneNumber: Int

        public var amountPaid: Int

        public enum CodingKeys: String, CodingKey {
            case message

            case customerName = "customer_name"

            case brandName = "brand_name"

            case paymentMode = "payment_mode"

            case shipmentId = "shipment_id"

            case countryCode = "country_code"

            case orderId = "order_id"

            case phoneNumber = "phone_number"

            case amountPaid = "amount_paid"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.message = message

            self.customerName = customerName

            self.brandName = brandName

            self.paymentMode = paymentMode

            self.shipmentId = shipmentId

            self.countryCode = countryCode

            self.orderId = orderId

            self.phoneNumber = phoneNumber

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            customerName = try container.decode(String.self, forKey: .customerName)

            brandName = try container.decode(String.self, forKey: .brandName)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            orderId = try container.decode(String.self, forKey: .orderId)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
