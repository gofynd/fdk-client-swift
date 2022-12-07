

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var phoneNumber: Int

        public var customerName: String

        public var countryCode: String

        public var paymentMode: String

        public var orderId: String

        public var brandName: String

        public var shipmentId: Int

        public var message: String

        public var amountPaid: Int

        public enum CodingKeys: String, CodingKey {
            case phoneNumber = "phone_number"

            case customerName = "customer_name"

            case countryCode = "country_code"

            case paymentMode = "payment_mode"

            case orderId = "order_id"

            case brandName = "brand_name"

            case shipmentId = "shipment_id"

            case message

            case amountPaid = "amount_paid"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.phoneNumber = phoneNumber

            self.customerName = customerName

            self.countryCode = countryCode

            self.paymentMode = paymentMode

            self.orderId = orderId

            self.brandName = brandName

            self.shipmentId = shipmentId

            self.message = message

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            customerName = try container.decode(String.self, forKey: .customerName)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            orderId = try container.decode(String.self, forKey: .orderId)

            brandName = try container.decode(String.self, forKey: .brandName)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            message = try container.decode(String.self, forKey: .message)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
