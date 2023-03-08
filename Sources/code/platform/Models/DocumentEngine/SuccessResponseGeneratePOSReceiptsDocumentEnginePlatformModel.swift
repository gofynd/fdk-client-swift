

import Foundation

public extension PlatformClient.DocumentEngine {
    /*
         Model: SuccessResponseGeneratePOSReceipts
         Used By: DocumentEngine
     */

    class SuccessResponseGeneratePOSReceipts: Codable {
        public var success: Bool

        public var orderId: String

        public var invoiceReceipt: String

        public var paymentReceipt: String

        public enum CodingKeys: String, CodingKey {
            case success

            case orderId = "order_id"

            case invoiceReceipt = "invoice_receipt"

            case paymentReceipt = "payment_receipt"
        }

        public init(invoiceReceipt: String, orderId: String, paymentReceipt: String, success: Bool) {
            self.success = success

            self.orderId = orderId

            self.invoiceReceipt = invoiceReceipt

            self.paymentReceipt = paymentReceipt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            orderId = try container.decode(String.self, forKey: .orderId)

            invoiceReceipt = try container.decode(String.self, forKey: .invoiceReceipt)

            paymentReceipt = try container.decode(String.self, forKey: .paymentReceipt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(invoiceReceipt, forKey: .invoiceReceipt)

            try? container.encodeIfPresent(paymentReceipt, forKey: .paymentReceipt)
        }
    }
}
