

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var customerName: String

        public var message: String

        public var brandName: String

        public var phoneNumber: Int

        public var countryCode: String

        public var amountPaid: Int

        public var paymentMode: String

        public var orderId: String

        public var shipmentId: Int

        public enum CodingKeys: String, CodingKey {
            case customerName = "customer_name"

            case message

            case brandName = "brand_name"

            case phoneNumber = "phone_number"

            case countryCode = "country_code"

            case amountPaid = "amount_paid"

            case paymentMode = "payment_mode"

            case orderId = "order_id"

            case shipmentId = "shipment_id"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.customerName = customerName

            self.message = message

            self.brandName = brandName

            self.phoneNumber = phoneNumber

            self.countryCode = countryCode

            self.amountPaid = amountPaid

            self.paymentMode = paymentMode

            self.orderId = orderId

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customerName = try container.decode(String.self, forKey: .customerName)

            message = try container.decode(String.self, forKey: .message)

            brandName = try container.decode(String.self, forKey: .brandName)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            orderId = try container.decode(String.self, forKey: .orderId)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
