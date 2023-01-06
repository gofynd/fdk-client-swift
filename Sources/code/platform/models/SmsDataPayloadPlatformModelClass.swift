

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var message: String

        public var amountPaid: Int

        public var shipmentId: Int

        public var brandName: String

        public var phoneNumber: Int

        public var countryCode: String

        public var customerName: String

        public var orderId: String

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case message

            case amountPaid = "amount_paid"

            case shipmentId = "shipment_id"

            case brandName = "brand_name"

            case phoneNumber = "phone_number"

            case countryCode = "country_code"

            case customerName = "customer_name"

            case orderId = "order_id"

            case paymentMode = "payment_mode"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.message = message

            self.amountPaid = amountPaid

            self.shipmentId = shipmentId

            self.brandName = brandName

            self.phoneNumber = phoneNumber

            self.countryCode = countryCode

            self.customerName = customerName

            self.orderId = orderId

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            brandName = try container.decode(String.self, forKey: .brandName)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            customerName = try container.decode(String.self, forKey: .customerName)

            orderId = try container.decode(String.self, forKey: .orderId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}
