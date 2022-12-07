

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var amountPaid: Int

        public var phoneNumber: Int

        public var countryCode: String

        public var shipmentId: Int

        public var paymentMode: String

        public var customerName: String

        public var brandName: String

        public var message: String

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case phoneNumber = "phone_number"

            case countryCode = "country_code"

            case shipmentId = "shipment_id"

            case paymentMode = "payment_mode"

            case customerName = "customer_name"

            case brandName = "brand_name"

            case message

            case orderId = "order_id"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.amountPaid = amountPaid

            self.phoneNumber = phoneNumber

            self.countryCode = countryCode

            self.shipmentId = shipmentId

            self.paymentMode = paymentMode

            self.customerName = customerName

            self.brandName = brandName

            self.message = message

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            customerName = try container.decode(String.self, forKey: .customerName)

            brandName = try container.decode(String.self, forKey: .brandName)

            message = try container.decode(String.self, forKey: .message)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
