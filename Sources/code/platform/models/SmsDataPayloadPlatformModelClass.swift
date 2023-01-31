

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var brandName: String

        public var orderId: String

        public var customerName: String

        public var shipmentId: Int

        public var amountPaid: Int

        public var phoneNumber: Int

        public var paymentMode: String

        public var message: String

        public var countryCode: String

        public enum CodingKeys: String, CodingKey {
            case brandName = "brand_name"

            case orderId = "order_id"

            case customerName = "customer_name"

            case shipmentId = "shipment_id"

            case amountPaid = "amount_paid"

            case phoneNumber = "phone_number"

            case paymentMode = "payment_mode"

            case message

            case countryCode = "country_code"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.brandName = brandName

            self.orderId = orderId

            self.customerName = customerName

            self.shipmentId = shipmentId

            self.amountPaid = amountPaid

            self.phoneNumber = phoneNumber

            self.paymentMode = paymentMode

            self.message = message

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandName = try container.decode(String.self, forKey: .brandName)

            orderId = try container.decode(String.self, forKey: .orderId)

            customerName = try container.decode(String.self, forKey: .customerName)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            message = try container.decode(String.self, forKey: .message)

            countryCode = try container.decode(String.self, forKey: .countryCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }
}
