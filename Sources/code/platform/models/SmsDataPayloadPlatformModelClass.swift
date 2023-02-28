

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var brandName: String

        public var paymentMode: String

        public var message: String

        public var phoneNumber: Int

        public var customerName: String

        public var shipmentId: Int

        public var orderId: String

        public var countryCode: String

        public var amountPaid: Int

        public enum CodingKeys: String, CodingKey {
            case brandName = "brand_name"

            case paymentMode = "payment_mode"

            case message

            case phoneNumber = "phone_number"

            case customerName = "customer_name"

            case shipmentId = "shipment_id"

            case orderId = "order_id"

            case countryCode = "country_code"

            case amountPaid = "amount_paid"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.brandName = brandName

            self.paymentMode = paymentMode

            self.message = message

            self.phoneNumber = phoneNumber

            self.customerName = customerName

            self.shipmentId = shipmentId

            self.orderId = orderId

            self.countryCode = countryCode

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandName = try container.decode(String.self, forKey: .brandName)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            message = try container.decode(String.self, forKey: .message)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            customerName = try container.decode(String.self, forKey: .customerName)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            orderId = try container.decode(String.self, forKey: .orderId)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
