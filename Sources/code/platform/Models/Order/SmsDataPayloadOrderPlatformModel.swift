

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var amountPaid: Int

        public var orderId: String

        public var shipmentId: Int

        public var customerName: String

        public var brandName: String

        public var message: String

        public var paymentMode: String

        public var phoneNumber: Int

        public var countryCode: String

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case orderId = "order_id"

            case shipmentId = "shipment_id"

            case customerName = "customer_name"

            case brandName = "brand_name"

            case message

            case paymentMode = "payment_mode"

            case phoneNumber = "phone_number"

            case countryCode = "country_code"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.amountPaid = amountPaid

            self.orderId = orderId

            self.shipmentId = shipmentId

            self.customerName = customerName

            self.brandName = brandName

            self.message = message

            self.paymentMode = paymentMode

            self.phoneNumber = phoneNumber

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            orderId = try container.decode(String.self, forKey: .orderId)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            customerName = try container.decode(String.self, forKey: .customerName)

            brandName = try container.decode(String.self, forKey: .brandName)

            message = try container.decode(String.self, forKey: .message)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            countryCode = try container.decode(String.self, forKey: .countryCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
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

        public var orderId: String

        public var shipmentId: Int

        public var customerName: String

        public var brandName: String

        public var message: String

        public var paymentMode: String

        public var phoneNumber: Int

        public var countryCode: String

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case orderId = "order_id"

            case shipmentId = "shipment_id"

            case customerName = "customer_name"

            case brandName = "brand_name"

            case message

            case paymentMode = "payment_mode"

            case phoneNumber = "phone_number"

            case countryCode = "country_code"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.amountPaid = amountPaid

            self.orderId = orderId

            self.shipmentId = shipmentId

            self.customerName = customerName

            self.brandName = brandName

            self.message = message

            self.paymentMode = paymentMode

            self.phoneNumber = phoneNumber

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            orderId = try container.decode(String.self, forKey: .orderId)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            customerName = try container.decode(String.self, forKey: .customerName)

            brandName = try container.decode(String.self, forKey: .brandName)

            message = try container.decode(String.self, forKey: .message)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            countryCode = try container.decode(String.self, forKey: .countryCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }
}
