

import Foundation
public extension PlatformClient {
    /*
         Model: SmsDataPayload
         Used By: OrderManage
     */

    class SmsDataPayload: Codable {
        public var paymentMode: String

        public var brandName: String

        public var customerName: String

        public var amountPaid: Int

        public var message: String

        public var orderId: String

        public var phoneNumber: Int

        public var shipmentId: Int

        public var countryCode: String

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case brandName = "brand_name"

            case customerName = "customer_name"

            case amountPaid = "amount_paid"

            case message

            case orderId = "order_id"

            case phoneNumber = "phone_number"

            case shipmentId = "shipment_id"

            case countryCode = "country_code"
        }

        public init(amountPaid: Int, brandName: String, countryCode: String, customerName: String, message: String, orderId: String, paymentMode: String, phoneNumber: Int, shipmentId: Int) {
            self.paymentMode = paymentMode

            self.brandName = brandName

            self.customerName = customerName

            self.amountPaid = amountPaid

            self.message = message

            self.orderId = orderId

            self.phoneNumber = phoneNumber

            self.shipmentId = shipmentId

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            brandName = try container.decode(String.self, forKey: .brandName)

            customerName = try container.decode(String.self, forKey: .customerName)

            amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            message = try container.decode(String.self, forKey: .message)

            orderId = try container.decode(String.self, forKey: .orderId)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            countryCode = try container.decode(String.self, forKey: .countryCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }
}
