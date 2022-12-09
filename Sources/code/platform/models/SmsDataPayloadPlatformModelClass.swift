

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var paymentMode: String

        public var phoneNumber: Int

        public var countryCode: String

        public var amountPaid: Int

        public var shipmentId: Int

        public var message: String

        public var orderId: String

        public var customerName: String

        public var brandName: String

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case phoneNumber = "phone_number"

            case countryCode = "country_code"

            case amountPaid = "amount_paid"

            case shipmentId = "shipment_id"

            case message

            case orderId = "order_id"

            case customerName = "customer_name"

            case brandName = "brand_name"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.paymentMode = paymentMode

            self.phoneNumber = phoneNumber

            self.countryCode = countryCode

            self.amountPaid = amountPaid

            self.shipmentId = shipmentId

            self.message = message

            self.orderId = orderId

            self.customerName = customerName

            self.brandName = brandName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            message = try container.decode(String.self, forKey: .message)

            orderId = try container.decode(String.self, forKey: .orderId)

            customerName = try container.decode(String.self, forKey: .customerName)

            brandName = try container.decode(String.self, forKey: .brandName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(brandName, forKey: .brandName)
        }
    }
}
