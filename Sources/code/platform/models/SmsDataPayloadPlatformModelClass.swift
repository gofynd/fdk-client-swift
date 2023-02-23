

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var customerName: String

        public var message: String

        public var countryCode: String

        public var phoneNumber: Int

        public var brandName: String

        public var orderId: String

        public var paymentMode: String

        public var shipmentId: Int

        public var amountPaid: Int

        public enum CodingKeys: String, CodingKey {
            case customerName = "customer_name"

            case message

            case countryCode = "country_code"

            case phoneNumber = "phone_number"

            case brandName = "brand_name"

            case orderId = "order_id"

            case paymentMode = "payment_mode"

            case shipmentId = "shipment_id"

            case amountPaid = "amount_paid"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.customerName = customerName

            self.message = message

            self.countryCode = countryCode

            self.phoneNumber = phoneNumber

            self.brandName = brandName

            self.orderId = orderId

            self.paymentMode = paymentMode

            self.shipmentId = shipmentId

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customerName = try container.decode(String.self, forKey: .customerName)

            message = try container.decode(String.self, forKey: .message)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            brandName = try container.decode(String.self, forKey: .brandName)

            orderId = try container.decode(String.self, forKey: .orderId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
