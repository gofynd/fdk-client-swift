

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var shipmentId: Int

        public var phoneNumber: Int

        public var countryCode: String

        public var amountPaid: Int

        public var paymentMode: String

        public var brandName: String

        public var customerName: String

        public var message: String

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case phoneNumber = "phone_number"

            case countryCode = "country_code"

            case amountPaid = "amount_paid"

            case paymentMode = "payment_mode"

            case brandName = "brand_name"

            case customerName = "customer_name"

            case message

            case orderId = "order_id"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.shipmentId = shipmentId

            self.phoneNumber = phoneNumber

            self.countryCode = countryCode

            self.amountPaid = amountPaid

            self.paymentMode = paymentMode

            self.brandName = brandName

            self.customerName = customerName

            self.message = message

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            brandName = try container.decode(String.self, forKey: .brandName)

            customerName = try container.decode(String.self, forKey: .customerName)

            message = try container.decode(String.self, forKey: .message)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
