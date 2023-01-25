

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

        public var paymentMode: String

        public var phoneNumber: Int

        public var amountPaid: Int

        public var customerName: String

        public var brandName: String

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case countryCode = "country_code"

            case message

            case paymentMode = "payment_mode"

            case phoneNumber = "phone_number"

            case amountPaid = "amount_paid"

            case customerName = "customer_name"

            case brandName = "brand_name"

            case orderId = "order_id"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.shipmentId = shipmentId

            self.countryCode = countryCode

            self.message = message

            self.paymentMode = paymentMode

            self.phoneNumber = phoneNumber

            self.amountPaid = amountPaid

            self.customerName = customerName

            self.brandName = brandName

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            message = try container.decode(String.self, forKey: .message)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            customerName = try container.decode(String.self, forKey: .customerName)

            brandName = try container.decode(String.self, forKey: .brandName)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
