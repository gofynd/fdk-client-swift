

import Foundation

public extension PlatformClient.Order {
    /*
         Model: SmsDataPayload
         Used By: Order
     */

    class SmsDataPayload: Codable {
        public var shipmentId: Int

        public var phoneNumber: Int

        public var message: String

        public var brandName: String?

        public var orderId: String

        public var customerName: String?

        public var amountPaid: Int?

        public var paymentMode: String?

        public var countryCode: String

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case phoneNumber = "phone_number"

            case message

            case brandName = "brand_name"

            case orderId = "order_id"

            case customerName = "customer_name"

            case amountPaid = "amount_paid"

            case paymentMode = "payment_mode"

            case countryCode = "country_code"
        }

        public init(amountPaid: Int? = nil, brandName: String? = nil, countryCode: String, customerName: String? = nil, message: String, orderId: String, paymentMode: String? = nil, phoneNumber: Int, shipmentId: Int) {
            self.shipmentId = shipmentId

            self.phoneNumber = phoneNumber

            self.message = message

            self.brandName = brandName

            self.orderId = orderId

            self.customerName = customerName

            self.amountPaid = amountPaid

            self.paymentMode = paymentMode

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            message = try container.decode(String.self, forKey: .message)

            do {
                brandName = try container.decode(String.self, forKey: .brandName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                customerName = try container.decode(String.self, forKey: .customerName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
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

        public var phoneNumber: Int

        public var message: String

        public var brandName: String?

        public var orderId: String

        public var customerName: String?

        public var amountPaid: Int?

        public var paymentMode: String?

        public var countryCode: String

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case phoneNumber = "phone_number"

            case message

            case brandName = "brand_name"

            case orderId = "order_id"

            case customerName = "customer_name"

            case amountPaid = "amount_paid"

            case paymentMode = "payment_mode"

            case countryCode = "country_code"
        }

        public init(amountPaid: Int? = nil, brandName: String? = nil, countryCode: String, customerName: String? = nil, message: String, orderId: String, paymentMode: String? = nil, phoneNumber: Int, shipmentId: Int) {
            self.shipmentId = shipmentId

            self.phoneNumber = phoneNumber

            self.message = message

            self.brandName = brandName

            self.orderId = orderId

            self.customerName = customerName

            self.amountPaid = amountPaid

            self.paymentMode = paymentMode

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(Int.self, forKey: .shipmentId)

            phoneNumber = try container.decode(Int.self, forKey: .phoneNumber)

            message = try container.decode(String.self, forKey: .message)

            do {
                brandName = try container.decode(String.self, forKey: .brandName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                customerName = try container.decode(String.self, forKey: .customerName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(customerName, forKey: .customerName)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }
}
