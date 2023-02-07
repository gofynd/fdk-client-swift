

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var shipmentId: Int

        public var countryCode: String

        public var message: String

        public var orderId: String

        public var phoneNumber: Int

        public var customerName: String

        public var brandName: String

        public var amountPaid: Int

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case countryCode = "country_code"

            case message

            case orderId = "order_id"

            case phoneNumber = "phone_number"

            case customerName = "customer_name"

            case brandName = "brand_name"

            case amountPaid = "amount_paid"

            case paymentMode = "payment_mode"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.shipmentId = shipmentId

            self.countryCode = countryCode

            self.message = message

            self.orderId = orderId

            self.phoneNumber = phoneNumber

            self.customerName = customerName

            self.brandName = brandName

            self.amountPaid = amountPaid

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            message = try container.decode(String.self, forKey: .message)

            orderId = try container.decode(String.self, forKey: .orderId)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            customerName = try container.decode(String.self, forKey: .customerName)

            brandName = try container.decode(String.self, forKey: .brandName)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}
