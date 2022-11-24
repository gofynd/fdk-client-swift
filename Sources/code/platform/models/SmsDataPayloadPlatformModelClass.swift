

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: OrderManage
     */

    class SmsDataPayload: Codable {
        public var orderId: String

        public var paymentMode: String

        public var customerName: String

        public var phoneNumber: Int

        public var shipmentId: Int

        public var message: String

        public var countryCode: String

        public var brandName: String

        public var amountPaid: Int

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case paymentMode = "payment_mode"

            case customerName = "customer_name"

            case phoneNumber = "phone_number"

            case shipmentId = "shipment_id"

            case message

            case countryCode = "country_code"

            case brandName = "brand_name"

            case amountPaid = "amount_paid"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.orderId = orderId

            self.paymentMode = paymentMode

            self.customerName = customerName

            self.phoneNumber = phoneNumber

            self.shipmentId = shipmentId

            self.message = message

            self.countryCode = countryCode

            self.brandName = brandName

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            customerName = try container.decode(String.self, forKey: .customerName)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            message = try container.decode(String.self, forKey: .message)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            brandName = try container.decode(String.self, forKey: .brandName)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
