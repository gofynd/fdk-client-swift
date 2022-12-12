

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: OrderManage
     */

    class SmsDataPayload: Codable {
        public var brandName: String

        public var shipmentId: Int

        public var customerName: String

        public var message: String

        public var paymentMode: String

        public var amountPaid: Int

        public var countryCode: String

        public var orderId: String

        public var phoneNumber: Int

        public enum CodingKeys: String, CodingKey {
            case brandName = "brand_name"

            case shipmentId = "shipment_id"

            case customerName = "customer_name"

            case message

            case paymentMode = "payment_mode"

            case amountPaid = "amount_paid"

            case countryCode = "country_code"

            case orderId = "order_id"

            case phoneNumber = "phone_number"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.brandName = brandName

            self.shipmentId = shipmentId

            self.customerName = customerName

            self.message = message

            self.paymentMode = paymentMode

            self.amountPaid = amountPaid

            self.countryCode = countryCode

            self.orderId = orderId

            self.phoneNumber = phoneNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandName = try container.decode(String.self, forKey: .brandName)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            customerName = try container.decode(String.self, forKey: .customerName)

            message = try container.decode(String.self, forKey: .message)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            orderId = try container.decode(String.self, forKey: .orderId)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        }
    }
}
