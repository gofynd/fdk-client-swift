

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var phoneNumber: Int

        public var orderId: String

        public var amountPaid: Int

        public var shipmentId: Int

        public var brandName: String

        public var countryCode: String

        public var message: String

        public var paymentMode: String

        public var customerName: String

        public enum CodingKeys: String, CodingKey {
            case phoneNumber = "phone_number"

            case orderId = "order_id"

            case amountPaid = "amount_paid"

            case shipmentId = "shipment_id"

            case brandName = "brand_name"

            case countryCode = "country_code"

            case message

            case paymentMode = "payment_mode"

            case customerName = "customer_name"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.phoneNumber = phoneNumber

            self.orderId = orderId

            self.amountPaid = amountPaid

            self.shipmentId = shipmentId

            self.brandName = brandName

            self.countryCode = countryCode

            self.message = message

            self.paymentMode = paymentMode

            self.customerName = customerName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            orderId = try container.decode(String.self, forKey: .orderId)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            brandName = try container.decode(String.self, forKey: .brandName)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            message = try container.decode(String.self, forKey: .message)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            customerName = try container.decode(String.self, forKey: .customerName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(customerName, forKey: .customerName)
        }
    }
}
