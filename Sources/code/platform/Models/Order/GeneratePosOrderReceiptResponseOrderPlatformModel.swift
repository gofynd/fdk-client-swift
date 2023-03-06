

import Foundation

public extension PlatformClient.Order {
    /*
         Model: GeneratePosOrderReceiptResponse
         Used By: Order
     */

    class GeneratePosOrderReceiptResponse: Codable {
        public var invoiceReceipt: String?

        public var orderId: String?

        public var paymentReceipt: String?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case invoiceReceipt = "invoice_receipt"

            case orderId = "order_id"

            case paymentReceipt = "payment_receipt"

            case success
        }

        public init(invoiceReceipt: String? = nil, orderId: String? = nil, paymentReceipt: String? = nil, success: Bool? = nil) {
            self.invoiceReceipt = invoiceReceipt

            self.orderId = orderId

            self.paymentReceipt = paymentReceipt

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                invoiceReceipt = try container.decode(String.self, forKey: .invoiceReceipt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentReceipt = try container.decode(String.self, forKey: .paymentReceipt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(invoiceReceipt, forKey: .invoiceReceipt)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(paymentReceipt, forKey: .paymentReceipt)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: GeneratePosOrderReceiptResponse
         Used By: Order
     */

    class GeneratePosOrderReceiptResponse: Codable {
        public var invoiceReceipt: String?

        public var orderId: String?

        public var paymentReceipt: String?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case invoiceReceipt = "invoice_receipt"

            case orderId = "order_id"

            case paymentReceipt = "payment_receipt"

            case success
        }

        public init(invoiceReceipt: String? = nil, orderId: String? = nil, paymentReceipt: String? = nil, success: Bool? = nil) {
            self.invoiceReceipt = invoiceReceipt

            self.orderId = orderId

            self.paymentReceipt = paymentReceipt

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                invoiceReceipt = try container.decode(String.self, forKey: .invoiceReceipt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentReceipt = try container.decode(String.self, forKey: .paymentReceipt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(invoiceReceipt, forKey: .invoiceReceipt)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(paymentReceipt, forKey: .paymentReceipt)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
