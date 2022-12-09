

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: OrderManage
     */

    class SmsDataPayload: Codable {
        public var paymentMode: String

        public var message: String

        public var phoneNumber: Int

        public var shipmentId: Int

        public var amountPaid: Int

        public var countryCode: String

        public var customerName: String

        public var brandName: String

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case message

            case phoneNumber = "phone_number"

            case shipmentId = "shipment_id"

            case amountPaid = "amount_paid"

            case countryCode = "country_code"

            case customerName = "customer_name"

            case brandName = "brand_name"

            case orderId = "order_id"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.paymentMode = paymentMode

            self.message = message

            self.phoneNumber = phoneNumber

            self.shipmentId = shipmentId

            self.amountPaid = amountPaid

            self.countryCode = countryCode

            self.customerName = customerName

            self.brandName = brandName

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            message = try container.decode(String.self, forKey: .message)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            customerName = try container.decode(String.self, forKey: .customerName)

            brandName = try container.decode(String.self, forKey: .brandName)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
