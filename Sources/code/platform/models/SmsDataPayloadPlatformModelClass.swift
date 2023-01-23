

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var message: String

        public var shipmentId: Int

        public var phoneNumber: Int

        public var brandName: String

        public var countryCode: String

        public var paymentMode: String

        public var customerName: String

        public var amountPaid: Int

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case message

            case shipmentId = "shipment_id"

            case phoneNumber = "phone_number"

            case brandName = "brand_name"

            case countryCode = "country_code"

            case paymentMode = "payment_mode"

            case customerName = "customer_name"

            case amountPaid = "amount_paid"

            case orderId = "order_id"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.message = message

            self.shipmentId = shipmentId

            self.phoneNumber = phoneNumber

            self.brandName = brandName

            self.countryCode = countryCode

            self.paymentMode = paymentMode

            self.customerName = customerName

            self.amountPaid = amountPaid

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            brandName = try container.decode(String.self, forKey: .brandName)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            customerName = try container.decode(String.self, forKey: .customerName)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
