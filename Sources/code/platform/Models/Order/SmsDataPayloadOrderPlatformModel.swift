

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var countryCode: String

        public var orderId: String

        public var brandName: String?

        public var customerName: String?

        public var shipmentId: Int

        public var phoneNumber: Int

        public var paymentMode: String?

        public var message: String

        public var amountPaid: Int?

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case orderId = "order_id"

            case brandName = "brand_name"

            case customerName = "customer_name"

            case shipmentId = "shipment_id"

            case phoneNumber = "phone_number"

            case paymentMode = "payment_mode"

            case message

            case amountPaid = "amount_paid"
        }

        public init(amountPaid: Int? = nil, brandName: String? = nil, countryCode: String, customerName: String? = nil, message: String, orderId: String, paymentMode: String? = nil, phoneNumber: Int, shipmentId: Int) {
            self.countryCode = countryCode

            self.orderId = orderId

            self.brandName = brandName

            self.customerName = customerName

            self.shipmentId = shipmentId

            self.phoneNumber = phoneNumber

            self.paymentMode = paymentMode

            self.message = message

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                brandName = try container.decode(String.self, forKey: .brandName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerName = try container.decode(String.self, forKey: .customerName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            do {
                amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var countryCode: String

        public var orderId: String

        public var brandName: String?

        public var customerName: String?

        public var shipmentId: Int

        public var phoneNumber: Int

        public var paymentMode: String?

        public var message: String

        public var amountPaid: Int?

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case orderId = "order_id"

            case brandName = "brand_name"

            case customerName = "customer_name"

            case shipmentId = "shipment_id"

            case phoneNumber = "phone_number"

            case paymentMode = "payment_mode"

            case message

            case amountPaid = "amount_paid"
        }

        public init(amountPaid: Int? = nil, brandName: String? = nil, countryCode: String, customerName: String? = nil, message: String, orderId: String, paymentMode: String? = nil, phoneNumber: Int, shipmentId: Int) {
            self.countryCode = countryCode

            self.orderId = orderId

            self.brandName = brandName

            self.customerName = customerName

            self.shipmentId = shipmentId

            self.phoneNumber = phoneNumber

            self.paymentMode = paymentMode

            self.message = message

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                brandName = try container.decode(String.self, forKey: .brandName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerName = try container.decode(String.self, forKey: .customerName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            do {
                amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
