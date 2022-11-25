

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var orderId: String

        public var paymentMode: String

        public var brandName: String

        public var message: String

        public var customerName: String

        public var countryCode: String

        public var shipmentId: Int

        public var amountPaid: Int

        public var phoneNumber: Int

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case paymentMode = "payment_mode"

            case brandName = "brand_name"

            case message

            case customerName = "customer_name"

            case countryCode = "country_code"

            case shipmentId = "shipment_id"

            case amountPaid = "amount_paid"

            case phoneNumber = "phone_number"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.orderId = orderId

            self.paymentMode = paymentMode

            self.brandName = brandName

            self.message = message

            self.customerName = customerName

            self.countryCode = countryCode

            self.shipmentId = shipmentId

            self.amountPaid = amountPaid

            self.phoneNumber = phoneNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            brandName = try container.decode(String.self, forKey: .brandName)

            message = try container.decode(String.self, forKey: .message)

            customerName = try container.decode(String.self, forKey: .customerName)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        }
    }
}
