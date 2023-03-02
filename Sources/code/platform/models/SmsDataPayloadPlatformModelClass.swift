

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var shipmentId: Int

        public var brandName: String

        public var countryCode: String

        public var customerName: String

        public var orderId: String

        public var paymentMode: String

        public var phoneNumber: Int

        public var amountPaid: Int

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case brandName = "brand_name"

            case countryCode = "country_code"

            case customerName = "customer_name"

            case orderId = "order_id"

            case paymentMode = "payment_mode"

            case phoneNumber = "phone_number"

            case amountPaid = "amount_paid"

            case message
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.shipmentId = shipmentId

            self.brandName = brandName

            self.countryCode = countryCode

            self.customerName = customerName

            self.orderId = orderId

            self.paymentMode = paymentMode

            self.phoneNumber = phoneNumber

            self.amountPaid = amountPaid

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            brandName = try container.decode(String.self, forKey: .brandName)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            customerName = try container.decode(String.self, forKey: .customerName)

            orderId = try container.decode(String.self, forKey: .orderId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
