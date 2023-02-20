

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var orderId: String

        public var paymentMode: String

        public var customerName: String

        public var phoneNumber: Int

        public var brandName: String

        public var amountPaid: Int

        public var countryCode: String

        public var message: String

        public var shipmentId: Int

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case paymentMode = "payment_mode"

            case customerName = "customer_name"

            case phoneNumber = "phone_number"

            case brandName = "brand_name"

            case amountPaid = "amount_paid"

            case countryCode = "country_code"

            case message

            case shipmentId = "shipment_id"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.orderId = orderId

            self.paymentMode = paymentMode

            self.customerName = customerName

            self.phoneNumber = phoneNumber

            self.brandName = brandName

            self.amountPaid = amountPaid

            self.countryCode = countryCode

            self.message = message

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            customerName = try container.decode(String.self, forKey: .customerName)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            brandName = try container.decode(String.self, forKey: .brandName)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            message = try container.decode(String.self, forKey: .message)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
