

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var shipmentId: Int

        public var brandName: String?

        public var orderId: String

        public var amountPaid: Int?

        public var message: String

        public var paymentMode: String?

        public var phoneNumber: Int

        public var countryCode: String

        public var customerName: String?

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case brandName = "brand_name"

            case orderId = "order_id"

            case amountPaid = "amount_paid"

            case message

            case paymentMode = "payment_mode"

            case phoneNumber = "phone_number"

            case countryCode = "country_code"

            case customerName = "customer_name"
        }

        public init(amountPaid: Int? = nil, brandName: String? = nil, countryCode: String, customerName: String? = nil, message: String, orderId: String, paymentMode: String? = nil, phoneNumber: Int, shipmentId: Int) {
            self.shipmentId = shipmentId

            self.brandName = brandName

            self.orderId = orderId

            self.amountPaid = amountPaid

            self.message = message

            self.paymentMode = paymentMode

            self.phoneNumber = phoneNumber

            self.countryCode = countryCode

            self.customerName = customerName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            do {
                brandName = try container.decode(String.self, forKey: .brandName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                customerName = try container.decode(String.self, forKey: .customerName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(customerName, forKey: .customerName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var shipmentId: Int

        public var brandName: String?

        public var orderId: String

        public var amountPaid: Int?

        public var message: String

        public var paymentMode: String?

        public var phoneNumber: Int

        public var countryCode: String

        public var customerName: String?

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case brandName = "brand_name"

            case orderId = "order_id"

            case amountPaid = "amount_paid"

            case message

            case paymentMode = "payment_mode"

            case phoneNumber = "phone_number"

            case countryCode = "country_code"

            case customerName = "customer_name"
        }

        public init(amountPaid: Int? = nil, brandName: String? = nil, countryCode: String, customerName: String? = nil, message: String, orderId: String, paymentMode: String? = nil, phoneNumber: Int, shipmentId: Int) {
            self.shipmentId = shipmentId

            self.brandName = brandName

            self.orderId = orderId

            self.amountPaid = amountPaid

            self.message = message

            self.paymentMode = paymentMode

            self.phoneNumber = phoneNumber

            self.countryCode = countryCode

            self.customerName = customerName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            do {
                brandName = try container.decode(String.self, forKey: .brandName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            message = try container.decode(String.self, forKey: .message)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                customerName = try container.decode(String.self, forKey: .customerName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(customerName, forKey: .customerName)
        }
    }
}
