

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var amountPaid: Int

        public var brandName: String

        public var phoneNumber: Int

        public var orderId: String

        public var message: String

        public var shipmentId: Int

        public var paymentMode: String

        public var countryCode: String

        public var customerName: String

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case brandName = "brand_name"

            case phoneNumber = "phone_number"

            case orderId = "order_id"

            case message

            case shipmentId = "shipment_id"

            case paymentMode = "payment_mode"

            case countryCode = "country_code"

            case customerName = "customer_name"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.amountPaid = amountPaid

            self.brandName = brandName

            self.phoneNumber = phoneNumber

            self.orderId = orderId

            self.message = message

            self.shipmentId = shipmentId

            self.paymentMode = paymentMode

            self.countryCode = countryCode

            self.customerName = customerName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            brandName = try container.decode(String.self, forKey: .brandName)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            orderId = try container.decode(String.self, forKey: .orderId)

            message = try container.decode(String.self, forKey: .message)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            customerName = try container.decode(String.self, forKey: .customerName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(customerName, forKey: .customerName)
        }
    }
}
