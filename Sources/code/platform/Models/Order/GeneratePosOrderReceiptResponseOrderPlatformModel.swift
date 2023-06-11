

import Foundation

public extension PlatformClient.Order {
    /*
         Model: GeneratePosOrderReceiptResponse
         Used By: Order
     */

    class GeneratePosOrderReceiptResponse: Codable {
        public var merchantCnReceipt: String?

        public var invoiceReceipt: String?

        public var success: Bool?

        public var paymentReceipt: String?

        public var customerCnReceipt: String?

        public var orderId: String?

        public enum CodingKeys: String, CodingKey {
            case merchantCnReceipt = "merchant_cn_receipt"

            case invoiceReceipt = "invoice_receipt"

            case success

            case paymentReceipt = "payment_receipt"

            case customerCnReceipt = "customer_cn_receipt"

            case orderId = "order_id"
        }

        public init(customerCnReceipt: String? = nil, invoiceReceipt: String? = nil, merchantCnReceipt: String? = nil, orderId: String? = nil, paymentReceipt: String? = nil, success: Bool? = nil) {
            self.merchantCnReceipt = merchantCnReceipt

            self.invoiceReceipt = invoiceReceipt

            self.success = success

            self.paymentReceipt = paymentReceipt

            self.customerCnReceipt = customerCnReceipt

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                merchantCnReceipt = try container.decode(String.self, forKey: .merchantCnReceipt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceReceipt = try container.decode(String.self, forKey: .invoiceReceipt)

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

            do {
                paymentReceipt = try container.decode(String.self, forKey: .paymentReceipt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerCnReceipt = try container.decode(String.self, forKey: .customerCnReceipt)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantCnReceipt, forKey: .merchantCnReceipt)

            try? container.encodeIfPresent(invoiceReceipt, forKey: .invoiceReceipt)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(paymentReceipt, forKey: .paymentReceipt)

            try? container.encodeIfPresent(customerCnReceipt, forKey: .customerCnReceipt)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: GeneratePosOrderReceiptResponse
         Used By: Order
     */

    class GeneratePosOrderReceiptResponse: Codable {
        public var merchantCnReceipt: String?

        public var invoiceReceipt: String?

        public var success: Bool?

        public var paymentReceipt: String?

        public var customerCnReceipt: String?

        public var orderId: String?

        public enum CodingKeys: String, CodingKey {
            case merchantCnReceipt = "merchant_cn_receipt"

            case invoiceReceipt = "invoice_receipt"

            case success

            case paymentReceipt = "payment_receipt"

            case customerCnReceipt = "customer_cn_receipt"

            case orderId = "order_id"
        }

        public init(customerCnReceipt: String? = nil, invoiceReceipt: String? = nil, merchantCnReceipt: String? = nil, orderId: String? = nil, paymentReceipt: String? = nil, success: Bool? = nil) {
            self.merchantCnReceipt = merchantCnReceipt

            self.invoiceReceipt = invoiceReceipt

            self.success = success

            self.paymentReceipt = paymentReceipt

            self.customerCnReceipt = customerCnReceipt

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                merchantCnReceipt = try container.decode(String.self, forKey: .merchantCnReceipt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceReceipt = try container.decode(String.self, forKey: .invoiceReceipt)

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

            do {
                paymentReceipt = try container.decode(String.self, forKey: .paymentReceipt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerCnReceipt = try container.decode(String.self, forKey: .customerCnReceipt)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantCnReceipt, forKey: .merchantCnReceipt)

            try? container.encodeIfPresent(invoiceReceipt, forKey: .invoiceReceipt)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(paymentReceipt, forKey: .paymentReceipt)

            try? container.encodeIfPresent(customerCnReceipt, forKey: .customerCnReceipt)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
